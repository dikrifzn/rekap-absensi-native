<?php
include "koneksi.php";

if(isset($_GET['nis'])) {
    $nis = $_GET['nis'];

    mysqli_query($koneksi, "DELETE FROM presensi WHERE nis = '$nis'");
    $result = mysqli_query($koneksi, "DELETE FROM siswa WHERE nis = '$nis'");

    if($result) {
        header("Location: ../pages/manajemenSiswa.php?success=Data berhasil dihapus");
    } else {
        header("Location: ../pages/manajemenSiswa.php?error=Gagal menghapus data");
    }
} else {
    header("Location: ../pages/manajemenSiswa.php?error=NIS tidak diterima");
}
?>
