<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<body>

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
							<li><a href="../main">Home</a></li>
							<li><a href="../emp/empList">직원정보 리스트</a></li>
							<li><a href="../member/memList">회원 정보리스트</a></li>
							<li><a href="../prod/prodList">상품 정보 리스트</a></li>
							<li><a href="../sales/salesList">판매 현황</a></li>
							<li><a href="../notice/noticeList">공지사항 리스트</a></li>
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
			
	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">

					<!-- Content -->
						<div id="content" class="12u skel-cell-important">
							<section>
								<header>
									<h2>직원 정보 수정</h2>
									<span class="byline">직원 정보 수정 페이지입니다.</span>
								</header>
								<p>
								<form action="empModifyOk" method="get" name="frm">
									<input type="hidden" name="empNo" value="${emp.empNo }" />
									<table border= "1" width="500" align="center">
										<tr><td width="130">직원번호</td>
											<td width="370"> ${emp.empNo } </td></tr>
										<tr><td>아이디</td>
											<td>${emp.empId }</td></tr>
										<tr><td>이름</td>
											<td>${emp.empName }</td></tr>
										<tr><td>부서명</td>
											<td><input type="text" name="empDeptNumber" 
												value="${emp.empDeptNumber }"></td></tr>
										<tr><td>이메일</td>
											<td><input type="text" name="empEmail" value="${emp.empEmail }">
											</td></tr>
										<tr><td>연락처</td>
											<td><input type="text" name="empPhoneNumber" 
													placeholder="010-1234-1234" value="${emp.empPhoneNumber }">
											</td></tr>
										<tr><td>입사일</td>
											<td><input type="text" name="hireDate" 
													placeholder="2000-10-25" 
											value="<fmt:formatDate value='${emp.hireDate }' type='date' 
											pattern='yyyy-MM-dd'/>">
											</td></tr>
										<tr><td>급여</td>
											<td>
												<input type="text" name="salary" value="${emp.salary }">
											</td></tr>
										<tr><td colspan=2 align="center">
												<input type="submit" value="직원수정 완료" />
												<input type="button" value="직원 삭제" 
												onclick="javascript:location.href='empDelete?empNo=${emp.empNo }';"/>
											</td></tr>
									</table>
									</form>
								</p>
							</section>
						</div>
					<!-- /Content -->
						
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