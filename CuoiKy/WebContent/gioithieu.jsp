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
		<div class="gthieu">
			<div style="border-bottom-style: ridge; border-bottom-width: 2px; border-bottom-color: #5B5757; text-align: center; margin-top: 80px" >
				<span style="padding: 10px 20px 0px 20px; background-color: #5B5757; font-size: 20px">Giới thiệu</span>
			</div>
			

			<div style="margin: 10px auto; width: 1000px; text-align: center;">
				<p><h4>GIỚI THIỆU HỆ THỐNG RẠP CHIẾU PHIM</h4></p>
					<br/>
				<img src="Template/Frontend/image/lhdqtanbinh.jpg" style="width: 1000px; height: 600px; margin: 0 auto">
			</div>
			
			

			<p>
			Kính chào quý khách,<br/>

			Lời đầu, xin chân thành cảm ơn sự tin tưởng và ủng hộ của quý khách dành cho hệ thống rạp chiếu phim LHD Star Cinema Việt Nam.</p>
			
			<p>
			Thành lập từ năm 2012, với cụm Rạp đầu tiên tọa lạc tại LHD Star Cinema Quận 9 - thành phố Hồ Chí Minh, đến hết tháng 10/2018, LHD Star Cinema Việt Nam đã mở được 8 cụm rạp chiếu phim quy mô, sử dụng công nghệ tiên tiến bậc nhất tại các khu vực: Hà Nội, Thành phố Hồ Chí Minh, Đà Nẵng, Cần Thơ với hệ thống phòng chiếu phim cao cấp, hiện đại cùng thiết kế sang trọng, ấm cúng.</p>
			
			<p>
			Mong muốn mang lại cho quý khách, những người yêu thích điện ảnh, trải nghiệm sống động, chân thật cùng những giây phút thư giãn tuyệt đối bên gia đình, bạn bè và người thân, hệ thống rạp chiếu phim Lotte Cinema Việt Nam đã nỗ lực không ngừng nhằm phát triển chất lượng dịch vụ và phục vụ tốt nhất với mục tiêu đem lại chất lượng dịch vụ - phục vụ mang đẳng cấp quốc tế với mức giá ưu đãi. LHD Star Cinema cam kết không ngừng phát triển và nâng cấp hệ thống để có thể đem lại sự hài lòng tuyệt đối cho khách hàng.</p>

			<img src="Template/Frontend/image/lhdlongbien.jpg" style="width: 1000px; height: 600px; margin: 0 auto"><br/>
			
			<br/>
			<p>
			Thông qua hệ thống website và ứng dụng trên điện thoại thông minh (hỗ trợ hệ điều hành android và ios), quý khách có thể cập nhật thông tin của những bộ phim mới nhất, đầy đủ và chi tiết cho từng suất chiếu hoặc nhanh chóng đặt mua vé trước (Booking Online) để xem những suất chiếu đầu tiên của các siêu phẩm điện ảnh.
			</p>

			

			<p>
			Đặc biệt trong năm 2016, lần đầu tiên LHD Star Cinema đã mang tới những trải nghiệm đầu tiên, mới mẻ và hiện đại nhất của Hàn Quốc tới Việt Nam. Đó là phòng chiếu phim Superhd với màn hình lớn nhất Việt Nam, âm thanh cực đã Dolby Atmos tại chi nhánh LHD Star Cinema Quận 1. Đó là phòng chiếu cao cấp 100% được trang bị ghế Prestige. Từ đó nâng cao chất lượng thưởng thức điện ảnh, giúp thỏa mãn tốt hơn nhu cầu và mong muốn của mọi khách hàng.
			</p>
			
			<img src="Template/Frontend/image/hinhrap.jpg" style="width: 1000px; height: 600px; margin: 0 auto"><br/>
			
			<br/>
			<p>
			Kính chúc quý khách có những kỷ niệm vui vẻ, ấm áp bên người thân, bạn bè tại LHD Star Cinema Việt Nam. Hạnh phúc của quý khách cũng chính là niềm hạnh phúc của tập thể LHD Star Cinema.
			</p>
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