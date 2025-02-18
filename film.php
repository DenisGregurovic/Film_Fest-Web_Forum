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
    <h1>Film Feature</h1>
        <nav>
            <ul>
                <li><a href="index.php">Početna</a></li>
                <li><a href="zanr.php?id=Akcijski">Akcijski</a></li>
                <li><a href="zanr.php?id=Horror">Horror</a></li>
                <li><a href="zanr.php?id=Komedija">Komedija</a></li>
                <li><a href="zanr.php?id=Animirani">Animirani</a></li>
                <li><a href="zanr.php?id=Science Fiction">Science Fiction</a></li>
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
    <p>Denis Gregurović, dgregurov@tvz.hr, 2024.</p>
    </footer>
</body>
</html>
