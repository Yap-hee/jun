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
	
	.resultBoardInsert{width: 90vw; height: auto; margin: 0 auto; padding:5vh;}
	
	.resultBoardInsert h2{font-size: 4vh; color:black; text-align: center; display: block; width: 85vw; height: 10vh;}
	
	.resultBoardInsert form{width: 85vw; height: auto; margin: 0 auto;}
	
	.resultInsert_box{width: 40vw; margin: 0 auto; border: 1px solid gray; padding:5vw;}
	
	.resultInsert_content{width: 30vw; height: 16vh;}
	
	.resultInsert_text{display: block; font-size: 2vh; height: 8vh; width: 30vw; line-height: 8vh;}
	
	.resultInsert_main{display: block; font-size: 2vh; height: 8vh; width: 30vw; line-height: 8vh;}
	
	.resultInsert_main input{ height: 6vh; width: 30vw;}
	
	.resultInsert_submit{width: 30vw; height: 16vh; align-items: center; margin: 0 auto;}
	
	#btn_submit{width: 14vw; height: 10vh; background-color: blue; color: white; display: inline-block; border: none; font-size: 2vh;}
	
	#btn_reset{width: 14vw; height: 10vh; background-color: red; color: white; display: inline-block; border:none; font-size: 2vh;}
	
	@media screen and (max-width: 960px){ body{margin-top: 0;}
		.resultBoardInsert{width: 90vw; height: auto; margin: 0 auto; padding:10vh;}
	}
	
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div class="wrap">
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
	<div class="resultBoardInsert">
		<h2>실적 입력</h2>
		<form action="resultBoardInsert.do" method="post" name="resultBoardInsert">
			<input type="hidden" name="rnum" value="${rnum }">
			<input type="hidden" name="id" value="${member.id}">
			<div class="resultInsert_box">
				<div class="resultInsert_content">
					<div class="resultInsert_text">용역 분야</div>
					<div class="resultInsert_main">
						<select name="rkind">
							<option value="전력">전력</option>
							<option value="신재생">신재생</option>
							<option value="소방시설">소방시설</option>
						</select>
					</div>
				</div>
				<div class="resultInsert_content">
					<div class="resultInsert_text">용역 수행기간</div>
					<div class="resultInsert_main">
						<input type="text" name="period" required="required" autofocus="autofocus" placeholder="1996.12 - 1997.02">
					</div>
				</div>
				<div class="resultInsert_content">
					<div class="resultInsert_text">용역명</div>
					<div class="resultInsert_main">
						<input type="text" name="rname" required="required" placeholder="용역명">
					</div>
				</div>
				<div class="resultInsert_content">
					<div class="resultInsert_text">발주처</div>
					<div class="resultInsert_main">
						<input type="text" name="rfrom" required="required" placeholder="발주처">
					</div>
				</div>
				<div class="resultInsert_content">
					<div class="resultInsert_text">비고</div>
					<div class="resultInsert_main">
						<input type="text" name="rextra" placeholder="비고">
					</div>
				</div>
				<div class="resultInsert_submit">
					<div class="submit_btn"><input type="submit" id="btn_submit">
					<input type="reset" id="btn_reset" value="취소"></div>
				</div>
				</div>
			</form>
		</div>
		
</div>
</body>
</html>