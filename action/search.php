<?php
// Include file koneksi ke database
include "../action/koneksi.php";

if(isset($_POST['search'])) {
    $keyword = $_POST['search'];

    // Query pencarian data berdasarkan kolom 'nama'
    $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas,
    SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END) as hadir,
    SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END) as sakit,
    SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END) as izin,
    SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END) as alpha
    FROM siswa
    LEFT JOIN presensi ON siswa.nis = presensi.nis
    LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
    WHERE siswa.nis LIKE '$keyword%' OR siswa.nama LIKE '$keyword%'
    GROUP BY siswa.nis";
    $result = mysqli_query($koneksi, $query);
    $no = 1;
    if(mysqli_num_rows($result) > 0){
        while($d = mysqli_fetch_array($result)){
            // Menampilkan hasil pencarian dalam format HTML
            echo "<tr>";
            echo "<th class='text-center' scope='row'>" . $no++ . "</th>";
            echo "<td class='text-center'>" . $d["nis"] . "</td>";
            echo "<td class='text-start'>" . $d["nama"] . "</td>";
            echo "<td class='text-center'>" . $d["nama_kelas"] . "</td>";
            
            // Menambahkan warna merah jika nilai lebih dari 3
            $sakitColor = ($d['sakit'] > 3) ? 'text-danger fw-bold' : '';
            $izinColor = ($d['izin'] > 3) ? 'text-danger fw-bold' : '';
            $alphaColor = ($d['alpha'] > 3) ? 'text-danger fw-bold' : '';
    
            echo "<td class='text-center'>" . $d["hadir"] . "</td>";
            echo "<td class='text-center $sakitColor'>" . $d["sakit"] . "</td>";
            echo "<td class='text-center $izinColor'>" . $d["izin"] . "</td>";
            echo "<td class='text-center $alphaColor'>" . $d["alpha"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='7'>Tidak ada hasil pencarian</td></tr>";
    }
} else {
    echo "<tr><td colspan='7'>Tidak ada hasil pencarian</td></tr>";
}
?>