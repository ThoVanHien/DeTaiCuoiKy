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
	<link rel="stylesheet" href="Template/Frontend/css/lstyle.css">
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

	<div class="container noidung">
		<div class="chonve">
			<h4 style="color: yellow; margin-top: 12px; margin-bottom: 10px">CHỌN VÉ/THỨC ĂN</h4>
			<table>
				<tr style="background-color: #884A13; height: 46px">
					<td style="width: 350px;" id="pdl">Loại vé</td>
					<td style="width: 150px">Giá vé (VNĐ)</td>
					<td style="width: 150px">Số lượng</td>
					<td style="width: 150px;" id="pdr">Tổng (VNĐ)</td>
				</tr>

				<tr>
					<td id="pdl">Vé 2D</td>
					<td>70.000</td>
					<td><input class="nbpl" type="number" name="quantity" id="ve" value="0" onchange="tinhtienVe()"></td>
					<td id="pdr"><span id="tienve"></span></td>
				</tr>

				<tr style="background-color: #884A13; height: 46px">
					<td id="pdl">Combo</td>
					<td>Giá vé (VNĐ)</td>
					<td>Số lượng</td>
					<td id="pdr">Tổng (VNĐ)</td>
				</tr>

				<tr>
					<td id="pdl">Combo1<br/>1 Bắp + 1 Nước (PEPSI/7UP/MIRINDA)</td>
					<td>62.000</td>
					<td><input class="nbpl" type="number" id="ve2" onchange="tinhtienCombo()" name="quantity" value="0"></td>
					<td id="pdr"><span id="tienve2"></span></td>
				</tr>

				<tr>
					<td id="pdl">Combo2<br/>1 Bắp + 2 Nước (PEPSI/7UP/MIRINDA)</td>
					<td>81.000</td>
					<td><input class="nbpl" type="number" name="quantity" value="0"></td>
					<td id="pdr">0</td>
				</tr>

				<tr>
					<td id="pdl">Combo3<br/>1 Bắp + 1 Chai nước tinh khiết</td>
					<td>56.000</td>
					<td><input class="nbpl" type="number" name="quantity" value="0"></td>
					<td id="pdr">0</td>
				</tr>

				<tr>
					<td id="pdl">Combo4<br/>1 Bắp + 2 Chai nước tinh khiết</td>
					<td>72.000</td>
					<td><input class="nbpl" type="number" name="quantity" value="0"></td>
					<td id="pdr">0</td>
				</tr>
			</table>
		</div>

		<div class="total">
			<img src="Template/Frontend/image/f2.jpg">
			<div class="totaltext">
				<h5>Quý cô thừa kế</h5>
				<span>Rạp: LHD Star Q9 - Rạp 3</span><br/>
				<span>Thời gian: 13:20 30/12/2018</span><br/>
				<span>Combo: <span id="combo"></span> </span><br/>
				<span>Tổng: <span id="tienve3"></span> VND</span>
			</div>
			<a href="DatVeB3Controller"><button class="btn btn-danger" style="margin-bottom: 10px">TIẾP TỤC</button></a>
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
<script>
function tinhtienVe(){
	var tien = document.getElementById("ve").value;
	var tien2 = document.getElementById("ve2").value;
	var d=tien*70000;
	var d2=tien2*62000;
	document.getElementById('tienve').innerHTML = d;
	document.getElementById('tienve2').innerHTML = d2;
	document.getElementById('tienve3').innerHTML = d+d2;
}
function tinhtienCombo(){
	var tien = document.getElementById("ve").value;
	var tien2 = document.getElementById("ve2").value;
	var d=tien*70000;
	var d2=tien2*62000;
	document.getElementById('tienve').innerHTML = d;
	document.getElementById('tienve2').innerHTML = d2;
	document.getElementById('tienve3').innerHTML = d+d2;
	document.getElementById('combo').innerHTML = "1 Bắp + 1 Nước";
}
</script>
</body>
</html>