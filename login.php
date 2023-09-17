<?php
$con= mysqli_connect('localhost','root','','web_qlsieuthi')
or die('lỗi kết nối');
$tk='';$mk='';
if (isset($_POST['btn-login'])) {
  $tk=$_POST['txtuser'];
  $mk=$_POST['txtpassword'];

  // Kiểm tra thông tin đăng nhập
  $sql="SELECT gmail, sdt , matkhau from taikhoanad where (gmail='$tk' or sdt='$tk') and matkhau='$mk'";
  $kq=mysqli_query($con,$sql);
  if ($kq) {
   
    header("location: contac.php");
    exit;
  } else {
    echo "Tên người dùng hoặc mật khẩu không đúng!";
  }
}
 //đóng kết nối
 mysqli_close($con);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/login.css">
    <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css">
</head>
<body>
  
    <div class="nameapp" style="width: 60%;">
                            
    </div>
    <div style="width: 40%;">

        <div id="main">
                       
               
        
          
                    
                        <div class="body-login">
                            <form action="login.php" method="post">
                                <h1 class="header-login">Login</h1>
                                <div class="text-login">
                                    <input type="text" name="txtuser" placeholder="Username" require>
                                    <i class="icon-login ti-user" ></i>
                                </div>
    
                                <div class="text-login">
                                    <input type="password" name="txtpassword" placeholder="Password" required>
                                    <i class="icon-login ti-lock" ></i>
                                </div>
                                <div class="remember-login">
                                    <label for=""> <input  type="checkbox">Gi nhớ tài khoản </label>
                                    <a href="#">Quên mật khẩu</a>
                                </div>
                                <button type="submit" name='btn-login' class="btn-login">Login</button>
    
                            </form>
                        </div>
                    
            
        </div>
    </div>
</body>
</html>