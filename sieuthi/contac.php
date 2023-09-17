<?php

//B1: kết nối đến database
$con=mysqli_connect("localhost","root","","qlsach")
or die('Lỗi kết nối');
//tạo và thực hiện truy vấn
$sql=" SELECT*FROM loaisach ";
$data=mysqli_query($con, $sql);




//ngắt kết nối
mysqli_close($con);
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./assets/css/frame.css">
    <link rel="stylesheet" href="./assets/css/base.css">
 
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.4.2-web/css/all.min.css">
</head>
<body>
    <div class="app">
        <div class="gird wrap">
            <div class="grid_row wrap2">
                <div class=" grid_colum-2">
                    <div class="area-pos">
                        <div class="logo-web">
                            <img class="logo-web__img" src="./assets/img/logo5.jpg" alt="">
                        </div>
                        <ul class="menu">
                            <li class="menu__item"> 
                                <a href="#" class="menu__item-link">
                                <i class="menu__item-link-icon fa-regular fa-clipboard"></i>
                                        <span>Báo Cáo</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="sub-menu-item"> 
                                        <a href="#" class="menu__item-link">
                                            <span>o</span>
                                        </a>
                                    </li>
                                    <li class="sub-menu-item"> 
                                        <a href="#" class="menu__item-link">
                                            <span>o</span>
                                        </a>
                                    </li>         
                                </ul>
                            </li>
                            <li class="menu__item"> 
                                <a href="#" class="menu__item-link">
                                <i class="menu__item-link-icon fa-solid fa-people-group fa-sm"></i>
                                     <span>Quản lý nhân viên</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="sub-menu-item"> 
                                        <a href="#" class="menu__item-link">
                                            <span>o</span>
                                        </a>
                                    </li>
                                    <li class="sub-menu-item"> 
                                        <a href="#" class="menu__item-link">
                                            <span>o</span>
                                        </a>
                                    </li>                                  
                                </ul>
                            </li>
                            <li class="menu__item"> 
                                <a href="#" class="menu__item-link">
                                <i class="menu__item-link-icon fa-solid fa-dolly"></i>
                                    <span>Hàng hóa</span>
                                </a>
                            </li>
                            <li class="menu__item"> 
                                <a href="#" class="menu__item-link">
                                <i class="menu__item-link-icon fa-solid fa-rug"></i>
                                    <span>Khuyến mãi</span>
                                </a>
                            </li>
                            <li class="menu__item"> 
                                <a href="#" class="menu__item-link">
                                <i class="menu__item-link-icon fa-solid fa-truck-moving"></i>
                                     <span>Nhà cung cấp</span>
                                </a>
                            </li>
                    </ul>

                    </div>
                   
                </div>
                <div class="grid_colum-10">
                        <header class="header-web">
                            <div class="header-navbar">
                                <ul class="header-navbar__list">
                                    <li class="header-navbar__list-item">
                                        <a href="" class="header-link">
                                            <i class=" header__navbar-icon fa-solid fa-question"></i>
                                                <Span>Trợ giúp</Span>
                                        </a>
                                    </li>
                                    <li class="header-navbar__list-item">
                                        <a href="" class="header-link">
                                            <i class=" header__navbar-icon fa-solid fa-bell"></i>
                                                <Span>Thông báo</Span>
                                        </a>
                                    </li>
                                    <li class="header-navbar__list-item">
                                        <a href="" class="header-link">
                                                <Span>Tài Khoản</Span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </header>
                        <div class="search-add-filter">
                            <div class="area-search">
                                    <input type="text" class="area-search__text" placeholder="Nhập thông tin tìm kiếm">
                                <button class="area-search__btn">
                                     <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                            
                            <div class="add-filter">
                                    <button class="add-item">
                                         <i class="add-item__icon fa-solid fa-plus"></i>
                                         <p class="add-item__text">Thêm ...</p>
                                    </button>
                                    <button class="filter-list">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                            </div>

                        </div>


                        <div class="conten">
                        <form method="post" action="">
           
                
            <table border="1" cellspacing="0" >
                <tr style="background: pink;">
                    <th>STT</th>
                    <th>Mã loại sách</th>
                    <th>Tên loại sách</th>
                    <th>Mô tả</th>
                </tr>
                <?php
                //b3: xử lý kết quả truy vấn(hiển thị mảng $data lên bảng)
                if(isset($data)&& $data!=null){
                    $i=0;
                    while($row=mysqli_fetch_array($data)){
                ?>
                    <tr>
                        <td><?php echo ++$i ?></td>
                        <td><?php echo $row['Maloai'] ?></td>
                        <td><?php echo $row['Tenloai'] ?></td>
                        <td><?php echo $row['Mota'] ?></td>
                        <td>
                            <a href="./Loaisach_sua.php?Maloai=<?php echo $row['Maloai'] ?>"><font color="red">Sửa</a>&nbsp;&nbsp;
                            <a href="./Loaisachxoa.php?Maloai=<?php echo $row['Maloai'] ?>">Xóa</a>
                        </td>
                    </tr>
                <?php        
                        }
                    }
                    //kết thúc b3
                ?>
            </table>
        </form>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // Lấy danh sách tất cả các menu cấp 1
        var menuItems = document.getElementsByClassName('menu__item');

for (var i = 0; i < menuItems.length; i++) {
  menuItems[i].addEventListener('click', function() {
    for (var j = 0; j < menuItems.length; j++) {
      menuItems[j].style.backgroundColor = "#373942";
      menuItems[j].style.borderLeft = "none";
    }
    // Đổi màu nền và viền trái cho menu cấp 1 khi được nhấp vào
    this.style.backgroundColor = "#202126";
    this.style.borderLeft = "3px solid #dce1ea";
  });
}
// Duyệt qua từng menu cấp 1 và thêm sự kiện click
for (var i = 0; i < menuItems.length; i++) {
  menuItems[i].addEventListener('click', function() {
    // Kiểm tra xem menu cấp 2 đã hiển thị hay chưa
    var subMenu = this.getElementsByClassName('sub-menu')[0];
    if (subMenu.style.display === 'block') {
      // Nếu menu cấp 2 đã hiển thị, đóng nó lại
      subMenu.style.display = 'none';
      
      subMenu.style.backgroundColor ="#373942";
    } else {
      // Nếu menu cấp 2 chưa hiển thị, hiển thị nó
      subMenu.style.display = 'block';
     
      subMenu.style.backgroundColor =" #202126";
    }
  });
}

    </script>
</body>
</html>