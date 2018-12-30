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
	            <a href="DangNhapController"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px;"><i class="fa fa-user"></i> Sign Up</button></a>
	            <a href="dangky.html"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-in"></i> Sign In</button></a>
	        </div> 
		</div>
	</nav>
	<div class="container noidung">
		<div class="thanhvien">
			<ul class="nav nav-tabs" id="pills-tab" role="tablist">
			  <li class="nav-item" >
			    <a class="nav-link active" id="hd-tab" data-toggle="pill" href="#pills-hd" role="tab" aria-controls="pills-home" aria-selected="true" style="border: none">HƯỚNG DẪN</a>
			  </li>

			  <li class="nav-item">
			    <a class="nav-link" id="ql-tab" data-toggle="pill" href="#pills-ql" role="tab" aria-controls="pills-profile" aria-selected="false" style="border: none">QUYỀN LỢI</a>
			  </li>

			  <li class="nav-item">
			    <a class="nav-link" id="qtsn-tab" data-toggle="pill" href="#pills-qtsn" role="tab" aria-controls="pills-profile" aria-selected="false" style="border: none">QUÀ TẶNG SINH NHẬT</a>
			  </li>

			  <li class="nav-item">
			    <a class="nav-link" id="qltk-tab" data-toggle="pill" href="#pills-qltk" role="tab" aria-controls="pills-profile" aria-selected="false" style="border: none">QUẢN LÝ TÀI KHOẢN</a>
			  </li>
			</ul>

			<div class="tab-content" id="pills-tabContent">
			  <div class="tab-pane fade show active" id="pills-hd" role="tabpanel" aria-labelledby="hd-tab">
				<span style="">
					Đăng ký trở thành thành viên DHL Cinema:
				</span>
				<img src="Template/Frontend/image/3buoc.png" style="width: 900px;height: 300px;">

				<p>
					<span class="sphd"><i class="fa fa-caret-right"></i> Hướng dẫn đăng ký thành viên</span><br/>
					<span>Có 2 cách để trở thành thành viên thân thiết:</span>
					<ul style="margin-top: -14px">
						<li>Trực tiếp đến các quầy chăm sóc khách hàng tại các cụm rạp</li>
						<li>Đăng ký trực tuyến tại <a href="#">đây</a></li>
					</ul><br/>

					<span class="sphd"><i class="fa fa-caret-right"></i> Hướng dẫn tích luỹ điểm</span><br/>
					<span>Thành viên mua bất kỳ những sản phẩm đang được bán tại các cụm rạp DHL Cinema, thành viên sẽ được tích lũy vào thẻ thành viên tương ứng
					</span>
					<ul>
						<li>Mỗi 500 đồng = 1 điểm</li>
						<li>Áp dụng với tất cả sản phẩm: vé xem phim, nước uống, thức ăn, combo …</li>
					</ul>
					<span>Lưu ý: Đối với những giao dịch trực tuyến, thành viên phải đăng nhập vào tài khoản mới được quyền tích điểm hợp lệ.</span><br/><br/>

					<span class="sphd"><i class="fa fa-caret-right"></i> Hướng dẫn đổi quà</span><br/>
					<span>Thành viên chỉ có thể đổi trực tiếp các quà tặng tại rạp như: Vé, Bắp nước, combo</span><br/>
					<span>Bước 1: Thành viên trình thẻ thành viên tại quầy vé hoặc quầy bắp nước<br/>

						  Bước 2: Thông báo với nhân viên quà tặng muốn qui đổi<br/>

						  Bước 3: Nhân viên kiểm tra số điểm tích lũy của thành viên. Nếu đủ điểm sẽ tiến hành đổi quà.</span><br/>
				 	<span class="sphd" style="font-size: 20px">Điều kiện đổi quà:</span>
				 	<ul>
				 		<li>Thành viên phải có đủ số điểm tích lũy tương ứng với phần quà.</li>
				 		<li>Quà tặng đều được nhận tại quầy vé hoặc quầy bắp nước.</li>
				 		<li>Không được quy đổi quà ra tiền mặt hay chuyển nhượng.</li>
				 		<li>Thành viên có thể đổi quả tại bất kỳ cụm rạp Galaxy trên toàn quốc.</li>
				 		<li>Thành viên phải cung cấp CMND & thẻ thành viên để nhận quà.</li>
				 	</ul>
				</p>
			  </div>

			  <div class="tab-pane fade" id="pills-ql" role="tabpanel" aria-labelledby="ql-tab">
			  	<span class="spql">Khi trở thành thành viên của DHL Cinema bạn có các quyền lợi sau:</span>
			  	<img src="Template/Frontend/image/qloi.png" style="width: 1150px; height: 600px;">
			  	<span class="spql">Quyền lợi khác:</span>
			  	<ul>
					<li>Giá vé ưu đãi dành cho thành viên.</li>
					<li>Bốc thăm trúng thưởng bất ngờ: cơ hội bốc thăm trúng thưởng dành cho các thành viên may mắn được tổ chức các dịp đặc biệt.</li>
					<li>Giảm giá vé xem phim bạn yêu thích: cơ hội tham gia các chương trình khuyến mãi giảm giá 10%, 30%, 50% hoặc hoàn toàn miễn phí cho các thành viên thân thiết.</li>
					<li>Nhận quà độc đáo: cơ hội nhận các món quà độc đáo và bất ngờ vào các ngày lễ lớn như Valentine, 8/3, 1/6, 20/10, Trung thu,…</li>
					<li>Tham dự buổi chiếu phim ra mắt cùng sao: cơ hội cùng các ngôi sao nổi tiếng tham dự buổi ra mắt phim bom tấn.</li>
			  	</ul>
			  </div>

			  <div class="tab-pane fade" id="pills-qtsn" role="tabpanel" aria-labelledby="qtsn-tab">
			  	<span class="spql">Cùng chào đón ngày Sinh Nhật thành viên với những phần quà đặc biệt</span>
			  	<table class="tbsn">
			  		<tr>
			  			<td style="width: 300px;">Thẻ TV U22</td>
			  			<td><img src="image/combo1.png"></td>
			  		</tr>
			  		<tr>
			  			<td>Thẻ TV Member</td>
			  			<td><img src="Template/Frontend/image/combo1.png"></td>	  			
			  		</tr>
			  		<tr>
			  			<td>Thẻ TV VIP</td>
			  			<td><img src="Template/Frontend/image/combo2.png"></td>
			  		</tr>
			  		<tr>
			  			<td>Thẻ TV SUPER</td>
			  			<td><img src="Template/Frontend/image/combo3.png"></td>
			  		</tr>
			  	</table>
			  	<p>Bạn sẽ nhận được ưu đãi này trong tháng sinh nhật của mình (tháng sinh nhật được tính từ ngày sinh nhật đến hết 30 ngày sau đó).</p>
			  	<span class="spql"><i class="fa fa-star"></i>Lưu ý:</span>
			  	<ul>
			  		<li>Chỉ những thành viên có ít nhất 01 giao dịch trong vòng 12 tháng gần nhất (trước tháng sinh nhật) mới nhận được Quà tặng Sinh nhật.</li>
			  		<li>Ngày sinh trên CMND của bạn phải trùng khớp với ngày sinh và số CMND đã đăng ký tài khoản.</li>
			  		<li>Nếu tài khoản được đăng ký với ngày sinh không chính xác, và ngày sinh đã qua, chương trình sẽ được áp dụng cho ngày sinh nhật vào năm kế tiếp.</li>
			  		<li>Thành viên cần đăng ký tài khoản ít nhất 72 giờ trước ngày sinh nhật của mình để được nhận ưu đãi.</li>
			  	</ul>
			  </div>

			  <div class="tab-pane fade" id="pills-qltk" role="tabpanel" aria-labelledby="qltk-tab">
			  	<span class="spql">Bạn có thể dễ dàng quản lý tài khoản thành viên của mình như:</span><br/>
			  	<ul>
			  		<li>Kiểm tra và chỉnh sửa thông tin tài khoản</li>
			  		<li>Tra cứu điểm thưởng, quá trình tích luỹ và sử dụng</li>
			  		<li>Tích hợp thẻ quà tặng, voucher hoặc coupon và tài khoản thành viên</li>
			  		<li>Xem lại lịch sử giao dịch</li>
			  	</ul>
			  	<span>Mỗi tuần, các thành viên sẽ nhận được Bản tin điện ảnh qua email, cập nhật những tin tức mới nhất về phim ảnh, sự kiện và khuyến mãi. Cập nhật ngay email, điện thoại và địa chỉ của bạn để luôn nhận được những thông báo mới nhất.</span>
			  	<div style="height: 90px;"></div>
			  </div>
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