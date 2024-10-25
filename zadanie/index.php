<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="container">
        <div id="left">
            <div class="logo">LOGO</div>
            <h1>Dostępne filtry</h1>
            <label for="search"></label>
            <input type="text" id="search" placeholder=""><br><br>
            <select id="Miasto">
                <option value="">Miasto</option>
                <option value="Gdańsk">Gdańsk</option>
                <option value="Sopot">Sopot</option>
                <option value="Kraków">Kraków</option>
                <option value="Warszawa">Warszawa</option>
                <option value="Poznań">Poznań</option>
            </select><br>
            <label for="cena">Cena za litr od: </label>
            <input type="range" id="minimum-range" min="1.00" max="10" value="1.00">
            <span id="minimum-price-value">1.00</span> zł<br><br>
            <label for="cena">Cena za litr do:</label>
            <input type="range" id="maximum-range" min="1.00" max="10" value="10">
            <span id="maximum-price-value">10.00</span> zł<br><br>
            <button onclick="search()">Szukaj</button>
            <button onclick="reset()">Reset</button>
        </div> 
        <div id="right">
            Wyniki wyszukiwania:
        </div>
<?php
$conn = new mysqli("localhost", "root", "", "stacja paliw");

$sql = "SELECT stacje_paliw.nazwa, stacje_paliw.cena, adresy.miasto, adresy.ulica, adresy.numer FROM stacje_paliw JOIN adresy ON stacje_paliw.adres = adresy.id;"
$wynik = $conn->query($sql);
while ($stacja = $wynik->fetch_assoc()) {
    echo '<div class="card flex column gap-12 center both">';
    echo '<h2>' . $stacja["nazwa"] .'</h2>';
echo '</div>';
echo '<h3>cena:</h3>';
echo '<p>' . $stacja["cena"] . 'zł' . '</p';
echo '</div>';
echo '</div>';
echo '<h3>adres:</h3>';
echo '<p>' . $stacja["miasto"] . '</p>';
echo '<p>' . $stacja["ulica"] . ' '. $stacja["numer"]. '</p>';
echo '</div>';
echo '</div>';


}

$conn->close();



?>
    </div>
    <script src="script.js"></script>
</body>
</html>
