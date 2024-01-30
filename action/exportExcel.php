<?php
    include "../action/koneksi.php";
    $nama_tabel = $_GET['table'] ?? '';
    $output = '';    
    $data = mysqli_query($koneksi, "SELECT * FROM $nama_tabel");
    $output .= '
        <table class="table" border="1">
        <tr>
            <th>NIS</th>
            <th>Nama</th>
            <th>JK</th>';

    // Menambahkan kolom untuk tanggal
    for ($i = 1; $i <= 31; $i++) { 
        $output .= '<th>Tgl' . $i . '</th>';
    }

    $output .= '<th>Hadir</th>
                <th>Sakit</th>
                <th>Izin</th>
                <th>Alpha</th>
            </tr>';

    while($d = mysqli_fetch_array($data)){
        $output .= '
            <tr>
                <td>' . $d["nis"] . '</td>
                <td>' . $d["nama"] . '</td>
                <td>' . $d["jenis_kelamin"] . '</td>';

        // Menambahkan nilai untuk tanggal
        for ($i = 1; $i <= 31; $i++) { 
            $output .= '<td>' . $d["tgl" . $i] . '</td>';
        }

        $output .= '<td>' . $d["hadir"] . '</td>
                    <td>' . $d["sakit"] . '</td>
                    <td>' . $d["izin"] . '</td>
                    <td>' . $d["alpha"] . '</td>
                </tr>';
    }
    $output .= '</table>';

    // Set header untuk membuat file Excel
    header("Content-Type: application/vnd.ms-excel");
    header("Content-Disposition: attachment; filename=rekapabsensi_$nama_tabel.xls");
    echo $output;
?>