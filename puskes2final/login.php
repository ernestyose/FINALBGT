<?php

session_start();

if (isset($_SESSION['login'])) {
    header("Location: index1.php");
    exit;
} elseif (isset($_SESSION['loginDokter'])) {
    header("Location: index1.php");
    exit;
} elseif (isset($_SESSION['loginPasien'])) {
    header("Location: index1.php");
    exit;
}

// Cek apakah form login telah disubmit
if (isset($_POST['login'])) {
    $nama = $_POST['nama'];
    $password = $_POST['password'];

    // Koneksi ke database
    $conn = mysqli_connect("localhost", "root", "", "antri");

    // Validasi login
    $query = "SELECT * FROM Resepsionis WHERE Nama_R = '$nama' AND ID_Resepsionis = '$password'";
    $result = mysqli_query($conn, $query);

    $query2 = "SELECT * FROM Dokter WHERE Nama_D = '$nama' AND ID_Dokter = '$password'";
    $result2 = mysqli_query($conn, $query2);

    $query3 = "SELECT * FROM Pasien WHERE Nama_P = '$nama' AND ID_Pasien = '$password'";
    $result3 = mysqli_query($conn, $query3);

    if (mysqli_num_rows($result) === 1) {

        $_SESSION['login'] = $password;

        // Redirect ke halaman utama
        header("Location: index1.php");
        exit;
    } elseif (mysqli_num_rows($result2) === 1) {

        $_SESSION['loginDokter'] = true;

        // Redirect ke halaman utama
        header("Location: index1.php");
        exit;
    } elseif (mysqli_num_rows($result3) === 1) {

        $_SESSION['loginPasien'] = true;

        // Redirect ke halaman utama
        header("Location: index1.php");
        exit;
    } else {
        // Jika login tidak valid, tampilkan pesan error
        $error = "Nama pengguna atau kata sandi salah!";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Halaman Login</title>
</head>
<body>
    <div class="photo-display">
        <a href="https://ibb.co.com/M1XpqZZ"><img src="https://i.ibb.co.com/GMhkgnn/LogoNoBG.png" alt="LogoNoBG" border="0"></a>
    </div>

    <div class="login-section">
        <h1>SELAMAT DATANG</h1>
        <p>Silahkan login dan nikmati kemudahan layanan kesehatan tanpa hambatan</p>
        <form action="" method="post">
            <div class="input-block">
                <label for="nama" class="input-label">Username</label>
                <input type="text" name="nama" id="nama" placeholder="masukan username anda" required>
            </div>
            <div class="input-block">
                <label for="password" class="input-label">Password</label>
                <input type="password" name="password" id="password" placeholder="masukan password" required>
            </div>
            <div class="input-block">
                <button class="input-button" type="submit" name="login">Login</button>
            </div>
        </form>
        <?php if (isset($error)) { ?>
            <p><?php echo $error; ?></p>
        <?php } ?>
    </div>
</body>
</html>

<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
        background-color: #bccec4;
    }
    .photo-upload {
        margin-bottom: 20px;
        text-align: center;
    }
    .upload-label {
        font-size: 18px;
        margin-bottom: 10px;
        display: block;
    }
    #clinic-photo {
        padding: 10px;
        font-size: 16px;
    }
    .login-section {
        background: #c5d8ce;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .input-block {
        margin-bottom: 15px;
    }
    .input-label {
        display: block;
        margin-bottom: 5px;
        font-size: 16px;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .input-button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .input-button:hover {
        background-color: #0056b3;
    }
</style>
