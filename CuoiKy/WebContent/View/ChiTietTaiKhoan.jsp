<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi Tiết Tài Khoản</title>
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
	<a class="navbar-brand" href="Home.html">
		<img src="image/logo2.png" style="width: 80px;height: 20px">
	</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav mr-auto " id="bor">
			<li class="nav-item">
				<a class="nav-link" id="lik" href="Phim.html" style="border-radius: 18px 0 0 18px; ">PHIM<span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="lik" href="rapphim.html" >RẠP PHIM</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="lik" href="lichchieu.html" >LỊCH CHIẾU</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="lik" href="sukien.html" >SỰ KIỆN</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="lik" href="member.html" style="border:none; border-radius: 0 18px 18px 0;">THÀNH VIÊN</a>
			</li>
		</ul>

		<form class="form-inline mt-2 mt-md-0" style="margin-right: 40px">
			<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search "></i></button>
		</form>

		<div class="btn-group" role="group" aria-label="Basic example" style="margin-right: 20px">
            <a href="#"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px; color: orange"><i class="fa fa-user-circle"></i> Yến Linh</button></a>
            <a href="Home.html"><button type="button" class="btn btn-outline-secondary" style="border: none;border-radius: 20px"><i class="fa fa-sign-in"></i> Thoát</button></a>
        </div> 
	</div>
</nav>

	<div class="container noidung">
		<ul class="nav nav-tabs" id="pills-tab" role="tablist" style="margin-top: 74px;">
		  <li class="nav-item" >
		    <a class="nav-link active" id="info-tab" data-toggle="pill" href="#pills-info" role="tab" aria-controls="pills-home" aria-selected="true" style="border: none">THÔNG TIN THÀNH VIÊN</a>
		  </li>

		  <li class="nav-item">
		    <a class="nav-link" id="deal-tab" data-toggle="pill" href="#pills-deal" role="tab" aria-controls="pills-profile" aria-selected="false" style="border: none">LỊCH SỬ GIAO DỊCH</a>
		  </li>
		</ul>

		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-info" role="tabpanel" aria-labelledby="info-tab">
				<div style="width: 1200px; margin-top: 20px;">
				<div class="info-left">
					<div class="card">
						<img class="card-img-top" src="image/account.png">
						<h5 class="modal-title">Yến Linh</h5>
						<button onclick="myAvatar()" class="btn btn-success">
							<i class="fa fa-camera"> Đổi avatar</i>
						</button>
					</div>

					<div class="the">
						<p>THẺ THÀNH VIÊN</p>
						<img src="image/thetv.png">	
						<p><h6>ĐIỂM THƯỞNG</h6><p>
						<p class="thuong">
							Tổng chi tiêu: <span>0đ</span><br/>
							Điểm nhận được: <span>0đ</span><br/>
							Điểm hiện tại: <span>0đ</span>
						</p>	
					</div>			
				</div>

				<div class="info-right">
					<h5 style="text-align: center;">Thông tin tài khoản</h5>
					<form>
						<table>
							<tr>
								<td style="width: 142px">Email</td>
								<td><input type="text" name="email" value="yenlinh@gmail.com" disabled=""> </td>
							</tr>

							<tr>
								<td>Mật khẩu</td>
								<td><input type="password" name="pass" style="width: 240px" value="123abc" disabled="">&nbsp<button class="btn btn-success change">Đổi mật khẩu</button></td>
							</tr>

							<!-- <tr>
								<td>Nhập mật khẩu mới(*)</td>
								<td><input type="password" name="newpass" value="" required></td>
							</tr>
							
							<tr>
								<td>Nhập lại mật khẩu(*)</td>
								<td><input type="password" name="repeatpass" value="" required></td>
							</tr> -->

							<tr>
								<td>Họ & Tên(*)</td>
								<td><input type="text" name="ten" value="Nguyễn Yến Linh" required></td>
							</tr>

							<tr>
								<td>Số điện thoại(*)</td>
								<td><input type="text" name="phone" value="0947362864" required></td>
							</tr>

							<tr>
								<td>Giới tính</td>
								<td>
									<select>
										<option>Nữ</option>
										<option>Nam</option>
									</select>
								</td>
							</tr>

							<tr>
								<td>Sinh nhật</td>
								<td><input type="date" name="bday" ></td>
							</tr>

							<tr>
								<td>Địa chỉ</td>
								<td><input type="text" name="address" value="06 Võ Văn Ngân"></td>
							</tr>

							<tr>
								<td>Tỉnh/Thành Phố</td>
								<td>
									<select>
										<option>Hồ Chí Minh</option>
										<option>Hà Nội</option>
										<option>Đà Nẵng</option>
										<option>Huế</option>
										<option>Cần Thơ</option>
									</select>																
								</td>
							</tr>
						</table>
						<input type="submit" name="save" class="btn btn-info" style="width: 150px" value="LƯU LẠI">
					</form>
				</div>
			</div>
			</div>

			<div class="tab-pane fade" id="pills-deal" role="tabpanel" aria-labelledby="deal-tab">
				<div class="deal">
					<table>
						<tr style="background-color: #BB8A22; color: black;">
							<td>Ngày</td>
							<td>Số giao dịch</td>
							<td>Rạp</td>
							<td>Phim</td>
							<td>Giá trị</td>
							<td>Điểm tích luỹ</td>
							<td>Điểm đã dùng</td>
							<td>Chú thích</td>
						</tr>
						<tr>
							<td colspan="8">Không có giao dịch nào!</td>
						</tr>
					</table>
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
				COPYRIGHT © LDHCINEMA.COM - ALL RIGHTS RESERVED. 
			</p>
		</div>

		<div class="card-contact">
			<a href="#"><i class="fa fa-facebook-square fa-2x" style="color:#2230EA; margin-bottom: 5px;"><span class="cnt-text">fb.com/lhdcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-youtube-square fa-2x" style="color:#E42626; margin-bottom: 5px;"><span class="cnt-text">youtube.com/LHDcinema</span></i></a><br/>
			<a href="#"><i class="fa fa-instagram fa-2x" style="color:#E32B63"><span class="cnt-text">instagram.com/LHDcinevina</span></i></a>
		</div>
	</footer>

<script>
function myAvatar() {
    var x = document.createElement("INPUT");
    x.setAttribute("type", "file");
    document.body.appendChild(x);
}

var dateControl = document.querySelector('input[type="date"]');
dateControl.value = '1998-10-20';
</script>
</body>
</html>