<?php

$hostname = "127.0.0.1";
$username = "root";
$password = "";
$database = "films";

$conn = new mysqli($hostname, $username, $password, $database);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

function displayFilmsFromDatabase($section, $conn) {
    global $filmData;

    $query = "SELECT * FROM datafilms";
    $result = $conn->query($query);

    if (!$result) {
        die("Query error: " . $conn->error);
    }

    while ($row = $result->fetch_assoc()) {
        $filmData[$section][] = array(
            "judul" => $row['title'],
            "gambar" => $row['image'],
            "sinopsis" => $row['synopsis'],
            "video" => $row['video_url']
        );
    }

    global $filmData2; 

    $query = "SELECT * FROM datafilms2"; 
    $result = $conn->query($query);

    if (!$result) {
        die("Query error: " . $conn->error);
    }

    while ($row = $result->fetch_assoc()) {
        $filmData2[$section][] = array(
            "judul" => $row['title'],
            "gambar" => $row['image'],
            "sinopsis" => $row['synopsis'],
            "video" => $row['video_url']
        );
    }

    global $filmData3; 

    $query = "SELECT * FROM datafilms3"; 
    $result = $conn->query($query);

    if (!$result) {
        die("Query error: " . $conn->error);
    }

    while ($row = $result->fetch_assoc()) {
        $filmData3[$section][] = array(
            "judul" => $row['title'],
            "gambar" => $row['image'],
            "sinopsis" => $row['synopsis'],
            "video" => $row['video_url']
        );
    }
}

displayFilmsFromDatabase("terbaru", $conn);
displayFilmsFromDatabase("terpopuler", $conn);
displayFilmsFromDatabase("terbaik", $conn); 

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>MyFilm</title>
</head>
<body>
    <div class="containernavbar" id="containernavbar">
        <div class="navbar">
            <h1><span>My</span>Film</h1>
            <ul>
                <li><a href="#terbaru">Terbaru</a></li>
                <li><a href="#terpopuler">Terpopuler</a></li>
                <li><a href="#terbaik">Terbaik</a></li>
            </ul>
        </div>
        <div class="hiro">
            <h2>Temukan film-film terbaik sesuai selera Anda! Dapatkan rekomendasi film pilihan dan trailer menarik hanya di MyFilm. Kunjungi MyFilm sekarang dan mulailah petualangan film Anda!</h2>
        </div>
    </div>

    <div id="terbaru">
        <h1>Terbaru</h1>
        <div class="daftarfilm">
            <?php foreach ($filmData['terbaru'] as $film) { ?>
                <div class="card">
                    <div class="konten">
                        <img src="<?php echo $film['gambar']; ?>" alt="<?php echo $film['judul']; ?>">
                        <div class="sinopsis">
                            <h3><?php echo $film['judul']; ?></h3>
                            <p><?php echo $film['sinopsis']; ?></p>
                        </div>
                        <button class="openVideo" data-video="<?php echo $film['video']; ?>">Trailer</button>
                        <div id="videoPopup" class="popup" style="display: none;">
                            <span class="close" id="closeVideo">&times;</span>
                            <iframe id="videoIframe" frameborder="0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

    <div id="terpopuler">
        <h1>Terpopuler</h1>
        <div class="daftarfilm">
            <?php foreach ($filmData2['terpopuler'] as $film) { ?>
                <div class="card">
                    <div class="konten">
                        <img src="<?php echo $film['gambar']; ?>" alt="<?php echo $film['judul']; ?>">
                        <div class="sinopsis">
                            <h3><?php echo $film['judul']; ?></h3>
                            <p><?php echo $film['sinopsis']; ?></p>
                        </div>
                        <button class="openVideo" data-video="<?php echo $film['video']; ?>">Trailer</button>
                        <div id="videoPopup" class="popup" style="display: none;">
                            <span class="close" id="closeVideo">&times;</span>
                            <iframe id="videoIframe" frameborder="0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

    <div id="terbaik">
        <h1>Terbaik</h1>
        <div class="daftarfilm">
            <?php foreach ($filmData3['terbaik'] as $film) { ?>
                <div class="card">
                    <div class="konten">
                        <img src="<?php echo $film['gambar']; ?>" alt="<?php echo $film['judul']; ?>">
                        <div class="sinopsis">
                            <h3><?php echo $film['judul']; ?></h3>
                            <p><?php echo $film['sinopsis']; ?></p>
                        </div>
                        <button class="openVideo" data-video="<?php echo $film['video']; ?>">Trailer</button>
                        <div id="videoPopup" class="popup" style="display: none;">
                            <span class="close" id="closeVideo">&times;</span>
                            <iframe id="videoIframe" frameborder="0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

    <div id="back-to-top">
        <a href="#containernavbar">Kembali&#8679;</a>
    </div>
    
    <script src="script.js"></script>
</body>
</html>