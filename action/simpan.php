<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    include "koneksi.php";

    $tanggal = $_POST["tanggal"];
    $matapelajaran = $_POST["matapelajaran"];

    foreach ($_POST["option"] as $nis => $status) {
        $nis = mysqli_real_escape_string($koneksi, $nis);

        $query = "INSERT INTO presensi (nis, tanggal, id_matapelajaran, status_presensi) 
                  VALUES ('$nis', '$tanggal', '$matapelajaran', '$status')";
        
        mysqli_query($koneksi, $query);
    }

    mysqli_close($koneksi);

    header("Location: ../pages/dashboard.php?success=Data Berhasil Disimpan");
    exit();
} else {
    header("Location: ../pages/dashboard.php?error=Mohon untuk mengisi semua Kehadiran di kelas");
    exit();
}
?>