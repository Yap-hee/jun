<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="css-js/script.jsp" %>
<%@ include file="css-js/css.jsp" %>
<%@ include file="css-js/reset.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar">	
		<div class="navbar_logo">
            <a href="#" id="logo"><i class="fab fa-accusoft"></i></a>
            <a href="main.do">JUNWOO</a>
        </div>

		<ul class="navbar_menu">
			<br>
			<li><a href="https://www.twitter.com">회사소개</a></li>
			<li><a href="resultBoardList.do">실적</a></li>
			<li><a href="#">조직도</a></li>
			<li><a href="boardList.do">공지사항</a></li>
			<li><a href="#">오시는길/연락</a></li>
		</ul>
		
		<!-- <ul class="navbar_icons">
			<li><a href="loginForm.do"><button class="navbar_button">관리자 모드</button></a></li>
		</ul> -->
		<ul class="navbar_icons">
			<c:choose>
				<c:when test="${empty id }">
						<li><a href="loginForm.do">
							<button class="navbar_button">관리자 모드</button>
						</a></li>
				</c:when>
				<c:when test="${not empty id }">
					<li><a class="nav-link" href="logout.do">
						<button class="navbar_button">로그아웃</button>
					</a></li>
				</c:when>
			</c:choose>
		</ul>
		<a href="#" class="navbar_toggleBtn"> 
			<i class="fas fa-bars"></i>
		</a>
	</nav>
	
</body>
</html>