<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title>Unos filma</title>
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

    <section class="unos">
        <form enctype="multipart/form-data" action="unos.php" method="POST">
            <div class="form-item">
                <label for="title">Naslov filma:</label>
                <div class="form-field">
                    <input type="text" name="title" class="form-field-textual">
                </div>
            </div>
            <div class="form-item">
                <label for="about">Kratki sadržaj filma (do 50 znakova):</label>
                <div class="form-field">
                    <textarea name="about" id="" cols="30" rows="10" class="form-field-textual"></textarea>
                </div>
            </div>
            <div class="form-item">
                <label for="description">Opis filma:</label>
                <div class="form-field">
                    <textarea name="description" id="" cols="30" rows="10" class="form-field-textual"></textarea>
                </div>
            </div>
            <div class="form-item">
                <label for="pphoto">Slika:</label>
                <div class="form-field">
                    <input type="file" class="input-text" id="pphoto" name="pphoto"/>
                </div>
            </div>
            <div class="form-item">
                <label for="genre">Žanr filma:</label>
                <div class="form-field">
                    <select name="genre" class="form-field-textual">
                        <option value="akcijski">Akcijski</option>
                        <option value="horror">Horror</option>
                        <option value="komedija">Komedija</option>
                        <option value="animirani">Animirani</option>
                        <option value="science fiction">Science Fiction</option>
                    </select>
                </div>
            </div>
            <div class="form-item">
                <label>Prikazati:</label>
                <div class="form-field">
                    <input type="checkbox" name="show" id="show"/> Prikaži?
                </div>
            </div>
            <div class="form-item">
                <button type="reset" value="Poništi">Poništi</button>
                <button type="submit" value="Prihvati">Prihvati</button>
            </div>
        </form>
    </section>

    <footer>
       
