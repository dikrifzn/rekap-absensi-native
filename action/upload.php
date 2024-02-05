<?php
require 'vendor/autoload.php';

if(isset($_POST['submit'])){
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Periksa apakah file adalah file Excel
    if($fileType != "xls" && $fileType != "xlsx") {
        echo "Maaf, hanya file Excel yang diizinkan.";
        $uploadOk = 0;
    }

    // Periksa jika $uploadOk disetel ke 0 oleh kesalahan
    if ($uploadOk == 0) {
        echo "File tidak diunggah.";
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            // File berhasil diunggah, sekarang proses data
            $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($target_file);
            $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);

            // Sambungkan ke database MySQL
            $servername = "localhost";
            $username = "username";
            $password = "password";
            $dbname = "nama_database";
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Periksa koneksi
            if ($conn->connect_error) {
                die("Koneksi gagal: " . $conn->connect_error);
            }

            // Proses dan simpan data ke tabel MySQL
            foreach ($sheetData as $row) {
                $sql = "INSERT INTO nama_tabel (kolom1, kolom2, kolom3) VALUES ('" . $row['A'] . "', '" . $row['B'] . "', '" . $row['C'] . "')";
                $conn->query($sql);
            }

            echo "Data berhasil diimpor ke MySQL.";

            // Tutup koneksi
            $conn->close();
        } else {
            echo "Maaf, ada masalah saat mengunggah file.";
        }
    }
}
?>