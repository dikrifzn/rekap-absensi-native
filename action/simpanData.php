<?php
    // Periksa apakah metode yang digunakan adalah POST
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Masukkan file koneksi.php untuk menghubungkan ke database
        include 'koneksi.php';

        // Ambil nilai NIS yang dikirimkan dari formulir
        $nis_array = $_POST['nis'];
        $selected_column = $_POST['kolom_tanggal'];
        $nama_tabel = $_POST['namatabel'];

        // Looping untuk setiap NIS yang dikirimkan
        foreach ($nis_array as $nis) {
            // Periksa apakah kunci 'option' dan kunci $nis ada dalam $_POST sebelum mengaksesnya
            if (isset($_POST['option']) && isset($_POST['option'][$nis])) {
                // Ambil nilai opsi (hadir/sakit/izin/alpha) untuk setiap siswa berdasarkan NIS-nya
                $kehadiran = $_POST['option'][$nis];

                // Lakukan update pada database untuk setiap nilai kehadiran berdasarkan NIS
                $query = "UPDATE $nama_tabel SET $selected_column = '$kehadiran' WHERE nis = '$nis'";
                mysqli_query($koneksi, $query);

                // Menghitung jumlah kehadiran, sakit, izin, dan alpha dari tabel
                $data = mysqli_query($koneksi, "SELECT * FROM $nama_tabel WHERE nis = '$nis'");
                $jumlah_hadir = 0;
                $jumlah_sakit = 0;
                $jumlah_izin = 0;
                $jumlah_alpha = 0;

                while ($row = mysqli_fetch_assoc($data)) {
                    // Lakukan pengecekan nilai pada setiap kolom tanggal (tgl1, tgl2, dst) di tabel
                    for ($i = 1; $i <= 31; $i++) { // Sesuaikan count($row) - 4 dengan jumlah kolom di tabel kehadiran Anda
                        $column_name = 'tgl' . $i;

                        if (isset($row[$column_name])) {
                            switch ($row[$column_name]) {
                                case 'H':
                                    $jumlah_hadir++;
                                    break;
                                case 'S':
                                    $jumlah_sakit++;
                                    break;
                                case 'I':
                                    $jumlah_izin++;
                                    break;
                                case 'A':
                                    $jumlah_alpha++;
                                    break;
                                default:
                                    // Tidak ada tindakan khusus jika nilai tidak sesuai
                                    break;
                            }
                        }
                    }
                }

                // Melakukan update pada tabel dengan nilai jumlah kehadiran, sakit, izin, dan alpha yang dihitung
                mysqli_query($koneksi, "UPDATE $nama_tabel SET hadir = '$jumlah_hadir', sakit = '$jumlah_sakit', izin = '$jumlah_izin', alpha = '$jumlah_alpha' WHERE nis = '$nis'");
            } else {
                // Penanganan jika kunci tidak ditemukan atau tidak terdefinisi
                header("Location: ../pages/dashboard.php?error=Mohon untuk mengisi semua Kehadiran di kelas");
            }
        }

        // Tutup koneksi ke database
        mysqli_close($koneksi);

        // Redirect kembali ke halaman awal atau halaman sukses
        header("Location: ../pages/dashboard.php?success=Data Berhasil Disimpan");
        exit();
    } else {
        // Jika bukan metode POST, maka tampilkan pesan kesalahan atau lakukan penanganan sesuai kebutuhan
        echo "Metode yang digunakan bukanlah metode POST!";
    }
?>