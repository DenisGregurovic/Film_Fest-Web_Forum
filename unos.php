<?php
include 'connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $picture = $_FILES['pphoto']['name'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $description = $_POST['description'];
    $genre = $_POST['genre'];
    $date = date('Y-m-d');

    $show = isset($_POST['show']) ? 1 : 0;

    $target_dir = 'img/' . $picture;
    move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);

    $query = "INSERT INTO filmovi (naslov, sazetak, opis, zanr, slika, prikazi, datum) VALUES ('$title', '$about', '$description', '$genre', '$picture', '$show', '$date')";
    $result = mysqli_query($dbc, $query) or die('Error querying database.');

    mysqli_close($dbc);
}
?>
