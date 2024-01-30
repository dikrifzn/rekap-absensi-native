<?php
	session_start();

	if(isset($_SESSION["login"])){
		header("Location: pages/dashboard.php");
	}
?>
<!doctype html>
<html lang="en">
  <head>
  	<title>Login - Al-Awaliyah</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="img/x-icon">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/login.css">
	</head>
	<body>
	<section class="ftco-section d-flex justify-content-center align-items-center p-0" style="height: 100vh;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
						<div class="icon d-flex align-items-center justify-content-center" style="background-color: #53A57F;">
							<span class="fa fa-user-o"></span>
						</div>
						<h3 class="text-center mb-4">Sign In</h3>
						<form method="POST" action="action/login.php" class="login-form">
							<?php
								if(isset($_GET['error'])){
							?>
								<div class="alert alert-danger alert-dismissible fade show" role="alert">
									<strong>mohon maaf username atau password</strong> salah
								</div>
							<?php		
								}
							?>
							<div class="form-group">
								<input name="usr" type="text" class="form-control rounded-left" placeholder="Username" required>
							</div>
							<div class="form-group d-flex">
								<input name="pswd" type="password" class="form-control rounded-left" placeholder="Password" required>
							</div>
							<div class="form-group">
								<button name="login" type="submit" class="form-control btn rounded submit px-3 text-light" style="background-color: #53A57F;">Login</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-50">
									<label class="checkbox-wrap checkbox-primary">Remember Me
										<input type="checkbox" checked>
										<span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
							</div>
						</form>
	        		</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="text-lg-start mt-3">
        <div class="d-flex justify-content-center align-items-center text-white p-3" style="background-color: rgb(83,165,127);">
        © 2020 Copyright: 
        <a class="text-white" href="https://www.instagram.com/sisteminformasi_02?igsh=MWF0bmJwczFmZDcybg==" target="_BLANK"> SINFC-2022-02 </a>
         Universitas Kuningan
        </div>
    </footer>
	<script type='text/javascript' src='http://code.jquery.com/jquery-1.10.1.js'></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	</body>
</html>

