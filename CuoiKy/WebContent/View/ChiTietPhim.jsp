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
	<link rel="stylesheet" href="Template/Frontend/css/hstyle.css">
	<link rel="stylesheet" type="text/css" href="Template/Frontend/font-awesome/css/font-awesome.min.css">
</head>
<body style="background-image: url(Template/Frontend/image/bgr.png)">
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
	           <button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px;"><i class="fa fa-user"></i>  <a href="#">Văn Hiền</a></button>
	            <a href="dangky.html"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-out"></i>Thoát</button></a>
	        </div> 
		</div>
	</nav>
	
	<div class="container">
		<div style="margin-top: 70px">
			<div class="row">
				<h1 style="font-family: 'Bevan', cursive;color: white;margin-left: 470px;">
					CHI TIẾT PHIM
				</h1>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-3 zoom">
					<img src="Template/Frontend/image/quycothuake.jpg" alt="" class="img-fluid" style="height: 550px;border-radius: 20px 20px 0px 20px">
				</div>
				<div class="col-sm-9" style="color: white;font-family: 'Futurab'; border-style: dotted;border-radius: 20px 20px 20px 0px">
					
					<h3 class="mt-1">QUÝ CÔ THỪA KẾ</h3>

					<p><span style="font-family: 'Roboto', sans-serif;color: #a6b2c9;">
						Nhung, một cô tiểu thư đỏng đảnh, không biết cách đối xử với những người xung quanh, không kỹ năng về nữ công gia chánh. Để giúp cháu gái mình trở thành một người tốt hơn, bà ngoại của Nhung lên kế hoạch để giúp cháu gái trở thành người tốt hơn.
					</span></p>
					<table class="table table-inverse">
						<tbody>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Phân Loại</span></td>
								<td><span style="font-size: 17px; font-weight: bold;color: #f8090f;">C13 - PHIM DÀNH CHO KHÁN GIẢ TỪ 13 TUỔI TRỞ LÊN</span></td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Phân Loại</span></td>
								<td><span style="font-family: 'Roboto', sans-serif;">Hoàng Duy</span></td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Diễn viên</span></td>
								<td>
									<span style="font-family: 'Roboto', sans-serif;">
										Ngân Khánh, Song Luân, Sỹ Thanh, Quang Minh, Hồng Đào
									</span>
								</td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Thể loại</span></td>
								<td><span style="font-family: 'Roboto', sans-serif;">Romance</span></td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Khởi chiếu</span></td>
								<td><span style="font-family: 'Roboto', sans-serif;">2018-10-19</span></td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Thời lượng</span></td>
								<td><span style="font-family: 'Roboto', sans-serif;">110 phút</span></td>
							</tr>
							<tr>
								<td><span style="font-family: 'Roboto', sans-serif;">Ngôn ngữ</span></td>
								<td><span style="font-family: 'Roboto', sans-serif;">Phụ đề tiếng Việt</span></td>
							</tr>
						</tbody>
					</table>
					<a href=""><button type="button" class="btn btn-primary">XEM TRAILER</button></a>
					<a href="DatVeController"><button type="button" class="btn btn-success">ĐẶT VÉ NGAY</button></a>
				</div>

			</div>
			<br>
			
		</div>
	</div>
	
	<footer class="footer" >
		<div class="rule">
			<ul class="list-inline">
				<a href="gioithieu.html"><li class="list-inline-item">Giới thiệu</li></a>
				<a href="gopy.html"><li class="list-inline-item">Chăm sóc khách hàng</li></a>
				<a href="dieukhoan.html"><li class="list-inline-item">Điều khoản sử dụng</li></a>
				<a href="tuyendung.html"><li class="list-inline-item">Tuyển dụng</li></a>
				<a href="quangcao.html"><li class="list-inline-item">Quảng cáo</li></a>
				
			</ul>
		</div>

		<div class="card-info">
			<h4>DHL CINEMA</h4>
			<p>
				DHL CINEMA VIETNAM<br/>
				Phòng 801, toà nhà Vietnam Business, 57-59 Hồ Tùng Mậu, Quận 1, TPHCM.<br/>
				COPYRIGHT © DHLCINEMA.COM - ALL RIGHTS RESERVED. 
			</p>
		</div>

		<div class="card-contact">
			<a href="fb.com"><i class="fa fa-facebook-square fa-2x" style="color:#2230EA; margin-bottom: 5px;"><span class="cnt-text">fb.com/dhlcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-youtube-square fa-2x" style="color:#E42626; margin-bottom: 5px;"><span class="cnt-text">youtube.com/DHLcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-instagram fa-2x" style="color:#E32B63"><span class="cnt-text">instagram.com/DHLcinevina</span></i></a>
		</div>
	</footer>
</body>
</html>