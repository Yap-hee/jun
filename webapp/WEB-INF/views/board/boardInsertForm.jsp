<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{margin-top: 170px;}
	pre{
	    background-color: #E6E6FA;
	    padding:10px;
	    overflow: auto;
	    white-space: pre-wrap;
	} 
</style>
<script type="text/javascript">
$(document).ready(function() {
    $("a[name='file-delete']").on("click", function(e) {
        e.preventDefault();
        deleteFile($(this));
    });
})

function addFile() {
    var str = "<div class='file-group'><input type='file' name='file'><a href='#this' name='file-delete'>삭제</a></div>";
    $("#file-list").append(str);
    $("a[name='file-delete']").on("click", function(e) {
        e.preventDefault();
        deleteFile($(this));
    });
}

function deleteFile(obj) {
    obj.parent().remove();
}


</script>
</head>
<body>
	<div class="container" align="center">
	<h2 class="text-primary">게시글 입력</h2>
	<form action="boardInsert.do" method="post" name="boardInsert" class="form" enctype="multipart/form-data"> 
		<input type="number" name="num" value="${num}">
		<input type="hidden" name="id" value="${member.id}">
		<table class="table table-hover table-bordered">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject" required="required" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${member.id }</td>
			</tr>
	
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="5" cols="100" name="content" required="required" style="resize: none;">
					</textarea>
				</td>
			</tr>
			<tr>
				<td scope="row">첨부파일</td> 
				<td>
					<div class="form-group" id="file-list">
						<a href="#this" onclick="addFile()">파일추가</a>
						<div class="file-group">
							<input multiple="multiple" type="file" name="file"> 
							<a href="#this" name="file-delete">삭제</a>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" class="btn btn-success" id="btn_submit">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>