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
				<li><a href="#">사업소개</a>
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
				<li><a href="introduce_main.do" class="click">회사소개</a></li>
				<li><a href="introduce_history.do">연혁</a></li>
				<li><a href="introduce_organization.do">조직도</a></li>
				<li><a href="introduce_map.do">오시는길</a></li>
			</ul>
		</div>
	</div>
	<div class="intro_box" style="z-index: 1">
		<div class="intro_menu">
			<ul class="intro_menu_ul_small">
				<li><a href="#this" class="btn">회사소개</a></li>
				<li><a href="introduce_main.do" class="click">회사소개</a></li>
				<li><a href="introduce_history.do">연혁</a></li>
				<li><a href="introduce_organization.do">조직도</a></li>
				<li><a href="introduce_map.do">오시는길</a></li>
			</ul>
		</div>
		<div class="intro_submenu" style="z-index: 1">
			<ul class="intro_submenu_ul">
				<li><a href="#this" class="ceo_btn click">대표이사 인사말</a></li>
				<li><a href="#this" class="cor_btn">회사소개</a></li>
			</ul>
		</div>
		<div class="intro_ceo" style="z-index: 1">
			<div class="intro_text">
				<div class="intro_text_part">
					<p id="text">저희 홈페이지를 방문해주셔서 감사드립니다.</p>
					<p>윤준엔지니어링(주)이 전력기술엔지니어링과 신재생에너지사업의 파트너로 새롭게 출발합니다. 
						그동안 쌓아온 경험과 경륜을 합하여 고객만족을 위하여 최선을 다하겠습니다. </p>
					<p>대용량 태양광발전설비, 에너지저장장치(ESS), 풍력발전소 설계는 물론 다수의 초고압변전소와 송전선로 프로젝트를 
						수행한 경험을 바탕으로 최적의 발전설비와 송변전설비를 구축하는 파트너로서의 역할을 충실히 수행할 것입니다.</p>
					<p>저희 임직원은 항상 고객만족을 위해서 최선을 다하는 마음자세로 고객을 대하겠습니다. 풍부한 기술자료와 프로젝트 수행경험에서 
						체득된 노하우를 고객의 입장에서 생각하고 실천하도록 하겠습니다.</p>
					<p>전 세계 신재생에너지 글로벌 시장을 향하여 매진하도록 하겠습니다.</p>
					<p>새롭게 시작하는 저희 윤준엔지니어링(주)을 응원해주시고 격려해주시길 부탁드립니다.</p>
					<p>감사합니다.</p>
					<p>이현구 배상</p>
				</div>
				<div class="intro_text_end">
					<h1>대표이사 이현구</h1>
					<h2>대표이사 / 발송배전기술사 / 공학박사 </h2>
				</div>
			</div>
		</div>
		
		<div class="intro_cor" style="z-index: 1">
			<div class="cor_img"></div>
			<div class="cor_text">
				<div class="cor_text_box1">
					<div id="cor_text_box1_main">깨끗한 에너지, <br>윤준과 함께합니다.</div>
					<div id="cor_text_box1_sub">친환경 재생에너지<br>꼼꼼한 감리와 진취적인 방향성<br>윤준엔지니어링이 글로벌 에너지 회사로 도약합니다.</div>
				</div>
				<ul class="cor_int">
					<li><strong>회사명</strong>Yunjune Engineering CO.,LTD</li>
					<li><strong>설립일</strong>2020.##.##</li>
					<li><strong>대표자</strong>이현구</li>
					<li><strong>주요사업</strong>전기종합설계업, 전기종합감리업</li>
					<li><strong>보유면허</strong>종합설계업(전력설비), 종합감리업(전력설비), 소방시설설계업</li>
					<li><strong>주소</strong>서울특별시 금천구 가산디지털2로 98, 1동 608호(가산동,롯데IT캐슬)</li>
					<li><strong>전화번호</strong>02-851-8030</li>
					<li><strong>E-mail</strong>###@####.###</li>
				</ul>
				<div class="cor_text_box">
					<div id="cor_text_box_main">깨끗한 에너지, <br>윤준과 함께합니다.</div>
					<div id="cor_text_box_sub">친환경 재생에너지<br>꼼꼼한 감리와 진취적인 방향성<br>윤준엔지니어링이 글로벌 에너지 회사로 도약합니다.</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<footer id="footer">
		<div class="container footer">
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