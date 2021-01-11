<?php
@session_start();
$db = mysqli_connect("localhost", "root", "", "db_elearning");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Login E-Learning | SD N Jatirawa 02</title>
    <link href="style/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="style/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="style/assets/css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>  
</head>
<body>
    
    <header>
        
            <div class="navbar navbar-inverse set-radius-zero>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>       
            </ol>
 
            <!-- deklarasi carousel -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="style/assets/img/header01.png" width="1475" height="100"/> 
                    
                </div>
                <div class="item">
                    <img src="style/assets/img/header02.png" width="1475" height="100"/> 
                   
                </div>
                <div class="item">
                    <img src="style/assets/img/hdr03.png" width="1475" height="100"/> 
                   
                </div>              
            </div>
 
            <!-- membuat panah next dan previous -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>
    

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a <?php if(@$_GET['page'] == '') { echo 'class="menu-top-active"'; } ?> href="./">Login</a></li>
                             <!-- <li><a <?php if(@$_GET['page'] == 'petunjuk') { echo 'class="menu-top-active"'; } ?> href="?page=petunjuk">Petunjuk</a></li> -->
                            <li><a <?php if(@$_GET['page'] == 'berita') { echo 'class="menu-top-active"'; } ?> href="?page=berita">Berita</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        </div>
    </section>

    <div class="content-wrapper">
         <div id="runningtext">
            <marquee behavior="scroll" scrollamoount="3" onmouseover="this.stop();" onmouseout="this.start();" direction="left">
                <b>SELAMAT DATANG DI SISTEM APLIKASI E-LEARNING SD N JATIRAWA 02</b>
            </marquee>
        </div>
        <div class="container">
            <?php
            if(@$_GET['page'] == '') { ?>
       
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Silahkan login untuk masuk ke e-learning</h4>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <?php
                        if(@$_POST['login']) {
                            $user = @mysqli_real_escape_string($db, $_POST['user']);
                            $pass = @mysqli_real_escape_string($db, $_POST['pass']);
                            $sql = mysqli_query($db, "SELECT * FROM tb_siswa WHERE username = '$user' AND password = md5('$pass')") or die ($db->error);
                            $data = mysqli_fetch_array($sql);
                            if(mysqli_num_rows($sql) > 0) {
                                if($data['status'] == 'aktif') {
                                    @$_SESSION['siswa'] = $data['id_siswa'];
                                    echo "<script>window.location='./';</script>";
                                } else {
                                    echo '<div class="alert alert-warning">Login gagal, akun Anda sedang tidak aktif</div>';
                                }
                            } else {
                                echo '<div class="alert alert-danger">Login gagal, username / password salah, coba lagi!</div>';
                            }
                        } ?>
                        <h4><i>Masukkan username dan password Anda dengan benar :</i></h4>
                        <form method="post">
                            <label>Username :</label>
                            <input type="text" name="user" class="form-control" required />
                            <label>Password :  </label>
                            <input type="password" name="pass" class="form-control" required />
                            
                            <hr />
                            <input type="submit" name="login" value="Login" class="btn btn-info" />
                            <input type="reset" class="btn btn-danger" />
                            <br>
                             Anda belum punya akun ? Silahkan <a href="./?hal=daftar" class="btn btn-xs btn-success">Daftar</a>
                            
                        </form>

                   
                
                    </div>
                    <div class="col-md-6">
                        <div class="alert alert-danger col-md-12">
                            Untuk menggunakan layanan E-learning ini kalian harus login terlebih dahulu.
                        </div>

                    </div>
                </div>
            <?php
            } else if(@$_GET['page'] == 'berita') {
                include "inc/berita.php";
            } ?>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <center>&copy; 2020 | E-Learning Jatirawa</center>
                </div>

            </div>
        </div>
    </footer>
    <script src="style/assets/js/jquery-1.11.1.js"></script>
    <script src="style/assets/js/bootstrap.js"></script>
</body>
</html>