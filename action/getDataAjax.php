<?php
    // Sambungkan ke database
    include "../action/koneksi.php";

    // Periksa apakah parameter NIS telah diterima melalui GET
    if(isset($_GET['nis'])) {
        // Escape input NIS untuk mencegah SQL Injection
        $nis = mysqli_real_escape_string($koneksi, $_GET['nis']);

        // Query untuk mengambil data siswa berdasarkan NIS
        $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, siswa.status, kelas.id_kelas 
                  FROM siswa 
                  LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas 
                  WHERE siswa.nis = '$nis'";

        $result = mysqli_query($koneksi, $query);

        // Periksa apakah ada hasil dari query
        if(mysqli_num_rows($result) > 0) {
            // Inisialisasi array untuk menyimpan data siswa
            $siswaData = array();

            // Loop melalui hasil query dan tambahkan setiap baris ke dalam array
            while ($siswa = mysqli_fetch_assoc($result)) {
                $siswaData[] = $siswa;
            }

            // Kirimkan array data siswa sebagai respons JSON
            echo json_encode($siswaData);
        } else {
            // Jika tidak ada data siswa yang sesuai, kirimkan respons kosong
            echo json_encode(array('error' => 'Data siswa tidak ditemukan'));
        }
    } else {
        // Jika parameter NIS tidak diberikan, kirimkan respons kosong
        echo json_encode(array('error' => 'Parameter NIS tidak ditemukan'));
    }
?>
