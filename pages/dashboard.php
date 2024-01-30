<?php
    session_start();
    
    if( !isset($_SESSION['login'])){
        header("Location: ../index.php");
        exit();
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
                <a href="#">
                    <div class="navitem p-2">
                        Absensi
                    </div>
                </a>
                <a href="rekapKehadiran.php">
                    <div class="navitem p-2">
                        Rekap Kehadiran
                    </div>
                </a>
            </div>
        </div>
    </nav>
    <div class="container-fluid p-3 text-center">
        <?php
			if(isset($_GET['success'])){
		?>
				<div class="alert alert-primary alert-dismissible fade show text-start" role="alert">
				    Data Berhasil Disimpan
				</div>
		<?php		
			}
		?>
        <?php
			if(isset($_GET['error'])){
		?>
				<div class="alert alert-warning alert-dismissible fade show text-start" role="alert">
                    Mohon untuk mengisi semua Kehadiran di kelas
				</div>
		<?php		
			}
		?>
        <div class="row">  <!--KELAS 1A-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 1A
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas1a");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas1a">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3">  <!--KELAS 1B-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 1B
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas1b");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas1b">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3"> <!--KELAS 2A-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 2A
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                        <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas2a");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas2a">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3">  <!--KELAS 2B-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 2B
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas2b");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas2b">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3">  <!--KELAS 3A-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 3A
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas3a");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas3a">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3">  <!--KELAS 3B-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 3B
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas3b");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas3b">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row mt-3">  <!--KELAS 4-->
            <div class="col">
                <div class="dropdown d-grid"><!--Kelas-->
                    <button class="btn btn-lg btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                      Kelas 4
                    </button>
                    <ul class="dropdown-menu w-100 p-0">
                        <li>
                            <form method="POST" action="../action/simpanData.php">
                            <label class="ms-3" for="kolom_tanggal">Pilih Kolom Tanggal : </label>
                            <select class="btn btn-primary dropdown-toggle" name="kolom_tanggal" id="kolom_tanggal">
                                <?php
                                // Menampilkan opsi dropdown untuk setiap kolom tanggal dari tgl1 hingga tgl31
                                for ($i = 1; $i <= 31; $i++) {
                                    echo "<option class='dropdown-item' value='tgl$i'>Tanggal $i</option>";
                                }
                                ?>
                            </select>
                            <table class="table table-striped m-0 align-items-center">
                                <thead>
                                  <tr>
                                    <th class="text-center" scope="col">#</th>
                                    <th scope="col">NIS</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">JK</th>
                                    <th class="col-1 text-center" scope="col">Hadir</th>
                                    <th class="col-1 text-center" scope="col">Sakit</th>
                                    <th class="col-1 text-center" scope="col">Izin</th>
                                    <th class="col-1 text-center" scope="col">Alpha</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    include '../action/koneksi.php';
                                    $no = 1;
                                    $data = mysqli_query($koneksi, "SELECT * FROM kelas4");
                                    while($d = mysqli_fetch_array($data)){
                                        // Mendapatkan nilai dari database
                                        $hadir = $d["hadir"];
                                        $sakit = $d["sakit"];
                                        $izin = $d["izin"];
                                        $alpha = $d["alpha"];
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><?php echo $no++; ?></th>
                                    <td><?php echo $d["nis"]; ?></td>
                                    <td><?php echo $d["nama"]; ?></td>
                                    <td><?php echo $d["jenis_kelamin"]; ?></td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="H" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="S" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="I" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <td class="col-1 text-center">
                                        <input class="form-check-input" type="radio" value="A" name="option[<?php echo $d['nis']; ?>]">
                                    </td>
                                    <input type="hidden" name="nis[]" value="<?php echo $d['nis']; ?>">
                                    <input type="hidden" name="namatabel" value="kelas4">
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                            <div class="d-grid gap-2">
                                <button class="btn btn-primary" type="submit" name="simpan">Simpan</button>
                            </div>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <footer class="text-lg-start mt-3">
        <div class="d-flex justify-content-center align-items-center text-white p-3" style="background-color: rgb(83,165,127);">
        © 2020 Copyright:
        <a class="text-white"  href="https://www.instagram.com/sisteminformasi_02?igsh=MWF0bmJwczFmZDcybg==" target="_BLANK">SINFC-2022-02</a>
        Universitas Kuningan
        </div>
    </footer>

    <script type='text/javascript' src='http://code.jquery.com/jquery-1.10.1.js'></script>
    <script type='text/javascript' src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
    <script type='text/javascript'>
        $(document).ready(function(){
        $('.dropdown').on('show.bs.dropdown', function(e){
            $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
        });
        $('.dropdown').on('hide.bs.dropdown', function(e){
            $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
        });
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>