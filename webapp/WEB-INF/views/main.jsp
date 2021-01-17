<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="css-js/reset.jsp"%>
<%@ include file="css-js/nav_css.jsp"%>
<%@ include file="css-js/css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
	body{margin-top:0;}
</style>
</head>
<body>
<div class="wrap" id="no-drag">
	<header>
		<div class="navbar" style="z-index: 2">
			<ul class="navbar_logo">
				<li><a href="main.do">
					<img alt="윤준엔지니어링 로고" src="resources/images/logo_5.png" height="45px;">
					<!-- <img alt="윤준엔지니어링 로고" src="resources/images/logo_white.png" height="45px;"> -->
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
				<li><a href="business.do">사업소개</a>
					<ul class="navbar_menu_hover">
						<li><a href="business.do">사업영역</a></li>
					</ul>
				</li>
				<li><a href="resultBoardList.do">사업실적</a>
					<ul class="navbar_menu_hover">
						<li><a href="resultBoardList.do">전력기술</a></li>
						<li><a href="resultBoardList.do">태양광발전</a></li>
						<li><a href="resultBoardList.do">소방시설</a></li>
					</ul>
				</li>
				<li><a href="boardList.do">공지사항</a></li>
			</ul>
			<ul class="navbar_btn">
				<li class="bar"><div class="bars"><img alt="" src="resources/images/bars.jpg" width="20px" height="20px"></div></li>
			 	<li class="bar_text"><a href="#" class="navbar_btn_menu">MENU</a>
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
		
		<div class="sidebar" style="z-index: 2">
			<ul class="side_logo">
				<li>
					<a href="#this" id="logo">
						<img alt="윤준엔지니어링 로고" src="resources/images/태양2.png" width="50px;">
					</a>
				</li>
			</ul>
			<ul class="side_menu">
				<li id="menu1"><a href="#">회사소개</a>
					<ul class="side_menu_hover">
						<li><a href="introduce_main.do">회사소개</a></li>
						<li><a href="introduce_history.do">연혁</a></li>
						<li><a href="introduce_organization.do">조직도</a></li>
						<li><a href="introduce_map.do">찾아오시는 길</a></li>
					</ul>
				</li>
				<li id="menu2"><a href="#this">사업소개</a>
					<ul class="side_menu_hover">
						<li><a href="business.do">사업영역</a></li>
					</ul>
				</li>
				<li id="menu3"><a href="#this">실적</a>
					<ul class="side_menu_hover">
						<li><a href="resultBoardList.do">전력기술</a></li>
						<li><a href="resultBoardList.do">태양광발전</a></li>
						<li><a href="resultBoardList.do">소방시설</a></li>
					</ul>
				</li>
				<li id="menu4"><a href="#this">공지사항</a>
					<ul class="side_menu_hover">
						<li><a href="boardList.do">공지사항</a></li>
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
	<div class="main_1st"  style="z-index: 1">
		<div class="line"></div>
		<div class="content_box">
			<div class="content">
				<div class="content1">전력기술 엔지니어링과 신재생 에너지사업의 파트너</div>
				<div class="content2">윤준 엔지니어링이</div>
				<div class="content3">글로벌 시장의 리더가 되겠습니다</div>
			</div>
		</div>
	</div>
	<div class="main_2nd">
		<div class="main_contents">
			<div class="main_content">
				<a id="main_content_title">About Yunjune</a>
				<a id="main_content_sub">깨끗한 에너지 깨끗한 기업</a>
			</div>
			<div class="main_content_box">
				<div class="main_content1_box">
					<ul class="main_content1">
						<li class="substation"><a href="#this">
							<strong>전력/신재생</strong>
							154kV 변전소, 일반 건축전기, 송배전선로 / 태양광 발전소, 소수력 발전소
						</a></li>
						<li class="fire"><a href="#this">
							<strong>소방시설</strong>
							소방시설1 / 소방시설2
						</a></li>
					</ul>
				</div>
				<div class="main_content2">
					<a id="main_content2"><strong>CORPORATION</strong>
						기업의 핵심 가치관, 기업관을 간단히 한 두 줄 정도로 정리해주면 좋겠습니다. 
						그리고 보다 구체적인 내용을 또 따로 작성해주시면, 회사 소개란에 넣도록 하겠습니다.
					</a>
					<a href="#"><button class="slim-btn">자세히 보기</button></a>
				</div>
			</div>
		</div>
	</div>
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="footer">
					<ul>
						<li><a>(주)윤준엔지니어링</a></li>
						<li><a>서울특별시 남가좌동 홍은로 211-4</a></li>
						<li><a>02-0000-0000</a></li>
						<li><a href="boardList.do">공지사항</a></li>
						<address>
							Copyright ©
							<a href="#"><strong>Yunjune Engineering Co.,Ltd</strong></a>
							All Rights Reserved. 
						</address>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</div>

	
	
</body>
</html>