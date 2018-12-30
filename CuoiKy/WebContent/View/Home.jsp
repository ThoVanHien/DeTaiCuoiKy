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
	<br/>
	<br/>
	<div class="container" style="margin-top: 58px;">
		<div id="baner" class="carousel slide" data-ride="carousel">
			  <ul class="carousel-indicators">
			    <li data-target="#baner" data-slide-to="0" class="active"></li>
			    <li data-target="#baner" data-slide-to="1"></li>
			    <li data-target="#baner" data-slide-to="2"></li>
			    <li data-target="#baner" data-slide-to="3"></li>
			  </ul>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      	<img src="Template/Frontend/image/sli1.jpg" >
				    </div>
				    <c:forEach items="${lHienThiBannerSK}" var="l">
				    	<div class="carousel-item">
					      <img src="${l.anh}" >   
					    </div>
				    </c:forEach>		      
				  </div>
			 
			  <a class="carousel-control-prev" href="#baner" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#baner" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		</div>

		<ul class="nav nav-pills nav-justified" id="container-tab">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="pill" href="#phimdc">PHIM ĐANG CHIẾU</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="pill" href="#phimsc">PHIM SẮP CHIẾU</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="pill" href="#ttsukien">THÔNG TIN SỰ KIỆN</a>
			  </li>
		</ul>
		<br>
		<div class="tab-content">
			  	<div class="tab-pane container active" id="phimdc">
			  		    <div id="fdc" class="carousel slide" data-ride="carousel">	
						        <div class="carousel-inner">
						            <div class="carousel-item active" >
						                <div class="row">
						                    <c:forEach items="${lHienThiBannerPDC}" var ="l">
						                    <c:if test="${l.maphim > 0 && l.maphim < 4}">
						                    <div class="col-sm">
						                    	<div class="card">
						                    		<img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
						                    		<div class="card-img-overlay">
						                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
						                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
						                    		</div>
						                    	</div>					                    	
						                    </div>
						                    </c:if>
						                    </c:forEach>
						                </div>
						            </div>
						            <div class="carousel-item">
						                <div class="row">
						                	<c:forEach items="${lHienThiBannerPDC}" var ="l">
						                	<c:if test="${l.maphim > 3 && l.maphim < 7}">
						                    <div class="col-sm">
						                    	<div class="card">
						                    		<img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
						                    		<div class="card-img-overlay"> 
						                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
						                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
						                    		</div>
						                    	</div>					                    	
						                    </div>
						                    </c:if>	
						                    </c:forEach>          		                    
						                </div>
						            </div>
						        </div>
					      
					        <div>
					        	<a class="carousel-control-prev" id="pre" href="#fdc" data-slide="prev">
						    		<span class="carousel-control-prev-icon"></span>
						  		</a>
					        </div>
						  	<a class="carousel-control-next" id="next" href="#fdc" data-slide="next">
						    	<span class="carousel-control-next-icon"></span>
						  	</a>
					    </div>
			  	</div>
			  	<div class="tab-pane container fade" id="phimsc">
			  		<div id="fsc" class="carousel slide" data-ride="carousel">	
					        <div class="carousel-inner">
					            <div class="carousel-item active" >
					                <div class="row">
					                	<c:forEach items="${lHienThiBannerPSC}" var="l">
					                	<c:if test="${l.maphim > 6 && l.maphim < 10}">
					                    <div class="col-sm">
					                    	<div class="card">
					                    		<img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                    		<div class="card-img-overlay">
					                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                    		</div>
					                    	</div>					                    	
					                    </div>
					                    </c:if>
					                    </c:forEach>
					                </div>
					            </div>
					            
					            <div class="carousel-item">
					                <div class="row">
					                	<c:forEach items="${lHienThiBannerPSC}" var="l">
					                	<c:if test="${l.maphim > 9}">
					                    <div class="col-sm">
					                    	<div class="card">
					                    		<img class="d-block w-100"  src="${l.hinhanh}" alt="1 slide">
					                    		<div class="card-img-overlay"> 
					                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="ChiTietPhimController">Chi tiết</a></button>
					                    			<button type="button" class="btn btn-primary btn-lg btn-block" id="btncard"><a href="DatVeController">Đặt vé</a></button>
					                    		</div>
					                    	</div>					                    	
					                    </div>
					                    </c:if>	
					                    </c:forEach>		                    
					                </div>
					            </div>
					         
					        </div>
					        <div>
					        	<a class="carousel-control-prev" id="pre" href="#fsc" data-slide="prev">
						    		<span class="carousel-control-prev-icon"></span>
						  		</a>
					        </div>
						  	<a class="carousel-control-next" id="next" href="#fsc" data-slide="next">
						    	<span class="carousel-control-next-icon"></span>
						  	</a>
					    </div>
			  		</div>
			  	<div class="tab-pane container fade" id="ttsukien">
					<div class="news-list" style="width: 1044px; margin-left: 24px;">
						<c:forEach  items="${lHienThiThongTinSK }" var ="l">
							<c:if test="${l.masukien > 5 }">
								<div class="news-row">
			                     	<div class="link-page" style="height: 186px;float:left;margin-right: 7px;">
			                            <a href="sukien.html"></a>
			                            <div class="pic"><img src="${l.anh }"></div>
				                            <div class="txt">
				                            	<h3>${l.tensk }</h3>
				                            	<p>${l.noidung}</p>
				                            </div>
			                            </div>                                            
			                    </div>
			                </c:if>    
			                <c:if test="${l.masukien < 6 }">                                
			                    <div class="news-row">
			                        <div class="link-page" style="height: 186px;float:left;margin-right: 7px;">
			                            <a href="sukien.html"></a>
			                            <div class="pic"><img src="${l.anh }"></div>
			                            <div class="txt">
			                                <h3>${l.tensk}</h3>
			                                <p>${l.noidung}</p>
			                                </div>
			                            </div>                                                                                          
			                     </div>                
				            </c:if>	  
                    	</c:forEach>
                    </div>
     			</div>
			</div>
	</div>		  
	<br>

	
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
			<h4>DHL CINEMA</h4>
			<p style="line-height:1.5">
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
