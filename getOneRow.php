<?php
    // send table name, columns (array), indexColumn, value
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
        include 'config.php';

        $tableName = $_GET['tableName'] ?? '';
        $columns = $_GET['columns'] ?? [];
        $indexColumn = $_GET['indexColumn'] ?? '';
        $numValue = $_GET['numValue'] ?? 0;
        $strValue = $_GET['strValue'] ?? '';
        $value = null;
        if ($strValue == ''){
            $value = $numValue;
        }else{
            $value = $strValue;
        }

        $queryCols = '';
        foreach($columns as $col){
            $queryCols .= '`'.$col.'`, ';
        }
        $queryCols = rtrim($queryCols, ', ');

        $query = 'SELECT '.$queryCols.' FROM `'.$tableName.'` WHERE `'.$indexColumn."` = '".$value."' ORDER BY `serial number`;";

        //SELECT `stock`, `purchase price`, `stock value`, `active` FROM `raw material stock` WHERE `material id` = 'F1';

        $userData = mysqli_query($conn, $query);
        
        if(!$userData) {
            echo $query;
            var_dump($_REQUEST);
            die (mysqli_error($conn));
        }

        $response = array();

        while($row = mysqli_fetch_assoc($userData)){
            $response[] = $row;
        }
        echo json_encode($response);
    
    }