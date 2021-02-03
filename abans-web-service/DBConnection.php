<?php

    $host = "127.0.0.1";
    $userName = "root";
    $password = "mysql";
    $databaseName = "abans";

    // create connection
    $conn = new mysqli($host, $userName, $password, $databaseName);
    // check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
?>