<?php
require "koneksi.php";
require '../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$spreadsheet = new Spreadsheet();
$activeWorksheet = $spreadsheet->getActiveSheet();

$result = mysqli_query($koneksi, "SELECT
siswa.nis,
siswa.nama,
kelas.nama_kelas,
SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END) as hadir,
SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END) as sakit,
SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END) as izin,
SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END) as alpha
FROM siswa
LEFT JOIN presensi ON siswa.nis = presensi.nis
INNER JOIN kelas ON siswa.id_kelas = kelas.id_kelas
GROUP BY siswa.nis;
");

foreach ($result as $key => $row) {
    //Judul
    $activeWorksheet->setCellValue('A2', 'DAFTAR HADIR SISWA');
    $activeWorksheet->mergeCells('A2:AL2');
    $activeWorksheet->setCellValue('A3', 'MADRASAH AL-AWALIYAH');
    $activeWorksheet->mergeCells('A3:AL3');

    $styleTitle = [
        'alignment' => [
            'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
            'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER,
        ],
    ];
    $activeWorksheet->getStyle('A2:AL3')->applyFromArray($styleTitle);

    $activeWorksheet->setCellValue('A5', 'No');
    $activeWorksheet->mergeCells('A5:A6');
    $activeWorksheet->setCellValue('A'.$key+7, $key+1);
    
    $activeWorksheet->setCellValue('B5', 'Nis');
    $activeWorksheet->mergeCells('B5:B6');
    $activeWorksheet->setCellValue('B'.$key+7, $row["nis"]);
    
    $activeWorksheet->setCellValue('C5', 'Nama');
    $activeWorksheet->mergeCells('C5:C6');
    $activeWorksheet->setCellValue('C'.$key+7, $row["nama"]);

    $activeWorksheet->setCellValue('D5', 'Kelas');
    $activeWorksheet->mergeCells('D5:D6');
    $activeWorksheet->setCellValue('D'.$key+7, $row["nama_kelas"]);
    
    $activeWorksheet->setCellValue('E5', 'Bulan : ');
    $activeWorksheet->mergeCells('E5:AH5');

    for ($i = 1; $i <= 31; $i++) {
        $columnLetter = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::stringFromColumnIndex($i + 4);
        $activeWorksheet->setCellValue($columnLetter . '6', $i);
    }    

    $activeWorksheet->setCellValue('AI5', 'Jumlah');
    $activeWorksheet->mergeCells('AI5:AL5');

    $activeWorksheet->setCellValue('AI6', 'Hadir');
    $activeWorksheet->setCellValue('AI'.$key+7, $row['hadir']);
    $activeWorksheet->setCellValue('AJ6', 'Sakit');
    $activeWorksheet->setCellValue('AJ'.$key+7, $row['sakit']);
    $activeWorksheet->setCellValue('AK6', 'Izin');
    $activeWorksheet->setCellValue('AK'.$key+7, $row['izin']);
    $activeWorksheet->setCellValue('AL6', 'Alpha');
    $activeWorksheet->setCellValue('AL'.$key+7, $row['alpha']);


    // Menambahkan border ke seluruh data
    $activeWorksheet->getStyle('A5:AL'.$key+7)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

    $styleArray = [
        'fill' => [
            'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
            'startColor' => [
                'rgb' => 'FFFF00', // Warna kuning, sesuaikan dengan warna yang Anda inginkan
            ],
        ],
        'alignment' => [
            'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
            'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER,
        ],
    ];
    $activeWorksheet->getStyle('A5:AL6')->applyFromArray($styleArray);

    // Memberikan gaya khusus pada kolom "Bulan:"
    $styleBulan = [
        'alignment' => [
            'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT,
            'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER,
        ],
    ];
    $activeWorksheet->getStyle('E5')->applyFromArray($styleBulan);
}

// Set headers to force file download
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="rekap-absensi.xlsx"');
header('Cache-Control: max-age=0');

// Save spreadsheet to output
$writer = new Xlsx($spreadsheet);
$writer->save('php://output');
exit;
?>