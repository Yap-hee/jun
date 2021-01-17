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
</style>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form[name='updateForm']");
	
	$(document).on("click","#fileDel", function(){
		$(this).parent().remove();
	})
	
	fn_addFile();
})


function fn_addFile(){
	var fileIndex = 1;
	$(".fileAdd_btn").on("click", function(){
		$("#fileIndex").append("<div><input type='file' style='float:left;' name='file'><button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
	});
	$(document).on("click","#fileDelBtn", function(){
		$(this).parent().remove();
				
	});
}
 		
var fileNoArry = new Array();
var fileNameArry = new Array();
function fn_del(value, name){
		
	fileNoArry.push(value);
	fileNameArry.push(name);
	$("#fileNoDel").attr("value", fileNoArry);
	$("#fileNameDel").attr("value", fileNameArry);
}
</script>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">게시글 수정</h2>	
	<form action="boardUpdate.do" method="post" name="updateForm" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${board.num}">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
		<input type="hidden" id="fileNameDel" name="fileNameDel[]" value=""> 
		<table class="table table-bordered">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject" required="required" autofocus="autofocus" value="${board.subject }">
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${member.id }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><pre>
					<textarea rows="5" cols="40" required="required" name="content">${board.content }</textarea></pre>
				</td>
			</tr>
			<tr>
				<th scope="row">첨부파일</th>
				<td colspan="3" id="fileIndex">
					<div id="fileDiv">
						<button type="button" class="fileAdd_btn">파일추가</button>
						<c:forEach var="file" items="${fileList }" varStatus="var">
							<div>
								<input type="hidden" id="f_num" name="f_num_${var.index}" value="${file.F_NUM }"> 
								<input type="hidden" id="f_num" name="f_num" value="f_num_${var.index}">
								<a href="#" id="fileName">${file.ORG_FILE_NAME }</a>(${file.FILE_SIZE}kb)
								<button id="fileDel" onclick="fn_del('${file.F_NUM}','f_num_${var.index}');" type="button">삭제</button>
								<br>
							</div>
						</c:forEach>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" class="btn btn-success">
				</td>
			</tr>
		</table>
	</form>
	<a href="boardList.do?pageNum=${pageNum}">게시글 목록</a>
</div>
</body>
</html>