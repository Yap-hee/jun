<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="css-js/reset.jsp"%>
<%@ include file="css-js/nav_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">	
$(document).ready(function() {
	
	const navbar = document.querySelector('.navbar');
	
	$(window).scroll(function(){
		var scrollPosition = window.scrollY || document.documentElement.scrollTop;
		if(scrollPosition > 10) {
			navbar.classList.add('active');
		}
	}).trigger('scroll');
	
	$(window).scroll(function(){
		var scrollPosition = window.scrollY || document.documentElement.scrollTop;
		if(scrollPosition < 11) {
			navbar.classList.remove('active');
		}
	}).trigger('scroll');
});
</script>
</head>
<body>
	<header>
		<div class="navbar" style="z-index: 2">
			<ul class="navbar_logo">
				<li><a href="main.do" id="logo">
					<img alt="윤준엔지니어링 로고" src="resources/images/logo.png" width="130px;">
				</a></li>
			</ul>
				
			<ul class="navbar_menu">
				<li><a href="introduce_main.do">회사소개</a>
					<ul class="navbar_menu_hover">
						<li><a href="introduce_main.do">회사소개</a></li>
						<li><a href="introduce_history.do">연혁</a></li>
						<li><a href="introduce_organization.do">조직도</a></li>
						<li><a href="introduce_map.do">찾아오시는 길</a></li>
					</ul>
				</li>
				<li><a href="#">사업소개</a>
					<ul class="navbar_menu_hover">
						<li><a href="#">사업영역</a></li>
						<li><a href="#">주요거래처</a></li>
					</ul>
				</li>
				<li><a href="resultBoardList.do">사업실적</a>
					<ul class="navbar_menu_hover">
						<li><a href="#">전력기술</a></li>
						<li><a href="#">태양광발전</a></li>
						<li><a href="#">소방시설</a></li>
					</ul>
				</li>
				<li><a href="boardList.do">공지사항</a></li>
			</ul>
			<ul class="navbar_btn">
			 	<li><a class="navbar_btn_menu">MENU</a>
					<ul class="navbar_menu_hover">
						<li>
							<c:choose>
								<c:when test="${empty id }">
									<a href="loginForm.do">관리자</a>
								</c:when>
								<c:when test="${not empty id }">
									<a class="nav-link" href="logout.do">로그아웃</a>
								</c:when>
							</c:choose>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div class="sidebar">
			<ul class="side_logo">
				<li>
					<a href="#this" id="logo">
						<img alt="윤준엔지니어링 로고" src="resources/images/logo.png" width="100px;">
					</a>
				</li>
			</ul>
			<ul class="side_menu">
				<li id="menu1"><a href="#">회사소개</a>
					<ul class="side_menu_hover">
						<li><a href="#">회사소개</a></li>
						<li><a href="#">연혁</a></li>
						<li><a href="#">조직도</a></li>
						<li><a href="#">찾아오시는 길</a></li>
					</ul>
				</li>
				<li id="menu2"><a href="#">사업소개</a>
					<ul class="side_menu_hover">
						<li><a href="#">사업영역</a></li>
						<li><a href="#">주요거래처</a></li>
					</ul>
				</li>
				<li id="menu3"><a href="#this">실적</a>
					<ul class="side_menu_hover">
						<li><a href="#">전력기술</a></li>
						<li><a href="#">태양광발전</a></li>
						<li><a href="#">소방시설</a></li>
					</ul>
				</li>
				<li id="menu4"><a href="#this">공지사항</a>
					<ul class="side_menu_hover">
						<li><a href="boardList.do">전력기술</a></li>
					</ul>
				</li>
			</ul>
			<ul class="side_btn">
				<li>
					<c:choose>
						<c:when test="${empty id }">
							<a href="loginForm.do">관리자</a>
						</c:when>
						<c:when test="${not empty id }">
							<a class="nav-link" href="logout.do">로그아웃</a>
						</c:when>
					</c:choose>
				</li>
			</ul>
		</div>
	</header>
</body>
</html>