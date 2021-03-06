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
				<li class="active"><a href="RPControl"><i class="fa fa-building"></i> Rạp Phim</a></li>
				<li><a href="PCControl"><i class="fa fa-windows"></i>Phòng Chiếu</a></li>
				<li><a href="PhimControl"><i class="fa fa-film"></i>Phim</a></li>
				<li><a href="LCControl"><i class="fa fa-calendar"></i>Lịch Chiếu</a></li>
				<li><a href="#exampledropdownDropdown" aria-expanded="false"
					data-toggle="collapse"> <i class="fa fa-cog"></i>Tác vụ khác
				</a>
					<ul id="exampledropdownDropdown" class="collapse list-unstyled">
						<li><a href="TAControl"> <i class="fa fa-glass"></i>Thức Ăn Nhanh
						</a></li>
						<li><a href="SKControl"> <i class="fa fa-gift"></i>Sự Kiện
						</a></li>
						<li><a href="PHControl"> <i class="fa fa-comments"></i>Phản Hồi</a>
						</li>
					</ul>
				</a>
				<li><a href="TVControl"> <i class="fa fa-users"></i>Thành Viên
					</a></li>
					<li><a href="TKControl"> <i class="fa fa-address-book"></i>Tài Khoản
					</a></li>
			</ul>
		</nav>
		<div class="content-inner">
			<header class="page-header">
				<div class="container-fluid">
					<h2 class="no-margin-bottom">Danh Sách Rạp Phim</h2>
				</div>
			</header>

			<section class="dashboard-counts no-padding-bottom">
				<div class="container-fluid">
					<div class="row bg-white has-shadow" style="float:none">

						<div style="width:100%">
							<span>Tìm kiếm: </span> 
								<select class="tim">
									<option >Tìm theo tên rạp</option>
									<option >Tìm theo mã rạp</option>
								</select> 
								<input type="text" name="keyword" style="width: 200px; height: 30px">	
								<button class="bn btn-success" ><i class="fa fa-search"></i></button>
								<a href="new" style="float:right;"><button class="bn btn-primary" style="float:right">Thêm mới</button></a>					
						</div>
						
						<table class="datahome">
							<tr
								style="background-color: #C9C1C1; color: #373ED3; font-weight: bold;">
								<td >Mã rạp</td>
								<td >Tên rạp</td>
								<td >Địa chỉ</td>
								<td >Khu vực</td>
								<td >Hotline</td>
								<td style="width:110px"></td>
							</tr>
							
							<c:forEach var="rp" items="${listrp}">
							<tr>
								<td>${rp.marap}</td>
								<td class="txt-jus">${rp.tenrap}</td>
								<td class="txt-jus">${rp.diachi}</td>
								<td>${rp.khuvuc}</td>
								<td>${rp.sdt}</td>
								
								<td>
								<a href="edit?marap=<c:out value='${rp.marap}' />" title="Sửa"><i class="fa fa-edit"></i></a>&nbsp
									<a href="delete?marap=<c:out value='${rp.marap}' />" title="Xoá"><i class="fa fa-times"></i></a>&nbsp <input
									type="checkbox" name=""></td>
							</tr>
							</c:forEach>
							
						</table>

					</div>
				</div>
			</section>
		
		</div>
	
		</div>
</body>
</html>