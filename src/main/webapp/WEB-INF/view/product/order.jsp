<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<c:if test="${!empty authInfo }">
								<!-- 사용자 페이지 -->
								<c:if test="${authInfo.grade == 1 }">
								<li><a href="../member/myInfo">마이페이지</a></li>
								<li><a href="../prod/cartList">장바구니</a></li>
								<li><a href="../prod/purchCon">주문확인</a></li>
								</c:if>
								<li><a href="../logout">로그아웃</a></li>
							</c:if>
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
									<h2>주문서</h2>
								</header>
								<p>
								<h3>1. 주문상품 할인적용</h3>
								<table width="800" border="1">
									<tr><th colspan="2">상품정보</th><th>적용금액</th></tr>
								<c:set var="totalPrice" value="0" />
								<c:set var="proNums" value="" />
								<c:forEach items="${list }" var="productCartDTO">
									<tr><td><img src="../product/upload/${productCartDTO.productDTO.prodImage.split(',')[0] }" /></td>
										<td>${productCartDTO.productDTO.prodName }<br />
											단가 : ${productCartDTO.productDTO.prodPrice }원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											${productCartDTO.cartDTO.cartQty }개
										</td>
										<td align="right">${productCartDTO.cartDTO.cartPrice }원</td></tr>
								<c:set var="totalPrice" value="${totalPrice + productCartDTO.cartDTO.cartPrice }" />
								<c:set var="proNums" value="${proNums += productCartDTO.cartDTO.prodNo += ','}" />
								</c:forEach>
									<tr><td colspan="3" align="right">최종 결제 금액<br />${totalPrice }원</td></tr>
								</table>
								</p>
								<hr />
								<h3>2. 배송지 정보 입력(＊필수입력)</h3>
								<p>
								<form action="goodsOrder"  method="post" >
								<input type="hidden" name="purchTotal" value="${totalPrice }" />
								<input type="hidden" name="prodNums" value="${proNums }" />
								<table width = "800">
									<tr><th>배송지 주소</th>
										<td><input type="text" name="purchAddr" /></td></tr>
									<tr><th>받는 사람</th>
										<td><input type="text" name="purchReceiver" /></td></tr>
									<tr><th>연락처</th>
										<td><input type="text" name="purchPhoneNumber" /></td></tr>
									<tr><th>주문 문자</th>
										<td><input type="text" name="purchMsg" /></td></tr>
									<tr><th colspan="2"><input type="submit" value="주문하기" /></th></tr>
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