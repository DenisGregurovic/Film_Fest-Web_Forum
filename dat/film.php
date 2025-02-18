<?php
include 'connect.php';
define('UPLPATH', 'img/');
$id = $_GET['id'];
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title>Film</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php">Početna</a></li>
                <li><a href="zanr.php?id=akcijski">Akcijski</a></li>
                <li><a href="zanr.php?id=horror">Horror</a></li>
                <li><a href="zanr.php?id=komedija">Komedija</a></li>
                <li><a href="zanr.php?id=animirani">Animirani</a></li>
                <li><a href="zanr.php?id=science fiction">Science Fiction</a></li>
                <li><a href="administracija.php">Administracija</a></li>
            </ul>
        </nav>
    </header>

    <section class="film">
        <?php
        $query = "SELECT * FROM filmovi WHERE id=$id";
        $result = mysqli_query($dbc, $query);
        if ($row = mysqli_fetch_array($result)) {
            echo '<article>';
            echo '<div class="article">';
            echo '<div class="film_img">';
            echo '<img src="' . UPLPATH . $row['slika'] . '">';
            echo '</div>';
            echo '<div class="media_body">';
            echo '<h1>' . $row['naslov'] . '</h1>';
            echo '<p>' . $row['opis'] . '</p>';
            echo '</div></div>';
            echo '</article>';
        }
        ?>
    </section>

    <footer>
        <p>&copy; 2024 FilmFeature</p>
    </footer>
</body>
</html>
