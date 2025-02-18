<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "filmfeature";

// Create connection
$dbc = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($dbc->connect_error) {
    die("Connection failed: " . $dbc->connect_error);
}
// Do not print anything on successful connection
?>
