<?php
    // push multiple data values into the order details table
    // delete all rows with given suborder id, add all rows passed

    // send table name and field values
    // field values = array of array of arrays [[[], []], [[], []]] => [per order detail] => [key, value] => field, value

    // fieldValues => [[["suborder id","619010-1"],["size","S"],["quantity","8"]], ...]
    // fieldVal => [["suborder id","619010-1"],["size","S"],["quantity","8"]]
    // field => ["suborder id","619010-1"]

    // INSERT INTO `order details`(`suborder id`, `size`, `quantity`) VALUES ('619010-2', 'S', '5') -- DOESN'T WORK SO WELL
    // ON DUPLICATE KEY UPDATE `quantity` = '5'
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
        include 'config.php';

        $tableName = $_GET['tableName'] ?? '';
        $fieldValues = json_decode($_GET['fieldValues']) ?? array('');  //decode the array sent - contains fields and values
        // var_dump($fieldValues);

        // delete all values of particular suborder id
        $suborder = $fieldValues[0][0][1];
        $delQuery = "DELETE FROM `order details` WHERE `suborder id` = '$suborder'";
        
        $delData = mysqli_query($conn, $delQuery);
        if (!$delData) {
            echo $query;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }

        // add all rows that are passed
        foreach ($fieldValues as $fieldVal) {
            // create a set of fields for query
            $query_fields = '(';
            $query_values = '(';
            foreach ($fieldVal as $field) {
                $query_fields .= '`'.$field[0].'`, ';  // add backticks and comma+space
                $query_values .= "'".addslashes($field[1])."', ";
            }
            $query_fields = rtrim($query_fields, ', '); //trim off the last comma+space
            $query_fields .= ')';
            $query_values = rtrim($query_values, ', ');
            $query_values .= ')';

            // // put table name, fields and values in query

            $query = "INSERT INTO `$tableName` $query_fields VALUES $query_values";

            $userData = mysqli_query($conn, $query);
            
            if(!$userData) {
                echo $query;
                var_dump($_REQUEST);
                die (mysqli_error($conn));
            }
        }
    }
    