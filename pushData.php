<?php
    // push data into the orders tables
    // send table name and field values
    // field values = array of arrays [[], []] => [key, value] => field, value
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
        include 'config.php';

        $tableName = $_GET['tableName'] ?? '';
        $fieldValues = json_decode($_GET['fieldValues']) ?? array('');  //decode the array sent - contains fields and values
        
        // create a set of fields for query
        $query_fields = '(';
        $query_values = '(';
        foreach ($fieldValues as $field) {
            $query_fields .= '`'.$field[0].'`, ';  // add backticks and comma+space
            $query_values .= "'".addslashes($field[1])."', ";
        }
        $query_fields = rtrim($query_fields, ', '); //trim off the last comma+space
        $query_fields .= ')';
        $query_values = rtrim($query_values, ', ');
        $query_values .= ')';

        // put table name, fields and values in query
        $query = "INSERT INTO `$tableName` $query_fields VALUES $query_values";

        $userData = mysqli_query($conn, $query);
        
        if(!$userData) {
            echo $query;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }

        // add log for backup
        $slashedQuery = addslashes($query);
        $log = "INSERT INTO `logs` (`table name`, `query type`, `query`) VALUES ('$tableName', 'insert', '" . $slashedQuery . "');";

        $addedLog = mysqli_query($conn, $log);

        if(!$addedLog) {
            echo $addedLog;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }
    }
    