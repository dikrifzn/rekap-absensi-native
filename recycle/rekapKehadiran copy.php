<?php
	session_start();

	if(!isset($_SESSION["login"])){
		header("Location: ../index.php");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Absensi | Al-Awaliyah</title>
    <link rel="icon" href="../img/favicon.png" type="img/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <nav> <!--Navbar-->
        <div class="topnav bg-success bg-opacity-75"> 
            <div class="row w-100">
                <div class="col col-2">
                    <div class="burger">
                        <a class="btn btn-link" data-bs-toggle="offcanvas" href="#offcanvas" role="button">
                            <i class="bi bi-list text-white fs-1"></i>
                        </a>
                    </div>
                </div>
                <div class="col d-flex justify-content-center align-items-center">
                    <h1 class="text-light m-2">Al-Awaliyah</h1>
                </div>
                <div class="col col-2 d-flex justify-content-end align-items-center">
                    <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-light me-3 " href="../action/logout.php">Logout</a>
                </div>
            </div>
        </div>         
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvas" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title fw-bold" id="offcanvasExampleLabel">Menu</h5>
              <button type="button" class="btn-close m-1" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <a href="dashboard.php">
                    <div class="navitem p-2">
                        Absensi
                    </div>
                </a>
                <a href="#">
                    <div class="navitem p-2">
                        Rekap Kehadiran
                    </div>
                </a>
                <a href="ManajemenSiswa.php">
                    <div class="navitem p-2">
                        Manajemen Siswa
                    </div>
                </a>
            </div>
        </div>
    </nav>
    <div class="container pt-3">
      <div class="row">
        <div class="col-md-4 mb-3">
          <div class="input-group">
            <label class="input-group-text" for="inputGroupSelect01">Kelas</label>
            <select class="form-select" id="inputGroupSelect01" name="kelas">
              <option value="semua" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == 'semua' ? 'selected' : '') : '' ?>>Semua</option>
              <option value="1" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '1' ? 'selected' : '') : '' ?>>Kelas 1A</option>
              <option value="2" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '2' ? 'selected' : '') : '' ?>>Kelas 1B</option>
              <option value="3" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '3' ? 'selected' : '') : '' ?>>Kelas 2A</option>
              <option value="4" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '4' ? 'selected' : '') : '' ?>>Kelas 2B</option>
              <option value="5" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '5' ? 'selected' : '') : '' ?>>Kelas 3A</option>
              <option value="6" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '6' ? 'selected' : '') : '' ?>>Kelas 3B</option>
              <option value="7" <?= isset($_GET['kelas']) == true ? ($_GET['kelas'] == '7' ? 'selected' : '') : '' ?>>Kelas 4</option>
            </select>
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <div class="input-group">
            <label class="input-group-text" for="inputGroupSelect02">Mata Pelajaran</label>
            <select id="inputGroupSelect02" class="form-select" id="inputGroupSelect02" name="kelas">
              <option value="semua" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == 'semua' ? 'selected' : '') : '' ?>>Semua</option>
              <option value="1" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '1' ? 'selected' : '') : '' ?>>Do'a</option>
              <option value="2" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '2' ? 'selected' : '') : '' ?>>Hadis</option>
              <option value="3" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '3' ? 'selected' : '') : '' ?>>Juz Ama</option>
              <option value="4" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '4' ? 'selected' : '') : '' ?>>B. Arab</option>
              <option value="5" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '5' ? 'selected' : '') : '' ?>>Persolatan</option>
              <option value="6" <?= isset($_GET['mata_pelajaran']) == true ? ($_GET['mata_pelajaran'] == '6' ? 'selected' : '') : '' ?>>Tauhid</option>
            </select>
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <div class="input-group">
            <label class="input-group-text" for="inputGroupSelect03">Bulan</label>
            <select id="inputGroupSelect03" class="form-select" id="inputGroupSelect03" name="kelas">
              <option value="semua" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == 'semua' ? 'selected' : '') : '' ?>>Semua</option>
              <option value="1" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '1' ? 'selected' : '') : '' ?>>Januari</option>
              <option value="2" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '2' ? 'selected' : '') : '' ?>>Februari</option>
              <option value="3" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '3' ? 'selected' : '') : '' ?>>Maret</option>
              <option value="4" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '4' ? 'selected' : '') : '' ?>>April</option>
              <option value="5" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '5' ? 'selected' : '') : '' ?>>Mei</option>
              <option value="6" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '6' ? 'selected' : '') : '' ?>>Juni</option>
              <option value="7" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '7' ? 'selected' : '') : '' ?>>Juli</option>
              <option value="8" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '8' ? 'selected' : '') : '' ?>>Agustus</option>
              <option value="9" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '9' ? 'selected' : '') : '' ?>v>September</option>
              <option value="10" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '10' ? 'selected' : '') : '' ?>>Oktober</option>
              <option value="11" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '11' ? 'selected' : '') : '' ?>>November</option>
              <option value="12" <?= isset($_GET['bulan']) == true ? ($_GET['bulan'] == '12' ? 'selected' : '') : '' ?>>Desember</option>
            </select>
          </div>
        </div>
    </div>
    </div>
    <div class="container pt-3">
      <div class="input-group mb-3">
        <div class="row">
          <div class="col mb-3">
            <a href="../action/sheet.php?kelas=1">
                <button class="btn btn-primary">Download Rekap Kehadiran</button>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <table class="table table-striped m-0 align-items-center">
        <thead class="text-center">
        <tr>
            <th class="col-1" scope="col">#</th>
            <th class="col-2" scope="col">NIS</th>
            <th class="col-4" scope="col">Nama</th>
            <?php
            if(!isset($_GET['kelas']) || $_GET['kelas'] == 'semua'){
                  echo '<th class="col-1 text-start" scope="col">Kelas</th>';
                }
            ?>
            <th class="col-1" scope="col">Hadir</th>
            <th class="col-1" scope="col">Sakit</th>
            <th class="col-1" scope="col">Izin</th>
            <th class="col-1" scope="col">Alpha</th>
          </tr>
        </thead>
        <tbody id="data-table-body">
            <?php
            include "../action/koneksi.php";
            
            $query = "";
            if((!isset($_GET['kelas']) || $_GET['kelas'] == 'semua') && 
               (!isset($_GET['mata_pelajaran']) || $_GET['mata_pelajaran'] == 'semua') && 
               (!isset($_GET['bulan']) || $_GET['bulan'] == 'semua')){ // jika tidak ada GET atau semua get berisi semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa
                LEFT JOIN presensi ON siswa.nis = presensi.nis
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                GROUP BY siswa.nis; ";
                echo "pilihan pertama";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] == 'semua') && $_GET['mata_pelajaran'] == 'semua' && $_GET['bulan'] != 'semua'){ //jika kelas dan mata_pelajaran = semua dan bulan tidak semua
              $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
              COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
              COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
              COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
              COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
              FROM siswa LEFT JOIN presensi 
              ON siswa.nis = presensi.nis AND MONTH(presensi.tanggal) = '". $_GET['bulan'] ."'
              LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
              GROUP BY siswa.nis; ";
              echo "pilihan 2";
            }else if ((isset($_GET['kelas']) && $_GET['kelas'] == 'semua') && $_GET['mata_pelajaran'] != 'semua' && $_GET['bulan'] == 'semua') { //jika kelas dan bulan = semua dan mata_pelajaran tidak semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis AND presensi.id_matapelajaran = '". $_GET['mata_pelajaran'] ."'
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                GROUP BY siswa.nis; ";
                echo "pilihan 3";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] == 'semua') && $_GET['mata_pelajaran'] != 'semua' && $_GET['bulan'] != 'semua'){ //jika kelas berisi semua dan lainnya tidak
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis
                AND MONTH(presensi.tanggal) = '". $_GET['bulan'] ."'
                AND presensi.id_matapelajaran = '". $_GET['mata_pelajaran'] ."'
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                GROUP BY siswa.nis; ";
                echo "pilihan 4";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] != 'semua') && $_GET['mata_pelajaran'] == 'semua' && $_GET['bulan'] == 'semua'){ // jika kelas tidak berisi semua dan yang lainnya semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                WHERE kelas.id_kelas = '". $_GET['kelas'] ."' GROUP BY siswa.nis; ";
                echo "pilihan 5";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] != 'semua') && $_GET['mata_pelajaran'] != 'semua' && $_GET['bulan'] == 'semua'){ // jika kelas dan mata_pelajaran tidak berisi semua dan bulan berisi semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis
                AND presensi.id_matapelajaran = '". $_GET['mata_pelajaran'] ."'
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                WHERE kelas.id_kelas = '". $_GET['kelas'] ."'
                GROUP BY siswa.nis; ";
                echo "pilihan 6";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] != 'semua') && $_GET['mata_pelajaran'] == 'semua' && $_GET['bulan'] != 'semua'){ // jika kelas dan bulan tidak berisi semua dan mata_pelajaran berisi semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis
                AND MONTH(presensi.tanggal) = '". $_GET['bulan'] ."'
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                WHERE kelas.id_kelas = '". $_GET['kelas'] ."'
                GROUP BY siswa.nis; ";
                echo "pilihan 6";
            }else if((isset($_GET['kelas']) && $_GET['kelas'] != 'semua') && $_GET['mata_pelajaran'] != 'semua' && $_GET['bulan'] != 'semua'){ // jika semua GET tidak berisi semua
                $query = "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, 
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'H' THEN 1 ELSE 0 END), 0) as hadir,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'S' THEN 1 ELSE 0 END), 0) as sakit,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'I' THEN 1 ELSE 0 END), 0) as izin,
                COALESCE(SUM(CASE WHEN presensi.status_presensi = 'A' THEN 1 ELSE 0 END), 0) as alpha
                FROM siswa LEFT JOIN presensi 
                ON siswa.nis = presensi.nis
                AND MONTH(presensi.tanggal) = '". $_GET['bulan'] ."'
                AND presensi.id_matapelajaran = '". $_GET['mata_pelajaran'] ."'
                LEFT JOIN kelas ON siswa.id_kelas = kelas.id_kelas
                WHERE kelas.id_kelas = '". $_GET['kelas'] ."'
                GROUP BY siswa.nis; ";
                echo "pilihan 7";
            }

            $data = mysqli_query($koneksi, $query);

            $no = 1;
            while($d = mysqli_fetch_array($data)){
                echo "<tr>";
                echo "<th class='text-center' scope='row'>" . $no++ . "</th>";
                echo "<td class='text-center'>" . $d["nis"] . "</td>";
                echo "<td class='text-start'>" . $d["nama"] . "</td>";
                if(!isset($_GET['kelas']) || $_GET['kelas'] == 'semua'){
                  echo "<td class='text-start'>" . $d["nama_kelas"] . "</td>";
                }
                
                $sakitColor = ($d['sakit'] > 3) ? 'text-danger fw-bold' : '';
                $izinColor = ($d['izin'] > 3) ? 'text-danger fw-bold' : '';
                $alphaColor = ($d['alpha'] > 3) ? 'text-danger fw-bold' : '';

                echo "<td class='text-center'>" . $d["hadir"] . "</td>";
                echo "<td class='text-center $sakitColor'>" . $d["sakit"] . "</td>";
                echo "<td class='text-center $izinColor'>" . $d["izin"] . "</td>";
                echo "<td class='text-center $alphaColor'>" . $d["alpha"] . "</td>";
                echo "</tr>";
            }
            ?>
        </tbody>
      </table>
    </div>
    <footer class="text-lg-start mt-3">
        <div class="d-flex justify-content-center align-items-center text-white p-3" style="background-color: rgb(83,165,127);">
        © 2020 Copyright:
        <a class="text-white" href="https://www.instagram.com/sisteminformasi_02?igsh=MWF0bmJwczFmZDcybg==" target="_BLANK">SINFC-2022-02</a>
        Universitas Kuningan
        </div>
    </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    // $(document).ready(function() {
      // Event listener for select change
    //   $('#inputGroupSelect01').change(function() {
    //     var selectedKelas = $(this).val();

    //     switch(selectedKelas) {
    //       case 'all':
    //         window.location.href = 'rekapKehadiran.php';
    //         break;
    //       case '1A':
    //         window.location.href = 'rekap1A.php';
    //         break;
    //       case '1B':
    //         window.location.href = 'rekap1B.php';
    //         break;
    //       case '2A':
    //         window.location.href = 'rekap2A.php';
    //         break;
    //       case '2B':
    //         window.location.href = 'rekap2B.php';
    //         break;
    //       case '3A':
    //         window.location.href = 'rekap3A.php';
    //         break;
    //       case '3B':
    //         window.location.href = 'rekap3B.php';
    //         break;
    //       case '4':
    //         window.location.href = 'rekap4.php';
    //         break;
    //     }
    //   });
    // });

    $(document).ready(function() {
      // Event listener for select change
      $('#inputGroupSelect01 , #inputGroupSelect02, #inputGroupSelect03').change(function() {
        var selectedKelas = $('#inputGroupSelect01').val();
        var selectedMataPelajaran = $('#inputGroupSelect02').val();
        var selectedBulan = $('#inputGroupSelect03').val();

        window.location.href = 'rekapKehadiran.php?kelas=' + selectedKelas + '&mata_pelajaran=' + selectedMataPelajaran + '&bulan=' + selectedBulan;
      });
    });

  </script>
</body>
</html>