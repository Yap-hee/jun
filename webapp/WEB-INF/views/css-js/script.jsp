<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
$(document).ready(function() {
	const toggleBtn = document.querySelector('.navbar_toggleBtn');
	const menu = document.querySelector('.navbar_menu');
	const icons = document.querySelector('.navbar_icons');
	$(toggleBtn).click(function() {
		menu.classList.toggle('active');
		icons.classList.toggle('active');
	});
});
</script>
<body>

</body>
</html>