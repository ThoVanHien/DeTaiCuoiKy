<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LHD Cinema - Trang quản trị</title>
<link rel="icon" href="Template/Frontend/image/logo.gif" type="image/gif">
<link rel="stylesheet" href="Template/Frontend/bootstrap/css/bootstrap.min.css">
<script src="Template/Frontend/jquery/jquery.js"></script>
<script src="Template/Frontend/popper.js/popper.js"></script>
<script src="Template/Frontend/bootstrap/js/bootstrap.min.js"></script>
<script src="Template/Frontend/chart.js/Chart.min.js"></script>
<script src="Template/Frontend/chart.js/charts-home.js"></script>
<link rel="stylesheet" href="Template/Frontend/css/qlstyle.css">
<link rel="stylesheet" href="Template/Frontend/css/fontastic.css">
<link rel="stylesheet" href="Template/Frontend/css/style.default.css">
<link rel="stylesheet" type="text/css" href="Template/Frontend/font-awesome/css/font-awesome.min.css">
</head>
<body>
	<header class="header">
		<nav class="navbar">
			<div class="container-fluid">
				<div
					class="navbar-holder d-flex align-items-center justify-content-between">
					<!-- Navbar Header-->
					<div class="navbar-header">
						<!-- Navbar Brand -->
						<a href="index.html" class="navbar-brand d-none d-sm-inline-block">
							<div class="brand-text d-none d-lg-inline-block">
								<span></span><strong>LHD STAR CINEMA</strong>
							</div>
							<div class="brand-text d-none d-sm-inline-block d-lg-none">
								<strong>BD</strong>
							</div>
						</a>
						<!-- Toggle Button-->
						<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
					</div>
					<!-- Navbar Menu -->
					<ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
						<!-- Notifications-->
						<li class="nav-item dropdown"><a id="notifications"
							rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" class="nav-link"><i
								class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
							<ul aria-labelledby="notifications" class="dropdown-menu">
								<li><a rel="nofollow" href="#" class="dropdown-item">
										<div class="notification">
											<div class="notification-content">
												<i class="fa fa-envelope bg-green"></i>You have 6 new
												messages
											</div>
											<div class="notification-time">
												<small>4 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#" class="dropdown-item">
										<div class="notification">
											<div class="notification-content">
												<i class="fa fa-twitter bg-blue"></i>You have 2 followers
											</div>
											<div class="notification-time">
												<small>4 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#" class="dropdown-item">
										<div class="notification">
											<div class="notification-content">
												<i class="fa fa-upload bg-orange"></i>Server Rebooted
											</div>
											<div class="notification-time">
												<small>4 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#" class="dropdown-item">
										<div class="notification">
											<div class="notification-content">
												<i class="fa fa-twitter bg-blue"></i>You have 2 followers
											</div>
											<div class="notification-time">
												<small>10 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#"
									class="dropdown-item all-notifications text-center"> <strong>view
											all notifications </strong></a></li>
							</ul></li>
						<!-- Messages                        -->
						<li class="nav-item dropdown"><a id="messages" rel="nofollow"
							data-target="#" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" class="nav-link"><i
								class="fa fa-envelope-o"></i><span
								class="badge bg-orange badge-corner">10</span></a>
							<ul aria-labelledby="notifications" class="dropdown-menu">
								<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
										<div class="msg-profile">
											<img src="image/avatar-1.jpg" alt="..."
												class="img-fluid rounded-circle">
										</div>
										<div class="msg-body">
											<h3 class="h5">Jason Doe</h3>
											<span>Sent You Message</span>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
										<div class="msg-profile">
											<img src="image/avatar-2.jpg" alt="..."
												class="img-fluid rounded-circle">
										</div>
										<div class="msg-body">
											<h3 class="h5">Frank Williams</h3>
											<span>Sent You Message</span>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
										<div class="msg-profile">
											<img src="image/avatar-3.jpg" alt="..."
												class="img-fluid rounded-circle">
										</div>
										<div class="msg-body">
											<h3 class="h5">Ashley Wood</h3>
											<span>Sent You Message</span>
										</div>
								</a></li>
								<li><a rel="nofollow" href="#"
									class="dropdown-item all-notifications text-center"> <strong>Read
											all messages </strong></a></li>
							</ul></li>
						<!-- Logout    -->
						<li class="nav-item"><a href="login.html"
							class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i
								class="fa fa-sign-out"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="page-content d-flex align-items-stretch">
		<nav class="side-navbar">
			<!-- Sidebar Header-->
			<div class="sidebar-header d-flex align-items-center">
				<div class="avatar">
					<a href="qlinfo.jsp"><img src="Template/Frontend/image/vh.jpg" alt="..."
						class="img-fluid rounded-circle"></a>
				</div>
				<div class="title">
					<a href="qlinfo.jsp" style="text-decoration:none"><h1 class="h4">Văn Hiền</h1></a>
					<p>Quản trị viên</p>
				</div>
			</div>
			<!-- Sidebar Navidation Menus-->
			<ul class="list-unstyled">
				<li ><a href="qlhome.jsp"> 
					<i class="fa fa-home"></i>Home
				</a></li>
				<li><a href="qlrapphim.jsp"><i class="fa fa-building"></i> Rạp Phim</a></li>
				<li><a href="qlphongchieu.jsp"><i class="fa fa-windows"></i>Phòng Chiếu</a></li>
				<li><a href="qlphim.jsp"><i class="fa fa-film"></i>Phim</a></li>
				<li><a href="qllichchieu.jsp"><i class="fa fa-calendar"></i>Lịch Chiếu</a></li>
				<li><a href="#exampledropdownDropdown" aria-expanded="false"
					data-toggle="collapse"> <i class="fa fa-cog"></i>Tác vụ khác
				</a>
					<ul id="exampledropdownDropdown" class="collapse list-unstyled show">
						<li><a href="qlthucan.jsp"> <i class="fa fa-glass"></i>Thức Ăn Nhanh
						</a></li>
						<li class="active"><a href="qlsukien.jsp"> <i class="fa fa-gift"></i>Sự Kiện
						</a></li>
						<li><a href="qlphanhoi.jsp"> <i class="fa fa-comments"></i>Phản Hồi</a>
						</li>
					</ul>
				</a>
				<li><a href="qlthanhvien.jsp"> <i class="fa fa-users"></i>Thành Viên
					</a></li>
					<li><a href="qltaikhoan.jsp"> <i class="fa fa-address-book"></i>Tài Khoản
					</a></li>
			</ul>
		</nav>
		
		<div class="content-inner">
			<header class="page-header">
				<div class="container-fluid">
					<h2 class="no-margin-bottom">Danh Sách Sự Kiện</h2>
				</div>
			</header>

			<section class="dashboard-counts no-padding-bottom">
				<div class="container-fluid">
					<div class="row bg-white has-shadow" style="float:none">
						<!-- <form>
							<table class="editphim" cellpadding="5">
								<tr>
									<td><span>Tên sự kiện: </span></td>
									<td><input type="input" name="tenphim"
										value=""></td>
								</tr>

								<tr>
									<td><span>Thời gian: </span></td>
									<td><input type="date" name="timestar" value=""
										style="width: 150px">&nbsp đến &nbsp<input type="date"
										name="timefinish" value="" style="width: 150px"></td>
								</tr>

								<tr>
									<td><span>Hình ảnh: </span></td>
									<td style="vertical-align: middle;">
										<div id="myfileupload">
											<input type="file" id="uploadfile" name="ImageUpload"
												onchange="readURL(this);" />
											     Name  mà server request về sẽ là ImageUpload

										</div>
										<div id="thumbbox">
											<img height="150" width="150" alt="Thumb image"
												id="thumbimage" style="display: none" /> <a
												class="removeimg" href="javascript:"></a>
										</div>
										<div id="boxchoice" style="float:left">
											<a href="javascript:" class="Choicefile" style="text-decoration: none">Chọn file</a>
										</div>
										 <label class="filename" style="margin-left:10px"></label>
									</td>

								</tr>

								<tr>
									<td style="height: 20px"></td>
								</tr>

								<tr>
									<td><span>Nội dung: </span></td>
									<td><textarea cols="80" rows="8">Khách hàng được hưởng ưu đãi sau khi mua 2 vé: Chỉ 70K một phần Couple Combo + Chỉ 50K một phần Couple Combo </textarea>
									</td>
								</tr>

								<tr>
									<td></td>
									<td>
										<input type="submit" class="btn btn-secondary" style="width: 100px" name="quit" value="Trở về">
										<input type="submit" class="btn btn-primary"
										style="width: 100px" name="save" value="Lưu lại">
									</td>
								</tr>
							</table>
						</form> -->
						
						
	<c:if test="${sk != null }">
		<form action="update" method="post">
	</c:if>
	<c:if test="${sk == null }">
	<form action="insert" method="post">
	</c:if>
		<table class="editphim" cellpadding="5">
		<c:if test="${sk != null}">
			<input type="hidden" name="mask" value="<c:out value='${sk.mask}' />"/>
		</c:if>
			<tr>
				<td><span>Tên sự kiện </span></td>
				<td><input type="text" name="tensk" value="<c:out value="${sk.tensk }"/>"></td>
			</tr>
			
			<tr>
				<td><span>Nội dung</span></td>
				<td><input type="text" name="noidung" value="<c:out value="${sk.noidung }"/>" style="width:800px"></td>
			</tr>
			
			<tr>
				<td><span>Ảnh</span></td>
				<td>
					<c:if test="${sk != null }">
						<img src="${sk.anh}" alt="image">
						<input type="file" name="hinh" accept="image/png, image/jpeg">
					</c:if> <c:if test="${sk == null }">
						<input type="file" name="hinh" accept="image/png, image/jpeg">
					</c:if>
				</td>
			</tr>
			
			<tr>
				<td><span>Tg bắt đầu</span></td>
				<td><input type="date" name="tgbatdau" value="${sk.tgbatdau }" style="width:200px"></td>
			</tr>
			
			<tr>
				<td><span>Tg kết thúc</span></td>
				<td><input type="date" name="tgketthuc" value="${sk.tgketthuc }" style="width:200px"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" class="btn btn-primary"
										style="width: 100px" name="save" value="Lưu lại">
				</td>
			</tr>
		</table>
	</form>
					</div>
				</div>
			</section>
		
		</div>
	
		</div>
<script type="text/javascript">
  function  readURL(input,thumbimage) {
   if  (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
   var  reader = new FileReader();
    reader.onload = function (e) {
    $("#thumbimage").attr('src', e.target.result);
     }
     reader.readAsDataURL(input.files[0]);
    }
    else  { // Sử dụng cho IE
      $("#thumbimage").attr('src', input.value);
  
    }
    $("#thumbimage").show();
    $('.filename').text($("#uploadfile").val());
    $('.Choicefile').css('background', '#C4C4C4');
    $('.Choicefile').css('cursor', 'default');
    $(".removeimg").show();
    $(".Choicefile").unbind('click'); //Xóa sự kiện  click trên nút .Choicefile
          
  }
  $(document).ready(function () {
   $(".Choicefile").bind('click', function  () { //Chọn file khi .Choicefile Click
    $("#uploadfile").click();
               
   });
   $(".removeimg").click(function () {//Xóa hình  ảnh đang xem
      $("#thumbimage").attr('src', '').hide();
      $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
      $(".removeimg").hide();
      $(".Choicefile").bind('click', function  () {//Tạo lại sự kiện click để chọn file
       $("#uploadfile").click();
      });
      $('.Choicefile').css('background','#0877D8');
      $('.Choicefile').css('cursor', 'pointer');
      $(".filename").text("");
    });
   })
</script>
</body>
</html>