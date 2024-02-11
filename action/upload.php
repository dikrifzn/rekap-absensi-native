<?php
require '../vendor/autoload.php';
include "koneksi.php";

if(isset($_POST['submit'])){
    $target_dir = "../uploads/";
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

            // Periksa koneksi
            if ($koneksi->connect_error) {
                die("Koneksi gagal: " . $koneksi->connect_error);
            }

            // Proses dan simpan data ke tabel MySQL
            // var_dump($sheetData[7]["B"]);
            foreach ($sheetData as $row) {
                var_dump($row["B"] . "<br>");
                if($row["B"] != NULL && $row["B"] != "Nis"){
                    $nis = $koneksi->real_escape_string($row['B']);
                    $nama = $koneksi->real_escape_string($row['C']);
                    $id_kelas = "";
                    if($row["D"] == "1A"){
                        $id_kelas = 1;
                    }else if($row["D"] == "1B"){
                        $id_kelas = "2";
                    }else if($row["D"] == "2A"){
                        $id_kelas = "3";
                    }else if($row["D"] == "2B"){
                        $id_kelas = "4";
                    }else if($row["D"] == "3A"){
                        $id_kelas = "5";
                    }else if($row["D"] == "3B"){
                        $id_kelas = "6";
                    }else if($row["D"] == "4"){
                        $id_kelas = "7";
                    }
                    var_dump($id_kelas . $row["C"]);
                    $sql = "INSERT INTO siswa VALUE('$nis', '$nama', " . $id_kelas . ")";
                    var_dump($sql);
                    if (!$koneksi->query($sql)) {
                        echo "Error: " . $sql . "<br>" . $koneksi->error;
                    }
                }
            }

            echo "Data berhasil diimpor ke MySQL.";

            // Tutup koneksi
            $koneksi->close();

            // Hapus file yang diunggah setelah proses selesai
            unlink($target_file);
        } else {
            echo "Maaf, ada masalah saat mengunggah file.";
        }
    }
}
?>