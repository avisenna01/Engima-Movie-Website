<?php
$sql = file_get_contents('schema.sql');

$mysqli = new mysqli("localhost", "wbd", "wbd123", "engima");
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
