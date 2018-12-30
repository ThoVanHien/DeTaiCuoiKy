<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chu</title>
	<link rel="stylesheet" href="Template/Frontend/bootstrap/css/bootstrap.min.css">
	<script src="Template/Frontend/jquery/jquery.js"></script>
	<script src="Template/Frontend/popper/popper.js"></script>
	<script src="Template/Frontend/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="Template/Frontend/css/dstyle.css">
	<link rel="stylesheet" type="text/css" href="Template/Frontend/font-awesome/css/font-awesome.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top ">
		<!-- Logo -->
		<a class="navbar-brand" href="HomeForward">
			<img src="Template/Frontend/image/logo2.png" style="width: 80px;height: 20px">
		</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto " id="bor">
				<li class="nav-item">
					<a class="nav-link" id="lik" href="PhimController" style="border-radius: 18px 0 0 18px; ">PHIM<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lik" href="RapPhimController" >RẠP PHIM</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lik" href="LichChieuController" >LỊCH CHIẾU</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lik" href="SukienController" >SỰ KIỆN</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="lik" href="ThanhVienController" style="border:none; border-radius: 0 18px 18px 0;">THÀNH VIÊN</a>
				</li>
			</ul>

			<form class="form-inline mt-2 mt-md-0" style="margin-right: 40px">
				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search "></i></button>
			</form>

			<div class="btn-group" role="group" aria-label="Basic example" style="margin-right: 20px">
	           <a href="DangNhapController"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px;"><i class="fa fa-user"></i> Sign Up</button></a>
	            <a href="dangky.html"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-in"></i> Sign In</button></a>
	        </div> 
		</div>
	</nav>

	<div class="container">
		<div>
		<ul class="nav nav-pills nav-justified" id="container-tab-phim">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="pill" href="#phimdc">PHIM ĐANG CHIẾU</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="pill" href="#phimsc">PHIM SẮP CHIẾU</a>
			  </li>
		</ul><br>
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane container active" id="phimdc">
			  		<div class="phim-col">
			  		<c:forEach items="${lHienThiPDC}" var="l"> 
			  		<c:if test="${ l.maphim < 5}">		
						<div id="phim">
							<div class="card">
					            <img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                <div class="card-img-overlay"> 
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                </div>
					        </div>
							<h3><a href="datve.jsp">${l.tenphim}</a><br>Khởi chiếu ngày<br>${l.khoichieu}</h3>							
						</div>
					</c:if>	
					</c:forEach>							
					</div>
					
					
					<div class="phim-col">
					<c:forEach items="${lHienThiPDC}" var="l"> 
					<c:if test="${l.maphim > 4}">				
						<div id="phim">
							<div class="card">
					            <img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                <div class="card-img-overlay"> 
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                </div>
					        </div>
							<h3><a href="datve.jsp">${l.tenphim}</a><br>Khởi chiếu ngày<br>${l.khoichieu}</h3>							
						</div>
					</c:if>	
					</c:forEach>									
					</div>					
				</div>			
			  	<div class="tab-pane container fade" id="phimsc">
			  		<div class="phim-col">
			  		<c:forEach items="${lHienThiPSC}" var="l"> 
			  		<c:if test="${ l.maphim < 11}">		
						<div id="phim">
							<div class="card">
					            <img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                <div class="card-img-overlay"> 
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                </div>
					        </div>
							<h3><a href="datve.jsp">${l.tenphim}</a><br>Khởi chiếu ngày<br>${l.khoichieu}</h3>							
						</div>
					</c:if>	
					</c:forEach>							
					</div>
					
					
					<div class="phim-col">
					<c:forEach items="${lHienThiPSC}" var="l"> 
					<c:if test="${l.maphim > 10}">				
						<div id="phim">
							<div class="card">
					            <img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                <div class="card-img-overlay"> 
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    <button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                </div>
					        </div>
							<h3><a href="datve.jsp">${l.tenphim}</a><br>Khởi chiếu ngày<br>${l.khoichieu}</h3>							
						</div>
					</c:if>	
					</c:forEach>									
					</div>	
			  	</div>
			 </div>
		</div>
	</div>

	



	<footer class="footer" >
		<div class="rule">
			<ul class="list-inline">
				<a href="gioithieu.jsp"><li class="list-inline-item">Giới thiệu</li></a>
				<a href="gopy.jsp"><li class="list-inline-item">Chăm sóc khách hàng</li></a>
				<a href="dieukhoan.jsp"><li class="list-inline-item">Điều khoản sử dụng</li></a>
				<a href="tuyendung.jsp"><li class="list-inline-item">Tuyển dụng</li></a>
				<a href="quangcao.jsp"><li class="list-inline-item">Quảng cáo</li></a>
				
			</ul>
		</div>

		<div class="card-info">
			<h4>LHD CINEMA</h4>
			<p>
				LHD CINEMA VIETNAM<br/>
				Phòng 801, toà nhà Vietnam Business, 57-59 Hồ Tùng Mậu, Quận 1, TPHCM.<br/>
				COPYRIGHT © LHD CINEMA.COM - ALL RIGHTS RESERVED. 
			</p>
		</div>

		<div class="card-contact">
			<a href="fb.com"><i class="fa fa-facebook-square fa-2x" style="color:#2230EA; margin-bottom: 5px;"><span class="cnt-text">fb.com/LHDcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-youtube-square fa-2x" style="color:#E42626; margin-bottom: 5px;"><span class="cnt-text">youtube.com/LHDcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-instagram fa-2x" style="color:#E32B63"><span class="cnt-text">instagram.com/LHDcinevina</span></i></a>
		</div>
	</footer>
</body>
</html>