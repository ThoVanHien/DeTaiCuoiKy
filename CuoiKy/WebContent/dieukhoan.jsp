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
				<span style="padding: 10px 20px 0px 20px; background-color: #5B5757; font-size: 20px">Điều khoản sử dụng</span>
			</div>
			

			<div style="margin: 10px auto; width: 1000px; text-align: center;">
				<p><h4>ĐIỀU KHOẢN CHUNG VỀ VIỆC SỬ DỤNG WEBSITE</h4></p>
					<br/>
			</div>

			<p>
			Việc bạn sử dụng website này đồng nghĩa với việc bạn đồng ý với những thỏa thuận dưới đây.<br/>
			Nếu bạn không đồng ý, xin vui lòng không sử dụng website.</p>

			<p>
				<span>1. Trách nhiệm của người sử dụng:</span><br/>
				Khi truy cập vào trang web này, bạn đồng ý chấp nhận mọi rủi ro. LHD Star Cinema và các bên đối tác khác không chịu trách nhiệm về bất kỳ tổn thất nào do những hậu quả trực tiếp, tình cờ hay gián tiếp; những thất thoát, chi phí (bao gồm chi phí pháp lý, chi phí tư vấn hoặc các khoản chi tiêu khác) có thể phát sinh trực tiếp hoặc gián tiếp do việc truy cập trang web hoặc khi tải dữ liệu về máy; những tổn hại gặp phải do virus, hành động phá hoại trực tiếp hay gián tiếp của hệ thống máy tính khác, đường dây điện thoại, phần cứng, phần mềm, lỗi chương trình, hoặc bất kì các lỗi nào khác; đường truyền dẫn của máy tính hoặc nối kết mạng bị chậm…
			</p>

			<p>
				<span>2. Về nội dung trên trang web:</span><br/>
				Tất cả những thông tin ở đây được cung cấp cho bạn một cách trung thực như bản thân sự việc. LHD Star Cinema không bảo đảm, hay có bất kỳ tuyên bố nào liên quan đến tính chính xác, tin cậy của việc sử dụng hay kết quả của việc sử dụng nội dung trên trang web này. Mặc dù LHD Star Cinema luôn cố gắng cập nhật thường xuyên các nội dung tại trang web, nhưng chúng tôi không bảo đảm rằng các thông tin đó là mới nhất, chính xác , đầy đủ.
			</p>

			<p>
				<span>3. Về bản quyền:</span><br/>
				LHD Star Cinema là chủ bản quyền của trang web này. Việc chỉnh sửa trang, nội dung, và sắp xếp thuộc về thẩm quyền của LHD Star Cinema. Sự chỉnh sửa, thay đổi, phân phối hoặc tái sử dụng những nội dung trong trang này vì bất kì mục đích nào khác được xem như vi phạm quyền lợi hợp pháp của LHD Star Cinema.
			</p>

			<p>
				<span>4. Về việc sử dụng thông tin:</span><br/>
				Chúng tôi sẽ không sử dụng thông tin cá nhân của bạn trên website này nếu không được phép. Nếu bạn đồng ý cung cấp thông tin cá nhân, bạn sẽ được bảo vệ. Thông tin của bạn sẽ được sử dụng với mục đích, liên lạc với bạn để thông báo các thông tin cập nhật của LHD Star Cinema như lịch chiếu phim, khuyến mại qua email hoặc bưu điện. Thông tin cá nhân của bạn sẽ không được gửi cho bất kỳ ai sử dụng ngoài trang web LHD Star Cinema, ngoại trừ những mở rộng cần thiết để bạn có thể tham gia vào trang web (những nhà cung cấp dịch vụ, đối tác, các công ty quảng cáo) và yêu cầu cung cấp bởi luật pháp. Nếu chúng tôi chia sẻ thông tin cá nhân của bạn cho các nhà cung cấp dịch vụ, công ty quảng cáo, các công ty đối tác liên quan, thì chúng tôi cũng yêu cầu họ bảo vệ thông tin cá nhân của bạn như cách chúng tôi thực hiện.
			</p>	

			<p>
				<span>5. Về việc tải dữ liệu:</span><br/>
				Nếu bạn tải về máy những phần mềm từ trang này, thì phần mềm và các dữ liệu tải sẽ thuộc bản quyền của LHD Star Cinema và cho phép bạn sử dụng. Bạn không được sở hữu những phầm mềm đã tải và LHD Star Cinema không nhượng quyền cho bạn. Bạn cũng không được phép bán, phân phối lại, hay bẻ khóa phần mềm…
			</p>

			<p>
				<span>6. Thay đổi nội dung:</span><br/>
				LHD Star Cinema giữ quyền thay đổi, chỉnh sửa và loại bỏ những thông tin hợp pháp vào bất kỳ thời điểm nào vì bất kỳ lý do nào.
			</p>

			<p>
				<span>7. Đưa thông tin lên trang web:</span><br/>
				Bạn không được đưa lên, hoặc chuyển tải lên trang web tất cả những hình ảnh, từ ngữ khiêu dâm, thô tục, xúc phạm, phỉ báng, bôi nhọ, đe dọa, những thông tin không hợp pháp hoặc những thông tin có thể đưa đến việc vi phạm pháp luật, trách nhiệm pháp lý. LHD Star Cinema và tất cả các bên có liên quan đến việc xây dựng và quản lý trang web không chịu trách nhiệm hoặc có nghĩa vụ pháp lý đối với những phát sinh từ nội dung do bạn tải lên trang web.
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