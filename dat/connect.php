<?php
header('Content-Type: text/html; charset=utf-8');
$servername = "localhost";
$username = "root";
$password = "";
$basename = "filmfeature";

// Create connection
$dbc = mysqli_connect($servername, $username, $password, $basename) or die('Error connecting to MySQL server.' . mysqli_error($dbc));
mysqli_set_charset($dbc, "utf8mb4");

// Check connection
if ($dbc) {
    echo "Connected successfully";
}
?>
