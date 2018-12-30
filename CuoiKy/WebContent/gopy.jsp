<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chu</title>
	<link rel="icon" href="Template/Frontend/image/logo.gif" type="image/gif" >
	<link rel="stylesheet" href="Template/Frontend/bootstrap/css/bootstrap.min.css">
	<script src="Template/Frontend/jquery/jquery.js"></script>
	<script src="Template/Frontend/popper/popper.js"></script>
	<script src="Template/Frontend/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="Template/Frontend/css/tkstyle.css">
	<link rel="stylesheet" type="text/css" href="Template/Frontend/font-awesome/css/font-awesome.min.css">
</head>
<body style="background-image: url(Template/Frontend/image/bg2.jpg);">

<nav class="navbar navbar-expand-md navbar-dark fixed-top ">
	<!-- Logo -->
	<a class="navbar-brand" href="Home.html">
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
            <a href="#"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px;"><i class="fa fa-user"></i> Sign Up</button></a>
            <a href="#"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-in"></i> Sign In</button></a>
        </div> 
	</div>
</nav>

	<div class="container noidung">
		<div style="color: #F2E14D">
			<div style="border-bottom-style: ridge; border-bottom-width: 2px; border-bottom-color: #5B5757; text-align: center; margin-top: 80px" >
				<span style="padding: 10px 20px 0px 20px; background-color: #5B5757; font-size: 20px">GÓP Ý/ THẮC MẮC</span>
			</div>
			
			<div style="margin: 0 auto; width: 1000px; text-align: center;">
				<p><h4>Bạn có muốn nhắn nhủ gì với LHD Star Cinema?</h4></p>
				<span style="margin: 0 auto">Mọi thắc mắc góp ý vui lòng liên hệ với chúng tôi: &nbsp
				<i class="fa fa-envelope"></i>&nbsp supports@dhlcinema.com.vn &nbsp&nbsp
				<i class="fa fa-phone-square"></i>&nbsp 19004447</span>
			</div>
			
			<form class="frmgopy">
				<table class="tbgopy">
					<tr style="height: 20px"></tr>
					<tr>
						<td style="width: 280px;"><input type="text" name="name" placeholder="Họ và tên" class="ingopy"></td>
						<td style="width: 280px;"><input type="text" name="email" placeholder="Email" class="ingopy"></td>
						<td style="width: px"><input type="text" name="sdt" placeholder="Số điện thoại"class="ingopy" ></td>
					</tr>

					<tr>
						<td colspan="3"><textarea rows="6" style="width: 800px; margin-top: 20px" placeholder="Nội dung"></textarea></td>
					</tr>
					
					<tr style="height: 20px"></tr>
					<tr>
						<td colspan="2" >
							<label style="padding: 5px 10px 5px 10px; background-color: red; letter-spacing: 6px; font-size: 18px; text-decoration:line-through; " >74DK94</label>
							<button class=""><i class="fa fa-undo" ></i></button>&nbsp &nbsp
							<input type="text" name="capt" placeholder="Nhập mã captcha" >
						</td>
						<td>
							<input type="submit" name="gui" value="Gửi" class="btn btn-success" style="float: right;width: 100px">
						</td>
					</tr>
				</table>
			</form>
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
				COPYRIGHT © LHDCINEMA.COM - ALL RIGHTS RESERVED. 
			</p>
		</div>

		<div class="card-contact">
			<a href="#"><i class="fa fa-facebook-square fa-2x" style="color:#2230EA; margin-bottom: 5px;"><span class="cnt-text">fb.com/lhdcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-youtube-square fa-2x" style="color:#E42626; margin-bottom: 5px;"><span class="cnt-text">youtube.com/LHDcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-instagram fa-2x" style="color:#E32B63"><span class="cnt-text">instagram.com/LHDcinevina</span></i></a>
		</div>
	</footer>
</body>
</html>