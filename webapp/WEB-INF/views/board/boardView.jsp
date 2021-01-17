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

</style>
<script type="text/javascript">
$(function() {
	$('#boardDisp').load('boardList.do',"pageNum=${pageNum}");
});

function fn_fileDown(f_num){
	var formObj = $("form[name='readForm']");
	$("#f_num").attr("value", f_num);
	formObj.attr("action", "downloadFile.do");
	formObj.submit();
}



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

		<div class="intro_header" style="z-index: 1">
			<a><strong>NOTICE</strong>공지사항</a>
		</div>
		<div class="intro_menu">
			<ul class="intro_menu_ul_small">
				<li id="intro_menu_btn"><a href="#this" class="btn">공지사항</a></li>
			</ul>
		</div>
		<div class="view_box" align="center">
			<input type="hidden" name="num" value="${board.num }">
			<c:forEach var="list" items="${list }"> 
				<input type="hidden" name="num" value="${list.f_num }"> 		 
			</c:forEach>
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="f_num" name="f_num" value=""> 
			</form>
			 
			<div class="list_text_box">
				<div class="list_text">공지사항</div>
			</div>
		 
			<div class="view_contents">
				<div class="view_subjects">
					<div class="view_subject">${board.subject }</div>
					<div class="view_other">
						<div class="view_reg">
							<span><i class="far fa-calendar-alt"></i></span>${board.reg_date }</div>
						<div class="view_read">
							<span><i class="far fa-eye"></i></span>${board.readcount }</div>
					</div>
				</div>
				<div class="view_texts">
					<div class="view_text"><pre>${board.content }</pre></div>
					<div class="view_files"> 
						<div class="view_file_name">첨부파일</div>
						<div class="view_file">
							<c:forEach var="list" items="${list }"> 
								<a href="#this" onclick="fn_fileDown('${list.f_num}'); return false;">${list.org_file_name } (${list.file_size }kb)</a>  
							</c:forEach>  
						</div>
					</div>
				</div>

				<div class="view_list">
					<a href="boardList.do?pageNum=${pageNum}" class="view_list_btn">목록으로</a>
						<c:choose>
							<c:when test="${not empty id }">
								<a class="view_update_btn"
									href="boardUpdateForm.do?num=${board.num}&pageNum=${pageNum}">수정</a>
								<a class="view_delete_btn"
									href="boardDelete.do?num=${board.num}&pageNum=${pageNum}">삭제</a>
							</c:when>
						</c:choose>
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
								Copyright © <a href="#"><strong>Yunjune Engineering
										Co.,Ltd</strong></a> All Rights Reserved.
							</address>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>