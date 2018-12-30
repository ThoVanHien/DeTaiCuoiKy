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
	<style>
	
	.mystyle {
  color: red;
}
	</style>
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
			<div class="chonghe">
				<h4 style="color: yellow; margin-top: 12px; margin-bottom: 20px">VUI LÒNG CHỌN GHẾ</h4>
				<div class="manhinh"><span style="background-color: white; padding: 2px 200px 2px 200px; ">MÀN HÌNH</span></div>
				<table>
					<tr>
						<td id="tenghe">A</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">A</td>
					</tr>
				
					<tr>
						<td id="tenghe">B</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">B</td>
					</tr>
				
					<tr>
						<td id="tenghe">C</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">C</td>
					</tr>
				
					<tr>
						<td id="tenghe">D</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button onclick="doimau(1, 0)" id="ghed5">5</button></div>
						<td><button onclick="doimau(0, 1)" id="ghed6">6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						
						<button onclick="myFunction()">Try it</button>

					</tr>
				
					<tr>
						<td id="tenghe">E</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">E</td>
					</tr>
				
					<tr>
						<td id="tenghe">F</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">F</td>
					</tr>
				
					<tr>
						<td id="tenghe">G</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">G</td>
					</tr>
				
					<tr>
						<td id="tenghe">H</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">H</td>
					</tr>
				
					<tr>
						<td id="tenghe">I</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">I</td>
					</tr>
				
					<tr>
						<td id="tenghe">J</td>
						<td></td>
						<td><button>1</button></td>
						<td><button>2</button></td>
						<td><button>3</button></td>
						<td><button>4</button></td>
						<td></td>
						<td><button>5</button></td>
						<td><button>6</button></td>
						<td><button>7</button></td>
						<td><button>8</button></td>
						<td><button>9</button></td>
						<td><button>10</button></td>
						<td></td>
						<td><button>11</button></td>
						<td><button>12</button></td>
						<td><button>13</button></td>
						<td><button>14</button></td>
						<td></td>
						<td id="tenghe">J</td>
					</tr>
				</table>
				<div>
					<table style="color:white; margin-top:20px; margin-bottom: 20px">
						<tr>
							<td style="width: 40px;height: 30px; background-color:red"></td>
							<td style="width: 120px;">Ghế đang chọn</td>
							<td style="width: 40px;height: 30px; background-color:#C6C4C4"></td>
							<td style="width: 100px">Ghế trống</td>
							<td style="width: 40px;height: 30px; background-color:blue"></td>
							<td style="width: 100px">Ghế đã bán</td>
						</tr>
					</table>
				</div> 
			</div>

			<div class="total">
				<img src="Template/Frontend/image/f2.jpg">
				<div class="totaltext">
					<h5>Qúy cô thừa kế</h5>
					<span>Rạp: LHD Star Q9 - Rạp 3</span><br/>
					<span>Thời gian: 13:20 30/12/2018</span><br/>
					<span>Combo: 1 bắp + 1 nước</span><br/>
					<span>Số ghế: 2 </span><br/>
					<span>Tổng: 202000</span>
				</div>
				<a href="DatVeB2Controller"><button class="btn btn-danger" style="margin-bottom: 10px">QUAY LẠI</button></a>
				<a href="DatVeB4Controller"><button class="btn btn-danger" style="margin-bottom: 10px">TIẾP TỤC</button></a>
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

function doimau(p1, p2) {
	  if(p1==1){
		  var element = document.getElementById("ghed5");
		  element.classList.add("mystyle");
	  }
	  if(p2==1){
		  var element = document.getElementById("ghed6");
		  element.classList.add("mystyle");
	  }
	}
</script>
</body>
</html>