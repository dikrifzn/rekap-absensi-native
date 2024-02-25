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
    <!-- UPDATE DATA -->
    <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Update Siswa</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form method="POST" action="../action/updateData.php">
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingNIS" name="nis" placeholder="NIS" readonly>
                            <label for="floatingNIS">NIS</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingNama" name="nama" placeholder="Nama">
                            <label for="floatingNama">Nama</label>
                        </div>
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="inputGroupSelect01">Kelas</label>
                            <select class="form-select" id="inputGroupSelect01" name="kelas">
                                <option value="1" selected>1A</option>
                                <option value="2">1B</option>
                                <option value="3">2A</option>
                                <option value="4">2B</option>
                                <option value="5">3A</option>
                                <option value="6">3B</option>
                                <option value="7">4</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <label class="input-group-text" for="inputGroupSelect02">Status</label>
                            <select class="form-select" id="inputGroupSelect02" name="status">
                                <option value="aktif" selected>Aktif</option>
                                <option value="tidak_aktif">Tidak Aktif</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" onclick="deleteData()" class="btn btn-danger">Hapus</button>
                        <button type="sumbit" class="btn btn-primary">Ubah</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Siswa</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form method="POST" action="../action/addData.php">
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingNIS2" name="nis" placeholder="NIS">
                            <label for="floatingNIS">NIS</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingNama2" name="nama" placeholder="Nama">
                            <label for="floatingNama">Nama</label>
                        </div>
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="inputGroupSelect01">Kelas</label>
                            <select class="form-select" id="inputGroupSelect012" name="kelas">
                                <option value="1" selected>1A</option>
                                <option value="2">1B</option>
                                <option value="3">2A</option>
                                <option value="4">2B</option>
                                <option value="5">3A</option>
                                <option value="6">3B</option>
                                <option value="7">4</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <label class="input-group-text" for="inputGroupSelect02">Status</label>
                            <select class="form-select" id="inputGroupSelect022" name="status">
                                <option value="aktif" selected>Aktif</option>
                                <option value="tidak_aktif">Tidak Aktif</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
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
                <a href="rekapKehadiran.php">
                    <div class="navitem p-2">
                        Rekap Kehadiran
                    </div>
                </a>
                <a href="#">
                    <div class="navitem p-2">
                        Manajemen Siswa
                    </div>
                </a>
            </div>
        </div>
    </nav>
    <?php
			if(isset($_GET['success'])){
		?>
				<div class="alert alert-primary alert-dismissible fade show text-start" role="alert">
                    <?php echo $_GET['success']; ?>
				</div>
		<?php		
			}
		?>
        <?php
			if(isset($_GET['error'])){
		?>
				<div class="alert alert-warning alert-dismissible fade show text-start" role="alert">
                    <?php echo $_GET['error']; ?>
				</div>
		<?php		
			}
		?>
    <div class="container p-3">
        <form action="../action/upload.php" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col">
                    <input class="form-control" type="file" name="fileToUpload" id="fileToUpload">
                </div>
                <div class="col-1 ps-0 w-auto">
                    <input class="btn btn-primary" type="submit" value="Upload" name="submit">
                </div>
            </div>
        </form>
        <div class="d-flex justify-content-between align-items-end mt-3">
                <div>
                    <span class="text-danger">*</span> klik nama siswa untuk merubah data. <br>
                    <span class="text-danger">*</span> Gunakan file template <a href="../uploads/template-upload-data.xlsx">ini</a> untuk mengunggah.
                </div>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Tambah Siswa +
                </button>
        </div>
        <table class="table table-striped table-hover m-0 align-items-center mt-3">
            <thead class="text-center">
                <tr>
                    <th class="col-1" scope="col">#</th>
                    <th class="col-2" scope="col">NIS</th>
                    <th class="col-4" scope="col">Nama</th>
                    <th class="col-4" scope="col">Kelas</th>
                    <th class="col-1" scope="col">status</th>
                </tr>
            </thead>
            <tbody id="data-table-body">
            <?php
                include "../action/koneksi.php";

                $no = 1;
                $data = mysqli_query($koneksi, "SELECT siswa.nis, siswa.nama, kelas.nama_kelas, siswa.status FROM siswa INNER JOIN kelas ON siswa.id_kelas = kelas.id_kelas");
                    
                while ($d = mysqli_fetch_array($data)) {
                    echo "<tr>";
                    echo "<th class='text-center' scope='row'>" . $no++ . "</th>";
                    echo "<td class='text-center'>" . $d["nis"] . "</td>";
                    echo "<td class='text-start'>" . $d["nama"] . "</td>";
                    echo "<td class='text-center'>" . $d["nama_kelas"] . "</td>";
                    if($d["status"] == "aktif"){
                        $status = "Aktif";
                    }else{
                        $status = "Tidak Aktif";
                    }
                    echo "<td class='text-center'>"
                        . $status .
                    "</td>";
                    echo "</tr>";
                }
            ?>
            </tbody>
        </table>
    </div>
    <footer class="text-lg-start mt-3">
        <div class="d-flex justify-content-center align-items-center text-white p-3" style="background-color: rgb(83,165,127);">
            © 2020 Copyright:&nbsp;
            <a class="text-white" href="https://www.instagram.com/sisteminformasi_02/" target="_BLANK">SINFC-2022-02</a>
            &nbsp;Universitas Kuningan
        </div>
    </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    
    document.addEventListener('DOMContentLoaded', function () {
    const tableRows = document.querySelectorAll('#data-table-body tr');

    tableRows.forEach(row => {
        row.addEventListener('click', function () {
            // Mendapatkan NIS dari baris tabel yang diklik
            const nis = row.querySelector('td:nth-child(2)').innerText;

            // Membuat permintaan AJAX ke server untuk mendapatkan data siswa berdasarkan NIS
            fetch('../action/getDataAjax.php?nis=' + nis)
                .then(response => response.json())
                .then(data => {
                    // Mengisi isian modal dengan data siswa yang diterima
                    document.getElementById('floatingNIS').value = data[0].nis;
                    document.getElementById('floatingNama').value = data[0].nama;
                    
                    // Mengisi dropdown kelas dengan opsi yang diterima dari server
                    const kelasDropdown = document.getElementById('inputGroupSelect01');
                    kelasDropdown.value = data[0].id_kelas;
                    
                    // Mengisi dropdown status dengan opsi yang diterima dari server
                    const statusDropdown = document.getElementById('inputGroupSelect02');
                    statusDropdown.value = data[0].status;
                })
                .catch(error => console.error('Error:', error));
            
            // Membuka modal
            const myModal = new bootstrap.Modal(document.getElementById('staticBackdrop2'));
            myModal.show();
        });
    });
    const myModal = document.getElementById('myModal');
    const myInput = document.getElementById('myInput');

    myModal.addEventListener('shown.bs.modal', () => {
        myInput.focus()
    })

});
    
const closeButton2 = document.querySelector('#staticBackdrop .modal-content .btn-close');
if (closeButton2) {
        closeButton2.addEventListener('click', function () {
            // Menghapus nilai dari isian NIS ketika tombol close diklik
            document.getElementById('floatingNIS2').value = '';
            document.getElementById('floatingNama2').value = '';
            document.getElementById('inputGroupSelect012').selectedIndex = 0;
            document.getElementById('inputGroupSelect022').selectedIndex = 0;

        });
    }

    function deleteData(){
        deleteNis = document.getElementById('floatingNIS').value;
        window.location.href = "../action/deleteData.php?nis=" + deleteNis;
    }
</script>

</body>
</html>