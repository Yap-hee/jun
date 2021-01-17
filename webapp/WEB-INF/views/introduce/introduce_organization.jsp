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
<script type="text/javascript">
	$(document).ready(function() {
		const ceo_btn = document.querySelector('.ceo_btn');
		const cor_btn = document.querySelector('.cor_btn');
		const ceo = document.querySelector('.intro_ceo');
		const cor = document.querySelector('.intro_cor');
		const intro_click = document.querySelector('.intro_menu_ul_small li a.btn');
		const inrto = document.querySelector('.intro_menu');
		
		$(ceo_btn).click(function() {
			ceo.classList.remove('none');
			cor.classList.remove('active');
			ceo_btn.classList.remove('unclick');
			cor_btn.classList.remove('click');
			ceo_btn.classList.add('click');
			/* 토글로하지말고 분리해서 add remove로 해야함 */
		});
		
		$(cor_btn).click(function() {
			ceo.classList.add('none');
			cor.classList.add('active');
			ceo_btn.classList.add('unclick');
			ceo_btn.classList.remove('click');
			cor_btn.classList.add('click');
		});
		
		$(intro_click).click(function() {
			inrto.classList.toggle('on');
		});
	});
</script>
<style type="text/css">
	</style>
</head>
<body>
<div class="box" id="no-drag">
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

	<div class="intro_header" style="z-index: 1">
		<a><strong>CORPORATION</strong>회사소개</a>
		<div class="intro_menu_big">
			<ul class="intro_menu_ul">
				<li><a href="introduce_main.do">회사소개</a></li>
				<li><a href="introduce_history.do">연혁</a></li>
				<li><a href="introduce_organization.do" class="click">조직도</a></li>
				<li><a href="introduce_map.do">오시는길</a></li>
			</ul>
		</div>
	</div>
	<div class="intro_box" style="z-index: 1">
		<div class="intro_menu">
			<ul class="intro_menu_ul_small">
				<li id="intro_menu_btn"><a href="#this" class="btn">조직도</a></li>
				<li><a href="introduce_main.do">회사소개</a></li>
				<li><a href="introduce_history.do">연혁</a></li>
				<li><a href="introduce_organization.do" class="click">조직도</a></li>
				<li><a href="introduce_map.do">오시는길</a></li>
			</ul>
		</div>
	</div>
	<div class="org_box">
		<div class="org_text">조직도</div>
		<div class="org_img">
			<div class="org_imgg"></div>
		</div>
		<div class="org_box_strong">인원 현황</div>
		<div class="org_people_box">
			<div class="org_people_card"><a><strong>기술사</strong><i class="far fa-address-card"></i><br><br>3인<br>발송배전기술사</a></div>
			<div class="org_people_card"><a><strong>고급기술자</strong><i class="far fa-address-card"></i><br><br>2인<br>전기기사, 전기공사기사</a></div>
			<div class="org_people_card"><a><strong>중급기술자</strong><i class="far fa-address-card"></i><br><br>4인<br>전기기사, 전기공사기사, <br>소방기사</a></div>
			<div class="org_people_card"><a><strong>초급기술자</strong><i class="far fa-address-card"></i><br><br>3인<br>발송배전기술사</a></div>
			<div class="org_people_card"><a><strong>업무지원</strong><br><i class="fas fa-user-tie"></i><br><br>3인</a></div>
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