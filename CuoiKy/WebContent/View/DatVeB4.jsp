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
	           <button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px;"><i class="fa fa-user"></i>  <a href="AccountController">Văn Hiền</a></button>
	            <a href="HomeForward"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-out"></i>Thoát</button></a>
	        </div> 
		</div>
	</nav>
	
	
	<div class="container noidung">
		<div class="thanhtoan">
			<h4 style="color: yellow; margin-top: 12px; margin-bottom: 10px">VUI LÒNG THANH TOÁN</h4>
			<form>
				<table>
					<tr>
						<td style="width: 200px;">Hình thức thanh toán</td>
						<td style="width: 300px;">
							<select>
								<option>Momo</option>
								<option>ZaloPay-ATM Card</option>
								<option>ZaloPay-Visa/Master/JCB</option>
								<option>OnePay-ATM Card</option>
							</select>
						</td>
					</tr>

					<tr>
						<td>Họ và tên</td>
						<td><input type="text" name="ten" value="Văn Hiền" required=""></td>
					</tr>

					<tr>
						<td>Email</td>
						<td><input type="text" name="email" value="Thovanhien@gmail.com" required=""></td>
					</tr>

					<tr>
						<td>Số điện thoại</td>
						<td><input type="text" name="sdt" value="0967482837" required=""></td>
					</tr>

					<tr>
					
						<td></td>
						<td>
							<a href="datve3.html"><button class="btn btn-danger" >QUAY LẠI</button></a>
							<button class="btn btn-danger" data-toggle="modal" data-target="#myModal">THANH TOÁN</button>
						</td>
					
					</tr>
				</table>
			</form>
		</div>
		<div class="modal" id="myModal" style="margin-top: 120px">
			    <div class="modal-dialog">
			      <div class="modal-content" >
			      
			        <!-- Modal Header -->
			        <div class="modal-header" >
			          <h4 class="modal-title" style="color: black">Thanh toán thành công</h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        
			        <!-- Modal footer -->
			        <div class="modal-footer">
			          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			        </div>
			        
			      </div>
			    </div>
			  </div>
		<div class="total">
			<img src="Template/Frontend/image/f2.jpg">
			<div class="totaltext">
				<h5>Quý cô thừa kế</h5>
				<span>Rạp: LHD Star Q9 - Rạp 3</span><br/>
				<span>Thời gian: 13:20 30/12/2018</span><br/>
				<span>Combo: 1 bắp + 1 nước </span><br/>
				<span>Số ghế: 2 </span><br/>
				<span>Tổng:202000 </span>
			</div>
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