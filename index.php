<?php
include 'connect.php';
define('UPLPATH', 'img/');
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title>Film Feature</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <header>
    <h1>Film Feature</h1>
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

    <section class="akcijski">
        <?php
        $query = "SELECT * FROM filmovi WHERE prikazi=1 AND zanr='Akcijski' LIMIT 4";
        $result = mysqli_query($dbc, $query);
        while ($row = mysqli_fetch_array($result)) {
            echo '<article>';
            echo '<div class="article">';
            echo '<div class="akcijski_img">';
            echo '<img src="' . UPLPATH . $row['slika'] . '">';
            echo '</div>';
            echo '<div class="media_body">';
            echo '<h4 class="title">';
            echo '<a href="film.php?id=' . $row['id'] . '">';
            echo $row['naslov'];
            echo '</a></h4>';
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
