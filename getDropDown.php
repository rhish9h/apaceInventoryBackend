<?php
    // get json of all rows
    // send table name, array of columns
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Credentials: true ");
    header("Access-Control-Allow-Methods: OPTIONS, GET, POST");
    header("Access-Control-Allow-Headers: Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control");
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') { //post not working, so used get
      include 'config.php';

      $tableName = $_GET['tableName'] ?? '';
      $columns = $_GET['columns'] ?? [];
      $queryCols = '';
      foreach ($columns as $col) {
        $queryCols .= '`'.$col.'`, ';
      }
      $queryCols = rtrim($queryCols, ', ');
      $query = 'SELECT DISTINCT '.$queryCols.' FROM `'.$tableName.'`;';
      // SELECT DISTINCT `material code`, `material id` FROM `material master`;

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
      echo(json_encode($response));
    }