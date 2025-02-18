<?php
include 'connect.php';
define('UPLPATH', 'img/');
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title>Administracija</title>
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

    <section class="administracija">
        <?php
        $query = "SELECT * FROM filmovi";
        $result = mysqli_query($dbc, $query);
        while ($row = mysqli_fetch_array($result)) {
            echo '<form enctype="multipart/form-data" action="" method="POST">';
            echo '<div class="form-item">';
            echo '<label for="title">Naslov filma:</label>';
            echo '<div class="form-field">';
            echo '<input type="text" name="title" class="form-field-textual" value="' . $row['naslov'] . '">';
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<label for="about">Kratki sadržaj filma (do 50 znakova):</label>';
            echo '<div class="form-field">';
            echo '<textarea name="about" id="" cols="30" rows="10" class="form-field-textual">' . $row['sazetak'] . '</textarea>';
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<label for="description">Opis filma:</label>';
            echo '<div class="form-field">';
            echo '<textarea name="description" id="" cols="30" rows="10" class="form-field-textual">' . $row['opis'] . '</textarea>';
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<label for="pphoto">Slika:</label>';
            echo '<div class="form-field">';
            echo '<input type="file" class="input-text" id="pphoto" value="' . $row['slika'] . '" name="pphoto"/> <br><img src="' . UPLPATH . $row['slika'] . '" width=100px>';
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<label for="genre">Žanr filma:</label>';
            echo '<div class="form-field">';
            echo '<select name="genre" class="form-field-textual" value="' . $row['zanr'] . '">';
            echo '<option value="akcijski">Akcijski</option>';
            echo '<option value="horror">Horror</option>';
            echo '<option value="komedija">Komedija</option>';
            echo '<option value="animirani">Animirani</option>';
            echo '<option value="science fiction">Science Fiction</option>';
            echo '</select>';
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<label>Prikazati:</label>';
            echo '<div class="form-field">';
            if ($row['prikazi'] == 0) {
                echo '<input type="checkbox" name="show" id="show"/> Prikaži?';
            } else {
                echo '<input type="checkbox" name="show" id="show" checked/> Prikaži?';
            }
            echo '</div></div>';
            echo '<div class="form-item">';
            echo '<input type="hidden" name="id" class="form-field-textual" value="' . $row['id'] . '">';
            echo '<button type="reset" value="Poništi">Poništi</button>';
            echo '<button type="submit" name="update" value="Prihvati">Izmijeni</button>';
            echo '<button type="submit" name="delete" value="Izbriši">Izbriši</button>';
            echo '</div></form>';
        }

        if (isset($_POST['delete'])) {
            $id = $_POST['id'];
            $query = "DELETE FROM filmovi WHERE id=$id";
            $result = mysqli_query($dbc, $query);
        }

        if (isset($_POST['update'])) {
            $picture = $_FILES['pphoto']['name'];
            $title = $_POST['title'];
            $about = $_POST['about'];
            $description = $_POST['description'];
            $genre = $_POST['genre'];
            $show = isset($_POST['show']) ? 1 : 0;
            $id = $_POST['id'];

            if ($picture != "") {
                $target_dir = 'img/' . $picture;
                move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);
                $query = "UPDATE filmovi SET naslov='$title', sazetak='$about', opis='$description', zanr='$genre', slika='$picture', prikazi='$show' WHERE id=$id";
            } else {
                $query = "UPDATE filmovi SET naslov='$title', sazetak='$about', opis='$description', zanr='$genre', prikazi='$show' WHERE id=$id";
            }

            $result = mysqli_query($dbc, $query);
        }

        mysqli_close($dbc);
        ?>
    </section>

    <footer>
        <p>&copy; 2024 FilmFeature</p>
    </footer>
</body>
</html>
