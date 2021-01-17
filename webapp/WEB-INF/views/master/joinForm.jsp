<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../nav.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idchk() {
		if (!frm.id.value) {
			alert('아이디를 입력해주세요!')
			frm.id.focus();
			return false;
		}
		$.post('idChk.do', 'id=' + frm.id.value, function(data) {
			$('#disp').html(data);
		})

	}
	
	function sessionChk() {
		alert('로그인을 해주세요.');
	}
	function alreadyLogin() {
		alert('이미 로그인 되어 있습니다.')
	}
</script>
<style type="text/css">
	body{margin-top: 170px;}

	
	
	.joinbox{
		padding:8px 12px;
		align-items: center;
		align-content:center;
		justify-content: center;
	}
	
	.join_name{
		width: 100%;
		padding:8px 12px;
		align-items: center;
		text-align: center;
		justify-content: center;	
	}
	
	#frm{
		justify-content: center;
		align-items: center;
		
	}
	
	.join_contents{
		display: flex;
		justify-content: flex-start;
		padding: 8px 12px;
	}
	
	.join_content{
		display: inline-block;
		padding:8px 12px;
	}
	
	#label{
		width:100px;
		border-right:1px black solid;
	}

</style>
</head>
<body>
	<!-- <nav class="navbar">	
		<div class="navbar_logo">
            <a href="main.do" id="logo"><i class="fab fa-accusoft"></i></a>
            <a href="main.do">JUNWOO</a>
        </div>

		<ul class="navbar_menu">
			<br>
			<li><a href="#">회사소개</a></li>
			<li><a href="#">실적</a></li>
			<li><a href="#">조직도</a></li>
			<li><a href="boardList.do">공지사항</a></li>
			<li><a href="#">오시는길/연락</a></li>
		</ul>
		
		<ul class="navbar_icons">
			<li><button class="navbar_button">관리자 모드</button></li>
		</ul>

		<a href="#" class="navbar_toggleBtn"> 
			<i class="fas fa-bars"></i>
		</a>
	</nav> -->

	<!-- 회원가입 body -->
	<div class="joinbox">
		<div class="join_name"><h2>회원가입</h2></div>
		<form method="get" action="join.do" id="frm" name="frm" enctype="multipart/form-data" onsubmit="return chk()">
			<div class="join_contents">
				<div class="join_content" id="label">아이디</div>
				<div class="join_content">
					<input type="text" name="id" required="required" autofocus="autofocus">
					<input type="button" onclick="idchk()" value="중복체크">
				</div>
				<div class="err" id="disp"></div>
			</div>
			
			<div class="join_contents">
				<div class="join_content" id="label">비밀번호</div>
				<div class="join_content">
					<input type="password" name="password" required="required">
				</div>
			</div>
			
			<div class="join_contents">
				<div class="join_content" id="label">사번</div>
				<div class="join_content">
					<input type="text" name="eno" required="required">
				</div>
			</div>
			
			<div class="join_contents">
				<div class="join_content" id="label">이름</div>
				<div class="join_content">
					<input type="text" name="name" required="required">
				</div>
			</div>
			
			<div class="join_contents">
				<div class="join_content" id="label">이메일</div>
				<div class="join_content">
					<input type="text" name="email" required="required">@<input 
						type="text" name="email" required="required">
				</div>
			</div>

			<div class="join_contents">
				<div class="join_content" id="label">전화번호</div>
				<div class="join_content">
					<input type="text" name="phoneNumber" required="required" size="4">-<input
						type="text" name="phoneNumber" required="required" size="4">-<input
						type="text" name="phoneNumber" required="required" size="4">
				</div>
			</div>
			
			<div class="join_contents">
				<div class="join_content">
					<input type="submit" value="제출">
				</div>
				<div class="join_content">
					<input type="reset"  value="취소">
				</div>
			</div>
		</form>

	</div>
</body>
</html>