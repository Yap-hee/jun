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
.resultBoardBox{width: 95vw; margin: 0 auto;}

@media screen and (min-width:961px){
	.result_box{width: 95vw; height: 10vh; margin: 0 auto;  align-items: center;padding-top:5vh;}
	
	.result_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: 100% auto; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.result_header a{display:block; height:40vh;font-size: 4vh; color: black; line-height: 130%;}
	
	.result_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%;}
	
	.result_menu{display: none;}
	
	.result_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.result_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.result_menu_ul_small{display: none;}
	
	.result_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.result_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.result_menu_ul li a.click{color:#64CD3C; background-color: white; font-size: 2.5vh; border-top: 2px solid #64CD3C;  font-weight: bold;}
	
	
	#padding{ padding-top: 10px 10px; }
	
	.resultBoardList1{display:none;}
	.resultBoardList2{display:none;}
	.resultBoardList3{display:none;}
	.resultBoardList4{display:none;}
	
	.result_box div.click{display: block;}
	
	.resultList{width: 95vw;}
	
	.resultList_columns{ display:flex; border-bottom:0.5px groove #dcdcdc; align-items: center; justify-content: space-between; height: auto;}
	
	.resultList_column1{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:5vw; text-align: center;}
	
	.resultList_column2{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:10vw; text-align: center;}
	
	.resultList_column3{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:15vw; text-align: left;}
	
	.resultList_column4{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:30vw; text-align: left;}
	
	.resultList_column5{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:20vw; text-align: left;}
	
	.resultList_column6{display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:10vw; text-align: center;}
	
	.resultList_column7{display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.4vw; width:5vw; text-align: center;}
	
	.resultList_contents{ height:auto; display: flex; align-items: center; justify-content: space-between; border-bottom:0.5px solid #dcdcdc; }
	
	/* .resultList_contents:hover{ background-color: gray; } */
	
	.resultList_content{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:90vw; text-align: left;}
	
	.resultList_content1{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:5vw; text-align: center;}
	
	.resultList_content2{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:10vw; text-align: center;}
	
	.resultList_content3{ display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:15vw; text-align: left;}
	
	.resultList_content4{display:inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:30vw; text-align: left;}
	
	.resultList_content5{display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:20vw; text-align: left;}
	
	.resultList_content6{display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:10vw; text-align: center;}
	
	.resultList_content7{display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; width:5vw; text-align: center; padding-top:2vh;}
	
	.resultList_delete{ width:100%; text-align: center; padding: 8px 12px;}
	
	.result_updatebtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #80E12A; background-color: white; border: none; padding-bottom:1vh;}
	
	.result_deletebtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #FF9100; background-color: white; border: none;}

	.result_submitbtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #1E90FF; background-color: white; border: none;}
	
	.result_canbtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #CD1039; background-color: white; border: none; padding-top:1vh;}
}
@media screen and (min-width: 769px) and (max-width: 960px){
	.result_box{width: 95vw; height: 10vh; margin: 0 auto;  align-items: center;padding-top:5vh;}
	
	.result_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: auto 50vh; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.result_header a{display:block; height:40vh;font-size: 4vh; color: black; line-height: 130%;}
	
	.result_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%;}
	
	.result_menu{display: none;}
	
	.result_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.result_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.result_menu_ul_small{display: none;}
	
	.result_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.result_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.result_menu_ul li a.click{color:#64CD3C; background-color: white; font-size: 2.5vh; border-top: 2px solid #64CD3C;  font-weight: bold;}
	
	
	#padding{ padding-top: 10px 10px; }
	
	.resultBoardList1{display:none;}
	.resultBoardList2{display:none;}
	.resultBoardList3{display:none;}
	.resultBoardList4{display:none;}
	
	.result_box div.click{display: block;}
	
	.resultList{width: 95vw;}
	
	.resultList_columns{ display:flex; border-bottom:0.5px solid #dcdcdc; align-items: center; justify-content: space-between; height: auto;}
	
	.resultList_column1{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:5vw; text-align: center;}
	
	.resultList_column2{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:10vw; text-align: center;}
	
	.resultList_column3{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:15vw; text-align: left;}
	
	.resultList_column4{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:30vw; text-align: left;}
	
	.resultList_column5{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:20vw; text-align: left;}
	
	.resultList_column6{display: inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:10vw; text-align: center;}
	
	.resultList_column7{display: inline-block; height: 8vh; line-height: 8vh; font-size: 1.2vw; width:5vw; text-align: center;}
	
	.resultList_contents{ height:auto; display: flex; align-items: center; justify-content: space-between; border-bottom:0.5px groove #dcdcdc; }
	
	/* .resultList_contents:hover{ background-color: gray; } */
	
	.resultList_content{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1vw; width:90vw; text-align: left;}
	
	.resultList_content1{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1vw; width:5vw; text-align: center;}
	
	.resultList_content2{display:inline-block;height: 8vh; line-height: 8vh; font-size: 1vw; width:10vw; text-align: center;}
	
	.resultList_content3{ display:inline-block;height: 8vh; line-height: 8vh; font-size: 1vw; width:15vw; text-align: left;}
	
	.resultList_content4{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1vw; width:30vw; text-align: left;}
	
	.resultList_content5{display: inline-block; height: 8vh; line-height: 8vh; font-size: 1vw; width:20vw; text-align: left;}
	
	.resultList_content6{display: inline-block;height: 8vh; line-height: 8vh; font-size: 1vw; width:10vw; text-align: center;}
	
	.resultList_content7{display: inline-block; height: 8vh; line-height: 8vh; font-size: 1vw; width:5vw; text-align: center; padding-top:2vh;}
	
	.resultList_delete{ width:100%; text-align: center; padding: 8px 12px;}
	
	.result_updatebtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #80E12A; background-color: white; border: none; padding-bottom:1vh;}
	
	.result_deletebtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #FF9100; background-color: white; border: none;}

	.result_submitbtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #1E90FF; background-color: white; border: none;}
	
	.result_canbtn{width:5vw; height: 3vh; line-height:3vh; font-size: 1vw; color: #CD1039; background-color: white; border: none; padding-top:1vh;}
}

@media screen and (max-width:768px){
	.result_box{width: 100vw; height: 10vh; margin: 0 auto;  align-items: center;}
	
	.result_header{max-width: 100vw; height: 35vw; background-image: url("resources/images/building2.jpg");
		background-size: auto 35vw; align-items: center; text-align: center; background-repeat: no-repeat;}
	
	.result_header a{display:block;font-size: 4vh; color: #64CD3C; line-height: 130%; font-weight: bold;}
	
	.result_header a strong{display:block;padding:15vw 0 2vw 0; font-size: 3vh; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%; font-weight: bold;}
	
	.result_menu{ margin:0 auto; display:flex; width: 100vw; height:8vh;  align-items: center; flex-direction: column;  overflow: hidden;  transition-property:height; transition-duration:0.2s;}
	
	.result_menu_big{display: none;}
	
	.result_menu.on{height: 40vh;}
	
	.result_menu_ul_small{height:40vh; width: 100vw; display: block; justify-content: space-between; align-items: center; flex-direction: column;
		list-style: none; height: 40vh;}
	
	.result_menu_ul{display: none;}
	
	.result_menu_ul_small li{margin:0 auto;width: 100vw; height: 8vh; line-height: 8vh; border-top: 0.5px solid gray; display: flex; background-color: #006400;}
	
	.result_menu_ul_small li a{display:block;width: 100vw; height: 8vh; align-items: flex-start; text-align: left;
		font-size:3vh; line-height: 8vh; letter-spacing :0.1vw; color: white; 
		padding:0 3vh 0 3vh;}
	
	.result_menu_btn a{color: blue;}
	.result_menu_ul_small li a.btn{color: #5CE75C;}
	.result_menu_ul_small li a.click{background-color: #64CD3C; color:white;}
	
	.result_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.result_menu_ul_small{display: block;}
	
	.result_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.result_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.result_menu_ul li a.click{color:#32A4FF; background-color: white; font-size: 2.5vh; border-top: 2px solid #32A4FF;  font-weight: bold;}
	
	
	#padding{ padding-top: 10px 10px; }
	
	.resultBoardList1{display:none;}
	.resultBoardList2{display:none;}
	.resultBoardList3{display:none;}
	.resultBoardList4{display:none;}
	
	.result_box div.click{display: block;}
	
	.resultList{width: 95vw;}
	
	.resultList td{overflow: scroll;}
	
	.resultList_columns{ display:flex; border-bottom:0.5px solid #dcdcdc; align-items: center; justify-content: space-between; height: auto;}
	
	.resultList_column1{display: none; height: 6vh; line-height: 6vh; font-size: 2vw; width:5vw; text-align: center;}
	
	.resultList_column2{display:inline-block; height: 6vh; line-height: 6vh; font-size: 2vw; width:15vw; text-align: center;}
	
	.resultList_column3{display:inline-block; height: 6vh; line-height: 6vh; font-size: 2vw; width:20vw; text-align: left;}
	
	.resultList_column4{display:inline-block; height: 6vh; line-height: 6vh; font-size: 2vw; width:30vw; text-align: left;}
	
	.resultList_column5{display:inline-block; height: 6vh; line-height: 6vh; font-size: 2vw; width:20vw; text-align: left;}
	
	.resultList_column6{display: none; height: 6vh; line-height: 6vh; font-size: 2vw; width:10vw; text-align: center;}
	
	.resultList_column7{display: inline-block; height: 6vh; line-height: 6vh; font-size: 2vw; width:10vw; text-align: center;}
	
	.resultList_contents{ height:auto; display: flex; align-items: center; justify-content: space-between; border-bottom:0.5px groove #dcdcdc; }
	
	/* .resultList_contents:hover{ background-color: gray; } */
	
	.resultList_content{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:90vw; text-align: left;}
	
	.resultList_content1{display: none; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:5vw; text-align: center;}
	
	.resultList_content2{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:15vw; text-align: center;}
	
	.resultList_content3{ display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:20vw; text-align: left;}
	
	.resultList_content4{display:inline-block; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:30vw; text-align: left;}
	
	.resultList_content5{display: inline-block; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:20vw; text-align: left;}
	
	.resultList_content6{display: none; height: 8vh; line-height: 8vh; font-size: 1.5vw; width:10vw; text-align: center;}
	
	.resultList_content7{display: inline-block; height: 8vh; line-height: 8vh;font-size: 1.5vw; width:10vw; text-align: center;}
	
	.resultList_delete{ width:100%; text-align: center; padding: 8px 12px;}
	
	.result_updatebtn{width:10vw; height: 3vh; line-height:3vh; font-size: 1.5vw; color: #80E12A; background-color: white; border: none; }
	
	.result_deletebtn{width:10vw; height: 3vh; line-height:3vh; font-size: 1.5vw; color: #FF9100; background-color: white; border: none;}

	.result_submitbtn{width:10vw; height: 3vh; line-height:3vh; font-size: 1.5vw; color: #1E90FF; background-color: white; border: none;}
	
	.result_canbtn{width:10vw; height: 3vh; line-height:3vh; font-size: 1.5vw; color: #CD1039; background-color: white; border: none;}
}

</style>
<script type="text/javascript">
	function resultDelete(rnum) {
		var formObj2 = $("form[name='deleteForm']");
		$('#drnum').attr("value", rnum);
		formObj2.attr("action","resultDelete.do");
		formObj2.submit();
	}
	function resultUpdate(rnum) {
/* 		input, textarea을 읽을 때는 val()
		td을 읽을 때는 text() */
		var rkind = $('#td_rkind_'+rnum).text();
		var period = $('#td_period_'+rnum).text();
		var rname = $('#td_rname_'+rnum).text();
		var rfrom = $('#td_rfrom_'+rnum).text();
		var rextra = $('#td_rextra_'+rnum).text();
		// 읽은 글을 편집할 수 있도록 input에 입력
		$('#td_rkind_'+rnum).html("<select id='rt5'><option value='전력'>전력</option><option value='신재생'>신재생</option><option value='소방시설'>소방시설</option>");
		$('#td_period_'+rnum).html("<input type='text' id='rt' value='"+period+"'>");
		$('#td_rname_'+rnum).html("<input type='text' id='rt2' value='"+rname+"'>");
		$('#td_rfrom_'+rnum).html("<input type='text' id='rt3' value='"+rfrom+"'>");
		$('#td_rextra_'+rnum).html("<input type='text' id='rt4' value='"+rextra+"'>");
		$('#btn_'+rnum).html("<button onclick='up("+rnum+")' class='result_submitbtn'>확인</button> "+
				"<button onclick='lst("+rnum+
				")' class='result_canbtn'>취소</button>");
	}
	function up(rnum) {
		var sendperiod = $('#rt').val();
		var sendrname = $('#rt2').val();
		var sendrfrom = $('#rt3').val();
		var sendrextra = $('#rt4').val();
		var sendrkind = $('#rt5').val();
		
		var formObj3 = $("form[name='updateForm']");
		$('#urnum').attr("value", rnum);
		$('#urkind').attr("value", sendrkind);
		$('#uperiod').attr("value", sendperiod);
		$('#urname').attr("value", sendrname);
		$('#urfrom').attr("value", sendrfrom);
		$('#urextra').attr("value", sendrextra);
		formObj3.attr("action","resultUpdate.do");
		formObj3.submit();

	}
	function lst(rnum) {
		history.go(0);
	}
	
	$(document).ready(function() {
		const result1 = document.querySelector('.result_menu1')
		const result2 = document.querySelector('.result_menu2')
		const result3 = document.querySelector('.result_menu3')
		const result4 = document.querySelector('.result_menu4')
		
		const resultList1 = document.querySelector('.resultBoardList1')
		const resultList2 = document.querySelector('.resultBoardList2')
		const resultList3 = document.querySelector('.resultBoardList3')
		const resultList4 = document.querySelector('.resultBoardList4')
		
		$(result1).click(function() {
			result1.classList.add('click');
			result2.classList.remove('click');
			result3.classList.remove('click');
			result4.classList.remove('click');
			
			resultList1.classList.add('click');
			resultList2.classList.remove('click');
			resultList3.classList.remove('click');
			resultList4.classList.remove('click');
			
			
			/* 토글로하지말고 분리해서 add remove로 해야함 */
		});
		
		$(result2).click(function() {
			result1.classList.remove('click');
			result2.classList.add('click');
			result3.classList.remove('click');
			result4.classList.remove('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.add('click');
			resultList3.classList.remove('click');
			resultList4.classList.remove('click');
		});
		
		$(result3).click(function() {
			result1.classList.remove('click');
			result2.classList.remove('click');
			result3.classList.add('click');
			result4.classList.remove('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.remove('click');
			resultList3.classList.add('click');
			resultList4.classList.remove('click');
		});
		
		$(result4).click(function() {
			result1.classList.remove('click');
			result2.classList.remove('click');
			result3.classList.remove('click');
			result4.classList.add('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.remove('click');
			resultList3.classList.remove('click');
			resultList4.classList.add('click');
		});
		
		const result_click = document.querySelector('.result_menu_ul_small li a.btn');
		const result = document.querySelector('.result_menu');
		$(result_click).click(function() {
			result.classList.toggle('on');
		});
		
		const result11 = document.querySelector('#result1');
		const result22 = document.querySelector('#result2');
		const result33 = document.querySelector('#result3');
		const result44 = document.querySelector('#result4');
		
		const result111 = document.querySelector('.result_menu11')
		const result222 = document.querySelector('.result_menu22')
		const result333 = document.querySelector('.result_menu33')
		const result444 = document.querySelector('.result_menu44')
		$(result11).click(function() {
			result111.classList.add('click');
			result222.classList.remove('click');
			result333.classList.remove('click');
			result444.classList.remove('click');
			
			resultList1.classList.add('click');
			resultList2.classList.remove('click');
			resultList3.classList.remove('click');
			resultList4.classList.remove('click');
			var result_value = $('#result1').text();
			$("#result_result").text(result_value);
		});
		
		$(result22).click(function() {
			result111.classList.remove('click');
			result222.classList.add('click');
			result333.classList.remove('click');
			result444.classList.remove('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.add('click');
			resultList3.classList.remove('click');
			resultList4.classList.remove('click');
			var result_value = $('#result2').text();
			$("#result_result").text(result_value);
		});
		
		$(result33).click(function() {
			result111.classList.remove('click');
			result222.classList.remove('click');
			result333.classList.add('click');
			result444.classList.remove('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.remove('click');
			resultList3.classList.add('click');
			resultList4.classList.remove('click');
			var result_value = $('#result3').text();
			$("#result_result").text(result_value);
		});
		
		$(result44).click(function() {
			result111.classList.remove('click');
			result222.classList.remove('click');
			result333.classList.remove('click');
			result444.classList.add('click');
			
			resultList1.classList.remove('click');
			resultList2.classList.remove('click');
			resultList3.classList.remove('click');
			resultList4.classList.add('click');
			var result_value = $('#result4').text();
			$("#result_result").text(result_value);
		});
		
	});
	
</script></head><body>
</head>
<body>
<form name="updateForm" action="resultUpdate.do" method="post">
	<input type="hidden" name="rnum" id="urnum" value="">
	<input type="hidden" name="period" id="uperiod" value="">
	<input type="hidden" name="rname" id="urname" value="">
	<input type="hidden" name="rfrom" id="urfrom" value="">
	<input type="hidden" name="rextra" id="urextra" value="">
	<input type="hidden" name="rkind" id="urkind" value="">
</form>
<form name="deleteForm" action="resultDelete.do" method="post">
	<input type="hidden" name="rnum" id="drnum" value="">
</form>
<div class="wrap" align="center" id="no-drag">
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
		<div class="resultBoardBox">
			<div class="result_header" style="z-index: 1">
				<a><strong>RESULT</strong>사업실적</a>
				<div class="result_menu_big">
					<ul class="result_menu_ul">
						<li><a href="#this" class="result_menu1 click">종합</a></li>
						<li><a href="#this" class="result_menu2">전력</a></li>
						<li><a href="#this" class="result_menu3">신재생</a></li>
						<li><a href="#this" class="result_menu4">소방시설</a></li>
					</ul>
				</div>
			</div>
			<div class="result_box" style="z-index: 1">
				<div class="result_menu">
					<ul class="result_menu_ul_small">
						<li id="result_menu_btn"><a href="#this" class="btn" id="result_result">종합</a></li>
						<li><a href="#this" class="result_menu11 click" id="result1">종합</a></li>
						<li><a href="#this" class="result_menu22" id="result2">전력</a></li>
						<li><a href="#this" class="result_menu33" id="result3">신재생</a></li>
						<li><a href="#this" class="result_menu44" id="result4">소방시설</a></li>
					</ul>
				</div>
				<div class="resultBoardList1 click">
					<table class="resultList">
						<tr class="resultList_columns">
							<td class="resultList_column1">번호</td>
							<td class="resultList_column2">종류</td>
							<td class="resultList_column3">용역 수행기간</td>
							<td class="resultList_column4">용역명</td>
							<td class="resultList_column5">발주처</td>
							<td class="resultList_column6">비고</td>
							<c:if test="${not empty id}">
								<td class="resultList_column7">수정</td>		
							</c:if>
						</tr>
						<c:if test="${empty resultBoardList}">
							<tr class="resultList_contents">
								<td class="resultList_content">게시글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty resultBoardList }">
							<c:forEach var="rboard" items="${resultBoardList }">
								<tr class="resultList_contents">
									<td class="resultList_content1" id="td_${rboard.rnum }">${rboard.rnum }</td>
									<td class="resultList_content2" id="td_rkind_${rboard.rnum }">${rboard.rkind }</td>
									<td class="resultList_content3" id="td_period_${rboard.rnum }">${rboard.period }</td>
									<td class="resultList_content4" id="td_rname_${rboard.rnum }">${rboard.rname }</td>
									<td class="resultList_content5" id="td_rfrom_${rboard.rnum }">${rboard.rfrom }</td>
									<td class="resultList_content6" id="td_rextra_${rboard.rnum }">${rboard.rextra }</td>
									<c:if test="${not empty id}">
										<td id="btn_${rboard.rnum}" class="resultList_content7">
											<button class="result_updatebtn"
												onclick="resultUpdate(${rboard.rnum})">수정</button>
											<button class="result_deletebtn"
												onclick="resultDelete(${rboard.rnum})">삭제</button>
										</td>		
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			
				<div class="resultBoardList2">
					<table class="resultList">
						<tr class="resultList_columns">
							<td class="resultList_column1">번호</td>
							<td class="resultList_column2">종류</td>
							<td class="resultList_column3">용역 수행기간</td>
							<td class="resultList_column4">용역명</td>
							<td class="resultList_column5">발주처</td>
							<td class="resultList_column6">비고</td>
							<c:if test="${not empty id}">
								<td class="resultList_column7">수정</td>		
							</c:if>
						</tr>
						<c:if test="${empty resultBoardList2}">
							<tr class="resultList_contents">
								<td class="resultList_content">게시글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty resultBoardList2 }">
							<c:forEach var="rboard" items="${resultBoardList2 }">
								<tr class="resultList_contents">
									<td class="resultList_content1" id="td_${rboard.rnum }">${rboard.rnum }</td>
									<td class="resultList_content2" id="td_rkind_${rboard.rnum }">${rboard.rkind }</td>
									<td class="resultList_content3" id="td_period_${rboard.rnum }">${rboard.period }</td>
									<td class="resultList_content4" id="td_rname_${rboard.rnum }">${rboard.rname }</td>
									<td class="resultList_content5" id="td_rfrom_${rboard.rnum }">${rboard.rfrom }</td>
									<td class="resultList_content6" id="td_rextra_${rboard.rnum }">${rboard.rextra }</td>
									<c:if test="${not empty id}">
										<td id="btn_${rboard.rnum}" class="resultList_content7">
											<button class="result_updatebtn"
												onclick="resultUpdate(${rboard.rnum})">수정</button>
											<button class="result_deletebtn"
												onclick="resultDelete(${rboard.rnum})">삭제</button>
										</td>		
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			
				<div class="resultBoardList3">
					<table class="resultList">
						<tr class="resultList_columns">
							<td class="resultList_column1">번호</td>
							<td class="resultList_column2">종류</td>
							<td class="resultList_column3">용역 수행기간</td>
							<td class="resultList_column4">용역명</td>
							<td class="resultList_column5">발주처</td>
							<td class="resultList_column6">비고</td>
							<c:if test="${not empty id}">
								<td class="resultList_column7">수정</td>		
							</c:if>
						</tr>
						<c:if test="${empty resultBoardList3}">
							<tr class="resultList_contents">
								<td class="resultList_content">게시글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty resultBoardList3 }">
							<c:forEach var="rboard" items="${resultBoardList3 }">
								<tr class="resultList_contents">
									<td class="resultList_content1" id="td_${rboard.rnum }">${rboard.rnum }</td>
									<td class="resultList_content2" id="td_rkind_${rboard.rnum }">${rboard.rkind }</td>
									<td class="resultList_content3" id="td_period_${rboard.rnum }">${rboard.period }</td>
									<td class="resultList_content4" id="td_rname_${rboard.rnum }">${rboard.rname }</td>
									<td class="resultList_content5" id="td_rfrom_${rboard.rnum }">${rboard.rfrom }</td>
									<td class="resultList_content6" id="td_rextra_${rboard.rnum }">${rboard.rextra }</td>
									<c:if test="${not empty id}">
										<td id="btn_${rboard.rnum}" class="resultList_content7">
											<button class="result_updatebtn"
												onclick="resultUpdate(${rboard.rnum})">수정</button>
											<button class="result_deletebtn"
												onclick="resultDelete(${rboard.rnum})">삭제</button>
										</td>		
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			
				<div class="resultBoardList4">
					<table class="resultList">
						<tr class="resultList_columns">
							<td class="resultList_column1">번호</td>
							<td class="resultList_column2">종류</td>
							<td class="resultList_column3">용역 수행기간</td>
							<td class="resultList_column4">용역명</td>
							<td class="resultList_column5">발주처</td>
							<td class="resultList_column6">비고</td>
							<c:if test="${not empty id}">
								<td class="resultList_column7">수정</td>		
							</c:if>
						</tr>
						<c:if test="${empty resultBoardList4}">
							<tr class="resultList_contents">
								<td class="resultList_content">게시글이 없습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty resultBoardList4 }">
							<c:forEach var="rboard" items="${resultBoardList4 }">
								<tr class="resultList_contents">
									<td class="resultList_content1" id="td_${rboard.rnum }">${rboard.rnum }</td>
									<td class="resultList_content2" id="td_rkind_${rboard.rnum }">${rboard.rkind }</td>
									<td class="resultList_content3" id="td_period_${rboard.rnum }">${rboard.period }</td>
									<td class="resultList_content4" id="td_rname_${rboard.rnum }">${rboard.rname }</td>
									<td class="resultList_content5" id="td_rfrom_${rboard.rnum }">${rboard.rfrom }</td>
									<td class="resultList_content6" id="td_rextra_${rboard.rnum }">${rboard.rextra }</td>
									<c:if test="${not empty id}">
										<td id="btn_${rboard.rnum}" class="resultList_content7">
											<button class="result_updatebtn"
												onclick="resultUpdate(${rboard.rnum})">수정</button>
											<button class="result_deletebtn"
												onclick="resultDelete(${rboard.rnum})">삭제</button>
										</td>		
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			
				<!-- 페이징 -->
				<div align="center">
					<ul class="page">
						<c:if test="${pb2.startPage2 > pb2.pagePerBlock2 }">
							<li>
								<a href="boardList.do?pageNum=1&search2=${rboard.search2}&keyword2=${rboard.keyword2}">
									<span class="angle"><i class="fas fa-angle-double-left"></i></span>
								</a>
							</li>
							<li>
								<a href="boardList.do?pageNum2=${pb2.startPage2-1}&search2=${rboard.search2}&keyword2=${rboard.keyword2}">
									<span class="angle"><i class="fas fa-angle-left"></i></span> 
								</a>
							</li>
						</c:if>
		
						<c:forEach var="i" begin="${pb2.startPage2}" end="${pb2.endPage2}">
							<c:if test="${i == pb2.currentPage2 }">
								<li class="pageactive">
									<a href="resultBoardList.do?pageNum2=${i}&search2=${rboard.search2}&keyword2=${rboard.keyword2}">${i}</a>
								</li>
							</c:if>
							<c:if test="${i != pb2.currentPage2 }">
								<li>
									<a href="resultBoardList.do?pageNum2=${i}&search2=${rboard.search2}&keyword2=${rboard.keyword2}">${i}</a>
								</li>
							</c:if>
						</c:forEach>
						<c:if test="${pb2.endPage2 < pb2.totalPage2 }">
							<li>
								<a href="resultBoardList.do?pageNum2=${pb2.endPage2+1 }&search2=${rboard.search2}&keyword2=${rboard.keyword2}">
									<span class="angle"><i class="fas fa-angle-right"></i></span>
								</a>
							</li>
							<li>
								<a href="resultBoardList.do?pageNum2=${pb2.totalPage2}&search2=${rboard.search2}&keyword2=${rboard.keyword2}">
									<span class="angle"><i class="fas fa-angle-double-right"></i></span>
								</a>
							</li>
						</c:if>
		
					</ul>
				</div>
	
				<c:choose>
					<c:when test="${not empty id }">
						<div class="">
							<a class="btn btn-success" href="resultBoardInsertForm.do">성과 작성</a>
						</div>
					</c:when>
				</c:choose>
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
										Copyright © <a href="#"><strong>Yunjune
												Engineering Co.,Ltd</strong></a> All Rights Reserved.
									</address>
								</ul>
							</div>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
