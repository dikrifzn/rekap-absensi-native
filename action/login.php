<?php
    session_start();

    include 'koneksi.php';

    if( isset($_POST['login'])){
        $username = $_POST['usr'];
        $password = $_POST['pswd'];
        
        $result = mysqli_query($koneksi, "SELECT * FROM pengguna WHERE username = '$username'");

        if(mysqli_num_rows($result) === 1){
            $row = mysqli_fetch_assoc($result);
            if($password === $row['password']){
                $_SESSION['login'] = true;
                header('Location: ../pages/dashboard.php');
                exit();
            }
        }
        header('Location: ../index.php?error=username atau password mungkin salah');
    }
?>