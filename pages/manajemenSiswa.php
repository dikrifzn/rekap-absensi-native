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
            </div>
        </div>
    </nav>
    <div class="container p-3">
    <form action="../action/upload.php" method="post" enctype="multipart/form-data">
    Pilih file Excel: <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload" name="submit">
</form>

      <table class="table table-striped m-0 align-items-center">
        <thead class="text-center">
        <tr>
            <th class="col-1" scope="col">#</th>
            <th class="col-2" scope="col">NIS</th>
            <th class="col-4" scope="col">Nama</th>
            <th class="col-4" scope="col">Kelas</th>
            <th class="col-1" scope="col">status</th>
          </tr>
        </thead>
        </thead>
        <tbody id="data-table-body">
        <?php
        include "../action/koneksi.php";

        $no = 1;
        $data = mysqli_query($koneksi, "SELECT siswa.nis, siswa.nama, kelas.nama_kelas 
                                          FROM siswa
                                          INNER JOIN kelas ON siswa.id_kelas = kelas.id_kelas");
                    
        while ($d = mysqli_fetch_array($data)) {
            echo "<tr>";
            echo "<th class='text-center' scope='row'>" . $no++ . "</th>";
            echo "<td class='text-center'>" . $d["nis"] . "</td>";
            echo "<td class='text-start'>" . $d["nama"] . "</td>";
            echo "<td class='text-center'>" . $d["nama_kelas"] . "</td>";
            echo "<td class='text-center'></td>";
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
    $(document).ready(function() {
      $("#search").on("keyup", function() {
          var value = $(this).val().toLowerCase();
          var tabel = "kelas1a"; // Ganti dengan nama tabel yang diinginkan
          $.ajax({
              url: "../action/search.php",
              type: "POST",
              data: {search:value, tabel:tabel}, // Mengirimkan data tabel yang akan dicari
              success: function(data) {
                  $("#data-table-body").html(data);
              }
          });
      });
    });

  </script>
</body>
</html>