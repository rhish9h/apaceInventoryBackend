<?php
    //one script to delete particular row form particular table
    //inputs: table name & serial number
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
        include 'config.php';

        $delField = $_GET['delField'] ?? 'serial number';
        $srno = $_GET['srno'] ?? ''; // empty if get doesn't have the variable
        $tbNam = $_GET['tbNam'] ?? '';

        $query = "DELETE FROM `$tbNam` WHERE `$tbNam`.`$delField` = $srno";

        $userData = mysqli_query($conn, $query);
        
        if(!$userData) {
            echo $query;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }
        
        // add log for backup
        $slashedQuery = addslashes($query);
        $log = "INSERT INTO `logs` (`table name`, `query type`, `query`) VALUES ('$tbNam', 'delete', '" . $slashedQuery . "');";

        $addedLog = mysqli_query($conn, $log);

        if(!$addedLog) {
            echo $addedLog;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }
    }
    