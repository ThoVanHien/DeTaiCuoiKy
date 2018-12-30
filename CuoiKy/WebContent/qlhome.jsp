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
				<li class="active"><a href="qlhome.jsp"> 
					<i class="fa fa-home"></i>Home
				</a></li>
				<li><a href="RPControl"><i class="fa fa-building"></i> Rạp Phim</a></li>
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
					<h2 class="no-margin-bottom">Dashboard</h2>
				</div>
			</header>
			
			<section class="dashboard-counts no-padding-bottom">
				<div class="container-fluid">
					<div class="row bg-white has-shadow">
						<!-- Item -->
						<div class="col-xl-3 col-sm-6">
							<div class="item d-flex align-items-center">
								<div class="icon bg-violet">
									<i class="icon-user"></i>
								</div>
								<div class="title">
									<span>New<br>Clients
									</span>
									<div class="progress">
										<div role="progressbar" style="width: 25%; height: 4px;"
											aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"
											class="progress-bar bg-violet"></div>
									</div>
								</div>
								<div class="number">
									<strong>25</strong>
								</div>
							</div>
						</div>
						<!-- Item -->
						<div class="col-xl-3 col-sm-6">
							<div class="item d-flex align-items-center">
								<div class="icon bg-red">
									<i class="icon-padnote"></i>
								</div>
								<div class="title">
									<span>Work<br>Orders
									</span>
									<div class="progress">
										<div role="progressbar" style="width: 70%; height: 4px;"
											aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
											class="progress-bar bg-red"></div>
									</div>
								</div>
								<div class="number">
									<strong>70</strong>
								</div>
							</div>
						</div>
						<!-- Item -->
						<div class="col-xl-3 col-sm-6">
							<div class="item d-flex align-items-center">
								<div class="icon bg-green">
									<i class="icon-bill"></i>
								</div>
								<div class="title">
									<span>New<br>Invoices
									</span>
									<div class="progress">
										<div role="progressbar" style="width: 40%; height: 4px;"
											aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
											class="progress-bar bg-green"></div>
									</div>
								</div>
								<div class="number">
									<strong>40</strong>
								</div>
							</div>
						</div>
						<!-- Item -->
						<div class="col-xl-3 col-sm-6">
							<div class="item d-flex align-items-center">
								<div class="icon bg-orange">
									<i class="icon-check"></i>
								</div>
								<div class="title">
									<span>Open<br>Cases
									</span>
									<div class="progress">
										<div role="progressbar" style="width: 50%; height: 4px;"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											class="progress-bar bg-orange"></div>
									</div>
								</div>
								<div class="number">
									<strong>50</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			
			<section class="dashboard-header">
				<div class="container-fluid">
					<div class="row">
						<!-- Statistics -->
						<div class="statistics col-lg-3 col-12">
							<div
								class="statistic d-flex align-items-center bg-white has-shadow">
								<div class="icon bg-red">
									<i class="fa fa-tasks"></i>
								</div>
								<div class="text">
									<strong>234</strong><br>
									<small>Applications</small>
								</div>
							</div>
							<div
								class="statistic d-flex align-items-center bg-white has-shadow">
								<div class="icon bg-green">
									<i class="fa fa-calendar-o"></i>
								</div>
								<div class="text">
									<strong>152</strong><br>
									<small>Interviews</small>
								</div>
							</div>
							<div
								class="statistic d-flex align-items-center bg-white has-shadow">
								<div class="icon bg-orange">
									<i class="fa fa-paper-plane-o"></i>
								</div>
								<div class="text">
									<strong>147</strong><br>
									<small>Forwards</small>
								</div>
							</div>
						</div>
						<!-- Line Chart            -->
						<div class="chart col-lg-6 col-12">
							<div
								class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
								<canvas id="lineCahrt"></canvas>
							</div>
						</div>
						<div class="chart col-lg-3 col-12">
							<!-- Bar Chart   -->
							<div class="bar-chart has-shadow bg-white">
								<div class="title">
									<strong class="text-violet">95%</strong><br>
									<small>Current Server Uptime</small>
								</div>
								<canvas id="barChartHome"></canvas>
							</div>
							<!-- Numbers-->
							<div
								class="statistic d-flex align-items-center bg-white has-shadow">
								<div class="icon bg-green">
									<i class="fa fa-line-chart"></i>
								</div>
								<div class="text">
									<strong>99.9%</strong><br>
									<small>Success Rate</small>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>