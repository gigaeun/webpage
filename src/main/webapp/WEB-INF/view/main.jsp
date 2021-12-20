<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% 	pageContext.setAttribute("br", "\n"); %>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>GG쇼핑몰</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">

				<!-- Logo -->
					<div id="logo">
						<h1><a href="#">GG쇼핑몰</a></h1>
						<span>GG쇼핑몰에 오신 것을 환영합니다!</span>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li class="active"><a href="main">Home</a></li>
							<c:if test="${!empty authInfo }">
								<!-- 관리자 -->
								<c:if test="${authInfo.grade != 1 }">
								<li><a href="emp/empList">직원정보 리스트</a></li>
								<li><a href="member/memList">회원 정보리스트</a></li>
								<li><a href="emp/empInfo">직원마이페이지</a></li>
								<li><a href="prod/prodList">상품 정보 리스트</a></li>
								<li><a href="sales/salesList">판매 현황</a></li>
								<li><a href="notice/noticeList">공지사항 리스트</a></li>
								</c:if>
								<!-- 사용자 페이지 -->
								<c:if test="${authInfo.grade == 1 }">
								<li><a href="member/myInfo">마이페이지</a></li>
								<li><a href="prod/cartList">장바구니</a></li>
								<li><a href="prod/purchCon">주문확인</a></li>
								</c:if>
								<li><a href="logout">로그아웃</a></li>
							</c:if>
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
			
	<!-- Main -->
		<div id="main">
			<div class="container">
				<header>
					<h2>이주 입고된 신상품</h2>
				</header>
				<div class="row">
					<div class="3u">
						<c:forEach items="${prodList }" var="dto" varStatus="cnt">
							<section>
								<div class="content">
										<a href="prod/prodInfo?prodNo=${dto.prodNo }" >
											<span class="label">
											<img  width="200" alt="" src="product/upload/${dto.prodImage.split(',')[0] }" />
											</span>
											<h3>${dto.prodName }</h3>
									
											<p>${dto.prodPrice }원</p>
										</a>
								</div>
							</section>
						</c:forEach>
					</div>
				</div>
				<div class="divider">&nbsp;</div>
				<div class="row">
				
					<!-- Content -->
						<div class="8u skel-cell-important">
							<section id="content">
								<header>
									<h2>로그인</h2>
									<span class="byline">GG쇼핑몰에 오신 것을 환영합니다!</span>
								</header>
								<p><a href="#" class="image full"><img src="images/pics02.jpg" alt=""></a></p>
									<c:if test="${empty authInfo }">
										<!-- 로그인이 안된 상태 -->
										<p><h2>로그인</h2>
										<form action="login" method="post">
										<table border=1>
										<tr><td>아이디</td>
											<td>
												<input type="text" name="loginId" /><span>${userFail }</span>
											</td>
											<td rowspan="2" >
											<span class="label">
													<input type="image" src="images/pics02.jpg" width="100"/>
											</span>
												 </td></tr>
										<tr><td>비밀번호</td>
											<td>
												<input type="password" name="loginPw"><span>${pwFail }</span>
											</td></tr>
										<tr><td colspan="3">
												아이디/비밀번호 찾기 | 
												<a href="member/agree">회원가입</a>
											</td></tr>
										</table>
										</form></p>
									</c:if>
							</section>
						</div>
					<!-- /Content -->
						
					<!-- Sidebar -->
						<div id="sidebar" class="4u">
							<section>
								<header>
									<h2>공지사항</h2>
									<span class="byline">GG쇼핑몰 공지사항입니다.</span>
								</header>
								<p></p>
								<div class="testimonials">
								<c:forEach items="${noticeList }" var="dto">
									<section>
										<div class="content">
											<blockquote>
												<p>${fn:replace(dto.noticeContent,br,"<br />") }</p>
											</blockquote>
											<div class="author">
												<div class="image">
													
												</div>
												<p class="credit">- <span><strong><a href="#">${dto.noticeTitle }</a></strong></span></p>
											</div>
										</div>
									</section>
								</c:forEach>
								</div>
							</section>
						</div>
					<!-- Sidebar -->
						
				</div>
			
			</div>
		</div>
	<!-- Main -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="3u">
						<section>
							<ul class="style1">
								<li><img src="images/pics05.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics06.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics07.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<ul class="style1">
								<li class="first"><img src="images/pics08.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics09.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics10.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>				
					</div>
					<div class="6u">
						<section>
							<header>
								<h2>Aenean elementum</h2>
							</header>
							<p>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
							<ul class="default">
								<li><a href="#">Pellentesque quis lectus gravida blandit.</a></li>
								<li><a href="#">Lorem ipsum consectetuer adipiscing elit.</a></li>
								<li><a href="#">Phasellus nec nibh pellentesque congue.</a></li>
								<li><a href="#">Cras aliquam risus pellentesque pharetra.</a></li>
								<li><a href="#">Duis non metus commodo euismod lobortis.</a></li>
								<li><a href="#">Lorem ipsum dolor adipiscing elit.</a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
	<!-- Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>

	</body>
</html>