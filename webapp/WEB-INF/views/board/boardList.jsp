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
		<a><strong>CORPORATION</strong>회사소개</a>
	</div>
	<div class="intro_menu">
		<ul class="intro_menu_ul_small">
			<li id="intro_menu_btn"><a href="#this" class="btn">공지사항</a></li>
		</ul>
	</div>
	<div class="list_box" align="center">
		<div class="list_text_box">
			<div class="list_text">공지사항</div>
			<div class="list_search">
				<!-- 검색 -->
				<div class="serach_box">
					<form action="boardList.do" class="serach_form">
						<input type="hidden" name="pageNum" value="1">
						<select name="search" class="search">
								<!-- c:forTokens items뒤에 있는 단어가 ,로 구분하여 차례로 4개 단어가 sh에 대입 -->
								<c:forTokens items="id,subject,content,subcon" delims="," var="sh" varStatus="i">
									<c:if test="${sh==board.search}">
										<option value="${sh }" selected="selected">${tit[i.index]}</option>
									</c:if>
									<c:if test="${sh!=board.search }">
										<option value="${sh }">${tit[i.index]}</option>
									</c:if>
								</c:forTokens>
						</select> 
						<input type="text" name="keyword" value="${board.keyword }" class="search_text">
						<button class="search_submit"><i class="fas fa-search"></i></button>
						<!-- <input type="submit" value="" class="search_submit"> -->
					</form>
				</div>
			</div>
		</div>
		<div class="list">
			<div class="list_contentbox">
				<c:if test="${empty boardList}">
					<div class="list_contents">
						<div class="list_content">
							<div >게시글이 없습니다</div>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty boardList }">
					<c:forEach var="board" items="${boardList }">		
						<c:if test="${board.del == 1}">
							<div class="list_contents">
								<div class="list_content1">${board.num }</div>
								<div class="list_content2" title="${board.content }">
									<a href="boardView.do?num=${board.num}&pageNum=${pb.currentPage}">${board.subject}</a>
								</div>
								<div class="list_content3"><span><i class="far fa-calendar-alt"></i></span>${board.reg_date }</div>
								<div class="list_content4"><span><i class="far fa-eye"></i></span>${board.readcount }</div>
							</div>
						</c:if>
						
						<c:if test="${board.del == 0 }">
							<div class="list_contents" align="center">
								<div class="list_delete" align="center">삭제된 글입니다</div>
							</div>
						</c:if>
					</c:forEach>
				</c:if>
			</div>
		</div>
		
		<div class="list2">
			<div class="list_contentbox">
				<c:if test="${empty boardList}">
					<div class="list_contents">
						<div class="list_content">
							<div >게시글이 없습니다</div>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty boardList }">
					<c:forEach var="board" items="${boardList }">		
						<c:if test="${board.del == 1}">
							<div class="list_contents">
								<div class="list_content1">${board.num }</div>
								<div class="list_content2" title="${board.content }">
									<a href="boardView.do?num=${board.num}&pageNum=${pb.currentPage}">${board.subject}</a>
								</div>
								<div class="list_content">
									<div class="list_content3"><span><i class="far fa-calendar-alt"></i></span>${board.reg_date }</div>
									<div class="list_content4"><span><i class="far fa-eye"></i></span>${board.readcount }</div>
								</div>
							</div>
						</c:if>
						
						<c:if test="${board.del == 0 }">
							<div class="list_contents" align="center">
								<div class="list_delete" align="center">삭제된 글입니다</div>
							</div>
						</c:if>
					</c:forEach>
				</c:if>
			</div>
		</div>
		
		<!-- 페이징 -->
		<div align="center">
			<ul class="page">
				<c:if test="${pb.startPage > pb.pagePerBlock }">
					<li>
						<a href="boardList.do?pageNum=1&search=${board.search}&keyword=${board.keyword}">
							<span class="angle"><i class="fas fa-angle-double-left"></i></span>
						</a>
					</li>
					<li>
						<a href="boardList.do?pageNum=${pb.startPage-1}&search=${board.search}&keyword=${board.keyword}">
							<span class="angle"><i class="fas fa-angle-left"></i></span> 
						</a>
					</li>
				</c:if>

				<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage}">
					<c:if test="${i == pb.currentPage }">
						<li class="pageactive">
							<a href="boardList.do?pageNum=${i}&search=${board.search}&keyword=${board.keyword}">${i}</a>
						</li>
					</c:if>
					<c:if test="${i != pb.currentPage }">
						<li>
							<a href="boardList.do?pageNum=${i}&search=${board.search}&keyword=${board.keyword}">${i}</a>
						</li>
					</c:if>
				</c:forEach>
				
				<c:if test="${pb.endPage < pb.totalPage }">
					<li>
						<a href="boardList.do?pageNum=${pb.endPage+1 }&search=${board.search}&keyword=${board.keyword}">
							<span class="angle"><i class="fas fa-angle-right"></i></span>
						</a>
					</li>
					<li>
						<a href="boardList.do?pageNum=${pb.totalPage}&search=${board.search}&keyword=${board.keyword}">
							<span class="angle"><i class="fas fa-angle-double-right"></i></span>
						</a>
					</li>
				</c:if>

			</ul>
		</div>
		<c:choose>
			<c:when test="${not empty id }">
				<div class="">
					<a class="btn btn-success" href="boardInsertForm.do?pageNum=1">게시글 입력</a>
				</div>
			</c:when>
		</c:choose>
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