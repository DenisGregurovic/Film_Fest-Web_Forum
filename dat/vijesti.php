<?php
// Povezivanje na bazu podataka
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "filmfeature";

// Kreiranje konekcije
$conn = new mysqli($servername, $username, $password, $dbname);

// Provjera konekcije
if ($conn->connect_error) {
    die("Konekcija nije uspjela: " . $conn->connect_error);
}

// Dohvaćanje jedinstvenih žanrova
$sql = "SELECT DISTINCT zanr FROM filmovi";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $zanr = $row["zanr"];
        echo "<div class='section-title'>$zanr</div>";
        echo "<div class='articles'>";

        // Dohvaćanje vijesti po žanru
        $sql_vijesti = "SELECT * FROM filmovi WHERE zanr=? LIMIT 3";
        $stmt_vijesti = $conn->prepare($sql_vijesti);
        $stmt_vijesti->bind_param("s", $zanr);
        $stmt_vijesti->execute();
        $result_vijesti = $stmt_vijesti->get_result();

        if ($result_vijesti->num_rows > 0) {
            while ($vijest = $result_vijesti->fetch_assoc()) {
                echo "<div class='article'>
                        <img src='" . htmlspecialchars($vijest["slika"]) . "' alt='" . htmlspecialchars($vijest["naslov"]) . "'>
                        <h2>" . htmlspecialchars($vijest["naslov"]) . "</h2>
                        <p>" . htmlspecialchars($vijest["sazetak"]) . "</p>
                      </div>";
            }
        } else {
            echo "Nema vijesti u ovom žanru.";
        }

        echo "</div>";
    }
} else {
    echo "Nema žanrova.";
}

$conn->close();
?>
