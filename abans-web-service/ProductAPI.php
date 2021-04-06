<?php

include('./DBConnection.php');

$showData = "SELECT * FROM product";
$data = array();
$result = mysqli_query($conn, $showData);
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
} else {
    echo "data not found";
}

//encode data
header('Content-Type: application/json');
echo json_encode($data, JSON_UNESCAPED_UNICODE);

//close mysql connection
mysqli_close($conn);
?>
