<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../css-js/reset.jsp"%>
<%@ include file="../css-js/nav_css.jsp"%>
<%@ include file="../css-js/css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.loginbox{ margin:0px auto; width: 50vw; height:auto; align-items: center; padding-top:15vh;}
	
	form{ text-align:center; align-items: center; margin: 0 auto;}
	
	.login_name{ text-align:center;align-items:center; margin: 0 auto; height: 25vh; padding:2vh;}
	
	.login_name img{width: 30vh; height: auto; padding:2vh;}
	
	.login_name h2{font-size: 5vh; text-align: center; font-weight: bold; padding:2vh;}
	
	.login_contents{margin: 0 auto; width: 50vw; align-items: center; height: 20vh;}
	
	.login_content{margin: 0 auto; display: inline-block; width: 50vw; height: 10vh;}
	
	.login_contents input{width: 50vw; height: 8vh; font-size: 2vh;}
	
	.login_submit{margin: 0 auto; width: 50vw; height: 10vh;}
	
	.login_btn{width: 50vw; height: 8vh; color: white; font-size: 2.5vh; border: none; 
			font-weight:bold; background-color: green;}
	
	@media screen and (max-width: 960px){
		.loginbox{ margin:0px auto; width: 90vw; height:70vh; align-items: center; padding-top:20vh;}
	
		form{ text-align:center; align-items: center; margin: 0 auto;}
		
		.login_name{ text-align:center;align-items:center; margin: 0 auto; height: 25vh; padding:2vh;}
		
		.login_name img{width: 25vh; height: auto; padding:2vh;}
		
		.login_name h2{font-size: 5vh; text-align: center; font-weight: bold; padding:2vh;}
		
		.login_contents{margin: 0 auto; width: 80vw; align-items: center; height: 20vh;}
		
		.login_content{margin: 0 auto; display: inline-block; width: 80vw; height: 10vh;}
		
		.login_contents input{width: 80vw; height: 8vh; font-size: 2vh;}
		
		.login_submit{margin: 0 auto; width: 80vw; height: 10vh;}
		
		.login_btn{width: 80vw; height: 8vh; color: white; font-size: 2.5vh; border: none; 
			font-weight:bold; background-color: green;}
	}
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
	<div class="loginbox">
		<div class="login_name">
			<img alt="" src="resources/images/logo.png">
			<h2>관리자 모드</h2>
		</div>
		<form method="post" action="login.do">
			<div class="login_contents">
				<div class="login_content">
					<input type="text" name="id" autofocus="autofocus" required="required" placeholder="아이디">
				</div>
				<div class="login_content">
					<input type="text" name="password" required="required" placeholder="비밀번호">
				</div>
			</div>
			<div class="login_submit">
				<button class="login_btn">로그인</button>
			</div>
		</form>
	</div>
</div>	
</body>
</html>