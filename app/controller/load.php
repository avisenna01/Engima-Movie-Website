<?php
$sql = file_get_contents('engima.sql');

$mysqli = new mysqli("localhost", "root", "", "engima");
if (mysqli_connect_errno()) { /* check connection */
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

/* execute multi query */
if ($mysqli->multi_query($sql)) {
    echo "success";
} else {
   echo "error";
}
?>
