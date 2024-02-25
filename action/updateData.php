<?php
include "koneksi.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nis = $_POST['nis'];
    $nama = $_POST['nama'];
    $kelas = $_POST['kelas'];
    $status = $_POST['status'];

    $result = mysqli_query($koneksi, "UPDATE siswa SET nama='$nama', id_kelas='$kelas', status='$status' WHERE nis=$nis");

    if($result) {
        header("Location: ../pages/manajemenSiswa.php?success=Data Berhasil Disimpan");
    } else {
        header("Location: ../pages/manajemenSiswa.php?error=Gagal menyimpan data");
    }
}
?>