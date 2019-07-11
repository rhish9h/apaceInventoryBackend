<?php
    //push data into the orders tables
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
        include 'config.php';

        $sno = $_GET['sno'] ?? '';
        $delField = $_GET['delField'] ?? 'serial number';
        $tableName = $_GET['tableName'] ?? '';
        $fieldValues = json_decode($_GET['fieldValues']) ?? array('');  //decode the array sent - contains fields and values
        $query_fieldVal = '';
        if ($delField != 'serial number') {
            $sno = "'".$sno."'";
        }
        // create a set of fields for query

        foreach ($fieldValues as $field) {
            $query_fieldVal .= '`'.$field[0]."` = '".$field[1]."', ";  // add backticks and comma+space
        }
        $query_fieldVal = rtrim($query_fieldVal, ', '); //trim off the last comma+space

        // put table name, fields and values in query
        // UPDATE `order details` SET `suborder id` = 'test1', `size` = 'test2' WHERE `order details`.`serial number` = 18;
        $query = "UPDATE `$tableName` SET $query_fieldVal WHERE `$tableName`.`$delField` = $sno;";

        $userData = mysqli_query($conn, $query);
        
        if(!$userData) {
            echo $query;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }

        var_dump($_GET);
    }
    