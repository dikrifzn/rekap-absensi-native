<?php
include "koneksi.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nis = $_POST['nis'];
    $nama = $_POST['nama'];
    $kelas = $_POST['kelas'];
    $status = $_POST['status'];

    $result = mysqli_query($koneksi, "INSERT INTO siswa VALUE('$nis', '$nama', '$kelas', '$status')");

    if($result) {
        header("Location: ../pages/manajemenSiswa.php?success=Data Berhasil Ditambahkan");
    } else {
        header("Location: ../pages/manajemenSiswa.php?error=Gagal menyimpan data");
    }
}
?>