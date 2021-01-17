<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@1,500&display=swap" rel="stylesheet">
<style type="text/css">

body{
    margin:0;
    font-family: 'Noto Sans KR', sans-serif;
}

a{text-decoration: none; color: black;}
a:link {text-decoration: none; color: #646464;}
a:visited {text-decoration: none; color: #646464;}
a:active {text-decoration: none;  color: blue;}
a:hover {text-decoration: none; color: #646464;}

#no-drag {-ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select:none;}

footer{position: static; left: 0; bottom: 0; display: block;}

#footer{ width: 100%; height: 10vw; margin:0 auto; align-items: center; border-top: 1px solid #cdcdcd;}

.container.footer{height: 10vw; margin:0 auto; align-items: center;}

.row{ justify-content: center; align-items: center; }

.footer{margin:0 auto; display:flex; align-items: center; text-align: center; padding: 3vh 5vh; justify-content: center; }

.footer ul li{margin:0 auto; position:relative; display: inline-block; padding: 0 1vh 0 1vh; white-space: nowrap; font-size: 1.5vh;}

.footer li:first-child:before { width:0; }

.footer address{margin:0 auto; padding-top:1vh; font-size: 1.5vh;}

.page{max-width: 50vw; margin: 0 auto; flex-direction: row; display: flex; height: 8vh; line-height:8vh;padding:1.5vh 0 1.5vh;}
	
/* 페이징 */
.page li{width: 3vw; height: 5vh; line-height: 5vh; margin: 0 auto;}
.page li a{color: black; font-size: 2vh; display: block; width: 3vw; height: 5vh; line-height: 5vh;}
.page li a:active{color: green;}
.pageactive {color:red; border:0.5px solid green; border-radius: 4px;}
	
.angle{display: block; height: 5vh; line-height:5vh; width: 3vw;  color:green; padding:1.5vh 0 1.5vh 0;}

@media screen and (min-width:961px){
	body{
		margin-top:72px;
	}
	
/* main */
	.wrap{padding:0; margin:0 auto; width:100%; max-height: 100%;}
	
	.main_1st {justify-content:flex-end; padding:0; margin:0; max-width: 100%; height: 100%;
		background-image: url("resources/images/mainsolar.jpg"); background-size: 100% auto;
		background-repeat: no-repeat; overflow: hidden; }
	
	.line{width: 12%; height: 100vh; border-right: 0.1px solid #dcdcdc;}
	
	.content_box{ margin:0 auto; position:absolute; top:25vh; right:0%; display:block;
		width: 48vw; height: 14vw; background-color: rgba(1,1,1,0.4); overflow: hidden;
		padding:1vw 1vw 1vw 1vw; align-content: center; align-items: center;}
	
	.content{flex-direction:column; justify-content:center; display:flex; align-content: flex-end;
		align-items: flex-end; margin:0 auto; padding:0; width: 100%; height: 100%;}
	
	.content1{text-align:right; padding-bottom:1vw; color: #ADFF2F; font-size: 1.5vw;}
	
	.content2{ padding-bottom:2vw; text-align:right; color: white; font-size: 3vw; font-weight: bold;}
	
	.content3{ text-align:right; color: white; font-size: 3vw;}
	
	.main_2nd{ margin:0 auto;  width: 90vw; justify-content: center; align-items: center; padding:5vw 0 5vw 0;}
	
	.main_contents{ align-items:center; width: 85vw; height:auto; margin:0 auto;
		justify-content: center; text-align: center;}
	
	.main_content{ justify-content: center;text-align: center; height: 15vw;
		width: 80vw;  margin:0 auto; border-bottom: 5vw;}
		
	#main_content_title{font-size: 3vw; color: #64CD3C; display: block;
		width:80vw; margin:0 auto; line-height: 5vw; height: 5vw; letter-spacing: 0.5px; }
	
	#main_content_sub{display: block; width:80vw; margin:0 auto; 
		line-height: 5vw; height: 5vw; font-size: 1.5vw; color: gray;}
	
	.main_content_box{ width:75vw; margin:0 auto; align-items: center;
		display: block; text-align: center;}
	
	.main_content1{display: flex; width: 75vw; height:25vw; list-style: none;
	margin: 0 auto; text-align: center; align-items: center;}
	
	.main_content1 li{display: flex; width: 37.5vw; height: 25vw; 
		text-align: center; align-items: center; justify-content: center;}
	
	.substation{width: 37.5vw; height: 25vw; background-image: url("resources/images/substation.JPG"); background-size: 37.5vw auto; background-repeat: no-repeat;}
	
	.main_content1 li a strong{font-size: 1.5vw; font-weight:bold; display: block; padding:10vw 10vw 1.5vw 10vw;}
	
	.main_content1 li a{font-size: 1vw; color: black; display: block;}
	 
	.main_content2 { display: block; width:75vw; height:30vw; margin:0 auto; padding: 0;
		overflow: hidden; background-image:url("resources/images/salesB.JPG");
		background-size:75vw auto; background-color:rgba(0,0,0,0.5); background-repeat:no-repeat;
		text-align: center; align-items: center; }
		
	.main_content2 a{font-size: 1.5vw; color: white; display: block; padding:3vw 3vw 1vw 3vw;
		line-height: 190%;}
		
	#main_content2{color: white;}
		
	.main_content2 a strong{font-size:3vw; padding:3vw 0 3vw 0; display:block; color: white;
		 word-spacing:0.5px; letter-spacing :0.1px;}
	
	.slim-btn{ margin-bottom:5%; width: 40vw;background-color: #4169E1; color:white;
		height: 5vw; line-height: 5vw; border: none; font-weight: normal; border-radius: 2px}
	
/* main 끝 */
	
/* 회사소개 부분 */
	
	/* 회사소개(공통 포함) - 대표이사/회사 소개 */
	.intro_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: 100% auto; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.intro_header a{display:block; height:40vh;font-size: 4vh; color: #64CD3C; line-height: 130%; }
	
	.intro_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%;}
	
	.intro_box{ width:95vw; padding:0 1vw 1vw 1vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
	.intro_menu{display: none;}
	
	.intro_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.intro_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.intro_menu_ul_small{display: none;}
	
	.intro_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.intro_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.intro_menu_ul li a.click{color:#64CD3C; background-color: white; font-size: 2.5vh; border-top: 2px solid #64CD3C;  font-weight: bold;}
	
	.intro_submenu{padding:1vw 0 1vw 0; margin:0 auto; display:flex; width: 95vw; height:9vw; justify-content: flex-start; }
	
	.intro_submenu_ul{display: flex; width: 95vw; height: 7vw; justify-content: flex-start; list-style: none;}
	
	.intro_submenu_ul li{width: 15vw; height: 7vw; padding-right: 1vw;}
	
	.intro_submenu_ul li a{display:block; width: 14vw; height: 7vw; line-height:7vw; text-align: center; border: 0.1px solid #64CD3C; letter-spacing :2px; font-size: 2.5vh; font-weight: bold; color: #64CD3C}
	
	.ceo_btn.unclick{ background-color:white; color: #64CD3C;  border: 0.1px solid #64CD3C;  font-size: 2.5vh; font-weight: bold;}
	
	.ceo_btn.click{ background-color: #64CD3C; color: white;  font-size: 2.5vh; font-weight: bold; border: 1px solid #64CD3C;}
	
	.cor_btn.click{ background-color: #64CD3C;  color: white;  font-size: 2.5vh; font-weight: bold; border: 1px solid #64CD3C;}
	
	.intro_ceo{ margin:0 auto; padding:1vw 0 1vw 0;width: 95vw; height:auto; }
	
	.intro_ceo.none{ display: none; }
	
	.intro_text{ margin:0 auto; padding:1vw 0 1vw 0; width: 95vw; height:auto; }
	
	.intro_text_part{ margin:0 auto; width: 90vw; height:auto; align-items: flex-start; text-align: left; padding:1vw;}
	
	.intro_text_part p{ padding:1vw; font-size: 3vh; line-height: 180%; word-spacing:0.5px; letter-spacing :0.1px;}
	
	#text{ font-size: 3.5vh; font-weight: bold; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end{ margin:0 auto; padding:3vh;width: 90vw; height:auto; align-items: center; text-align: right; }
	
	.intro_text_end h1{ font-size: 3.5vh; font-weight: bold; padding:1vh; letter-spacing :1px; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end h2{ font-size: 2vh; font-weight: bold; padding:1vh; letter-spacing :0.3px; font-family: 'Noto Sans KR', sans-serif;}
	
	.intro_cor{padding:1vw 0 1vw 0; width: 95vw; height:auto; display: none; }
	
	.intro_cor.active{ display: block; }
	
	.cor_img{width: 95vw; height: 65vh; background-repeat: no-repeat;background-image: url("resources/images/sun-penel-1.jpg"); background-size: 100% auto;}
	
	.cor_text{display: flex;width: 90vw; padding:5vh 0 5vh 0; justify-content: space-between; align-items: flex-start;}
	
	.cor_text_box1{display: none; margin: 0 auto;}
	
	.cor_text_box{width: 32vw; height: 32vw; align-items: center; text-align: center; background-color: #64CD3C;
		display: inline-block; position: absolute; right: 1.5vw; margin: -30vh 0 0 0; padding:5vw;}
	
	#cor_text_box_main{color: white; font-size: 2.5vw; font-weight: bold; width: 22vw; height: 12vw; text-align: left; line-height: 140%;}
	
	#cor_text_box_sub{color:white; font-size:1.5vw; width: 22vw;  height: 12vw; text-align: left; line-height: 140%;}
	
	.cor_int{align-items:flex-start;justify-content:flex-start;width: 50vw; display: inline-block; height: 70vh; list-style: none; flex-direction: column;}

	.cor_int li{display: flex; height: 10vh; width:60vw;border-bottom: 1px solid #dcdcdc; line-height: 10vh; font-size: 2.5vh; text-align: left;}
	
	.cor_int li strong{color: #64CD3C; font-weight: bold; padding:0 2vh 0 2vh; display: inline-block; width: 10vw;}

	/* 회사소개(공통 포함) - 대표이사/회사 소개  끝*/
	
	
	/* 회사소개 - 연혁 */
	.hist_box{width:95vw; height: auto; margin: 0 auto; }
	
	.hist_text{ margin:0 auto; width:95vw; height: 6h; line-height:10vw; align-items: flex-start; border-bottom: 1px solid #d2d2d2}
	
	.hist_text h1{display:inline;font-size: 5vh; color: black; letter-spacing: 5px;}
	
	.hist_img{margin: 0 auto; justify-content:center;align-items:center;width:95vw; height: 40vh; background-image: url("resources/images/people2.jpg"); background-repeat: no-repeat; background-size: 100% auto;}
	
	.hist_img_box{display:inline-block;width:120px; height: 120px; background-color:#64CD3C; color:white; font-size:20px;text-align: center; 
		border: 1px solid #64CD3C; padding-top:40px; position: absolute;}
	
	.hist_img_text {display:block; padding-top:15vh;margin:0 auto;text-align:center;color: white; font-size: 4vh;}
	
	.hist_img_text strong{margin:0 auto;text-align:center;display:block; color: white; font-size: 3vh; padding-bottom:3vh;}
	
	.hist_main{ margin:0 auto; width:95vw; height: auto; align-items: flex-start; padding:2vw 1vw 2vw 1vw;}
	
	.hist_contents{ width: 95vw; height: auto; justify-content: flex-start; z-index: 1;}
	
	.hist_contents::before{content:''; width: 1px; height: 70vh; display: inline-block;
		margin:-3vh auto auto 16vh; border-right:1.5px solid #d2d2d2; position: absolute;}
		
	.hist_content strong::after{content:'';width: 1.5vh; height: 1.5vh; display: inline-block; 
		margin:1.5vh auto auto 3.7vh; position: absolute; color: #64CD3C; background: #64CD3C; border: 1px solid #64CD3C; border-radius: 50%;}
	
	.hist_content{ width:95vw; height: auto; display: table; padding-bottom:10vh;}
	
	.hist_content strong{display: table-cell; font-size: 4.5vh; vertical-align: top; width: 20vh; padding:1vh; height: 6.5vh; font-family: 'Bebas Neue-Regular', serif;}
	
	.hist_month{margin:0 auto;display: table-cell; vertical-align: top; height: 6vh}
	
	.hist_month span{display:inline-block;font-weight:bold;font-size:2.7vh;margin:0 auto;width: 10vh; height: 6.5vh; line-height:6.5vh; padding:0 2vh 0 1vh; vertical-align: top; text-align: left;}
	
	.hist_month li{margin:0 auto;font-size: 2.7vh; height:6.5vh;  line-height:6.5vh; vertical-align: top;}
	
	
	/* 회사소개 - 연혁  끝*/
	
	/* 회사 소개 오시는 길 */
	.map_box{width: 95vw; margin: 0 auto; padding:0 0 10vh 0;}
	.map{width: 80vw; height:80vh;margin: 0 auto;}
	.mapp{width: 90vw; height:90vh;margin: 0 auto; padding:10vh 0 0;}
	.map_sub{margin:0 auto;text-align: left; font-size: 5vh; width: 95vw; height: 15vh; line-height:15vh; border-bottom: 1.5px solid #64CD3C;}
	.map_text{width: 80vw; margin: 0 auto; display: flex; height: 12vh; line-height: 12vh; padding:2vh 0 2vh 0;}
	.map_text div strong{width: 10vw; font-size: 4vh; padding:0 1vw 0 1vw;}
	.map_add{display: inline-block; width: 55vw; height: 8vh; line-height:8vh; text-align: left; font-size: 3vh;}
	.map_num{display: inline-block; width: 20vw; height: 8vh; line-height:8vh; text-align: left; font-size: 3vh;}
	.fa-dot-circle{color:green; font-size: 4vh;}
	
	/* 회사 소개 오시는 길  끝*/
	/* 회사소개 조직도 */
	.org_box{width: 95vw; margin: 0 auto; align-items: center;}
	.org_text{margin:0 auto;text-align: left; font-size: 5.5vh; width: 95vw; height: 15vh; line-height:15vh; border-bottom: 1.5px solid #64CD3C;}
	
	
	.org_img{padding:10vh 0 10vh 0;margin: 0 auto;width:95vw; align-items: center; height: 90vh; }
	
	.org_imgg{margin:0 auto; width: 60vw; height: 70vh; background-image: url("resources/images/org.jpg"); background-size: 60vw 70vh; background-repeat: no-repeat;}
	
	.org_people_box{width: 95vw; margin:0 auto;  padding:2.5vw; display: flex; overflow: visible;}
	
	.org_box_strong{display:block;width:90vw; height: 10vh; line-height:15vh;font-size: 4vh; text-align: left;margin: 0 auto; }
	
	.org_people_card{width: 15vw; height: 23vw; margin: 1.5vw; text-align: center; background-color:#F0FFF0;}
	
	.org_people_card a{text-align: center; line-height: 200%; font-size: 1.2vw; color:green;}
	
	.fa-address-card{color: green; font-size: 10vh; }
	
	.fa-user-tie{color: green; font-size: 8vh;}
	
	.org_people_card a strong{display: block; width: 15vw; height: 5vw; line-height:5vw;margin-bottom:2.6vw; text-align: center; font-size: 1.4vw; background-color: green; color: white;}
	
/* 사업영역 */
	
	.business_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: 100% auto; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.business_header a{display:block; height:40vh;font-size: 4vh; color: black; line-height: 130%;}
	
	.business_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #32A4FF; letter-spacing: 2px; 
		line-height: 130%;}
	
	.business_menu{display: none;}
	
	.business_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.business_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.business_menu_ul_small{display: none;}
	
	.business_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.business_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.business_menu_ul li a.click{color:#32A4FF; background-color: white; font-size: 2.5vh; border-top: 2px solid #32A4FF;  font-weight: bold;}
	
	.business_box{ width:95vw; padding:0 1vw 1vw 1vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
	.business_text_box{margin:0 auto;width: 95vw; height: 15vh; display: flex; border-bottom: 1.5px solid #64CD3C;}
	
	.business_text{display: inline-block; width: 55vw; height: 15vh; line-height:15vh; text-align: left; font-size: 5vh;}

	.business_box{width: 95vw; margin: 0 auto; padding:5vw;}
	
	.business{width:60vw; height: 80vh; margin: 0 auto; padding: 5vh 0 5vh 0;}
	
	.business_img{width:60vw; height: 70vh; margin: 0 auto; background-image: url("resources/images/business.JPG"); background-size: 60vw 70vh; background-repeat: no-repeat;}

	.customers{width: 85vw; display: black; margin: 0 auto; padding:5vh 0 5vh 0;}
	
	.customer{display:inline-block;width: 15vw; height: 9vw;margin:2vw; padding:2vw 0 2vh 0;border: 0.5px solid #dcdcdc; align-items: center;}
	
	.customer img{width: 11vw; height: 5vw;; margin: 0 auto;}
	
	.customer_text{width: 80vw; height: 20vh; text-align: center; line-height:15vh; font-size: 5vh; padding-top:10vh; margin: 0 auto; font-weight: bold;}
	
	/*사업영역 끝 */
	
	
	/* 공지사항 */
	#padding{ padding-top: 10px 10px; }
	
	.list_box{width: 95vw; margin: 0 auto; align-items: center; }
	
	.list_contents{ height:auto; display: flex; align-items: center; justify-content: space-between; border-bottom:0.1px solid #dcdcdc; }
	
	.list_contents:hover{ background-color: #dcdcdc; }
	
	.list_content1{ width:5vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.3vw; text-align: center; color:gray;}
	.list_content2{ width:65vw; display: inline-block; height: 10vh; line-height: 10vh;}
	.list_content3{ width:20vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; text-align: right; padding-right:3vw;color:gray;}
	.list_content4{ width:5vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.2vw; text-align: left; color:gray;}
	.list_content2 a{width:65vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.3vw; text-align: left; padding-left:2vw;}
	
	.list_content3 span{padding-right: 1vw;}
	
	.list_content4 span{padding-right: 1vw;}
	
	.list_delete{ width:100%; text-align: center; padding: 8px 12px; }
	
	.list_text_box{width: 95vw; height: 15vh; display: flex; border-bottom: 1px solid #64CD3C;}
	
	.list_text{display: inline-block; width: 55vw; height: 15vh; line-height:15vh; text-align: left; font-size: 5vh;}
	
	.list_search{display: inline-block; width: 40vw; height: 15vh; padding:1.5vh 0 1.5vh 0; align-items: flex-end;}
	
	.serach_box{display: flex; width:40vw; height: 12vh;}
	
	.serach_form{width:40vw; height: 12vh; padding:1.5vh 0 1.5vh 4vw;}
	
	.search{font-size: 2.5vh; padding:1vh; height: 8vh; width:10vw; border: 1px solid #dcdcdc; color:darkgray} 
	
	.search_submit{font-size: 2.5vh; height: 8vh; width:4vw; border: none; background-color: #64CD3C; color:white;}
	
	.search_text{font-size: 2.5vh; padding:1vh; height: 8vh; width:20vw; border: 1px solid #dcdcdc; padding-left:1vw;}	
		
	.list2{display: none;}
	/* 공지사항 */
	
	/* 공지사항 뷰 */
	.view_box{width: 95vw; margin: 0 auto; align-items: center;}
	
	.view_contents{width: 95vw; margin: 0 auto;}
	
	.view_subjects{align-items: flex-start; width: 90vw; height: 18vh; padding:2vh 0 2vh 0;}
	
	.view_subject{display:block; text-align: left; height: 8vh; line-height: 8vh; width: 90vw; font-size:4vh; color:#64CD3C; font-weight: bold;}
	
	.view_other{display: flex; align-content: flex-start; width: 90vw; height: 6vh;}
	
	.view_reg {display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 12vw; font-size:2.5vh; color:gray;}

	.view_reg span{padding-right:1vw;}

	.view_read{display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 78vw; font-size:2.5vh; color:gray;}

	.view_read span{padding-right:1vw;}
	
	.view_texts{ border-top: 0.5px solid #dcdcdc; border-bottom: 0.5px solid #dcdcdc; width: 95vw; padding:2vh 0 2vh 0; align-items: flex-start;}
	.view_text{ min-height: 20vh;}
	pre{ width: 90vw; padding:1vw;  overflow: auto; white-space: pre-wrap; background-color: white; text-align: left; font-size: 2.5vh;}  
	
	.view_files {width: 90vw; display: flex;}
	
	.view_file {width: 82vw; text-align: left;display: inline-block; font-size: 2.5vh; color: gray;}
	
	.view_file_name {display: inline-block; width: 8vw; text-align: left; font-size: 2.5vh; color: #64CD3C;}
	
	.view_list{width: 95vw; height: 15vh; margin: 0 auto; line-height: 15vh;}
	
	.view_list_btn{width: 15vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; background-color: #64CD3C; border-radius: 4px; color:white;}
	
	.view_update_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: #FFC81E; border: 1px solid #FFC81E; border-radius: 4px;}
	
	.view_delete_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: red; border: 1px solid red; border-radius: 4px;}
	/* 공지사항 뷰 끝 */

}
	
@media screen and (min-width: 769px) and (max-width: 960px){
	/* main */
	margin-top:72px;
	
	.wrap{padding:0; margin:0; width:100%; max-height: 100%; justify-content: center;}
	
	.main_1st {justify-content:flex-end; padding:0; margin:0; max-width: 100%; height: 80vh;
		background-image: url("resources/images/mainsolar.jpg"); background-size: 100% 80vh;
		background-repeat: no-repeat; overflow: hidden;}
		
	
	.line{width: 12%; height: 80vw; border-right: 0.1px solid #dcdcdc;}
	
	.content_box{ margin:0 auto; position:absolute; top:20vw; right:0%;
		width: 60vw; height: 25vw; background-color: rgba(1,1,1,0.4); overflow: hidden;
		padding:2vw 2vw 2vw 2vw; align-content: center; align-items: center;}
	
	.content{flex-direction:column; justify-content:center; display:flex; align-content: flex-end;
		align-items: flex-end; margin:0 auto; padding:0; width: 100%; height: 100%;}
	
	.content1{text-align:right; padding-bottom:1vw; color: #ADFF2F; font-size: 2vw;}
	
	.content2{ padding-bottom:2vw; text-align:right; color: white; font-size: 3.5vw; font-weight: bold;}
	
	.content3{ text-align:right; color: white; font-size: 3.5vw;}
	
	.main_2nd{ margin:0 auto;  width: 100vw; justify-content: center; align-items: center; padding:5vw 0 5vw 0;}
	
	.main_contents{ align-items:center; width: 90vw; height:auto; margin:0 auto;
		justify-content: center; text-align: center;}
	
	.main_content{ justify-content: center;text-align: center; height: 15vw;
		width: 85vw;  margin:0 auto; border-bottom: 5vw;}
		
	#main_content_title{font-size: 3vw; color: #64CD3C; display: block;
		width:85vw; margin:0 auto; line-height: 5vw; height: 5vw; letter-spacing: 0.5px; }
	
	#main_content_sub{display: block; width:85vw; margin:0 auto; 
		line-height: 5vw; height: 5vw; font-size: 1.5vw; color: gray;}
	
	.main_content_box{ width:85vw; margin:0 auto; align-items: center;
		display: block; text-align: center;}
	
	.main_content1{display: flex; width: 85vw; height:30vw; list-style: none;
	margin: 0 auto; text-align: center; align-items: center;}
	
	.substation{width: 42.5vw; height: 30vw; background-image: url("resources/images/substation.JPG"); background-size: 42.5vw auto; background-repeat: no-repeat;}
	
	.main_content1 li{display: flex; width: 42.5vw; height: 30vw; 
		text-align: center; align-items: center; justify-content: center;}
	
	.main_content1 li a strong{font-size: 2vw; font-weight:bold;  display: block; padding:13vw 10vw 1.5vw 10vw;}
	
	.main_content1 li a{font-size: 1vw; color: black; display: block;}
	 
	.main_content2 { display: block; width:85vw; height:38vw; margin:0 auto; padding: 0;
		overflow: hidden; background-image:url("resources/images/salesB.JPG");
		background-size:85vw auto; background-color:rgba(0,0,0,0.5); background-repeat:no-repeat;
		text-align: center; align-items: center; }
		
	.main_content2 a{font-size: 2vw; color: white; display: block; padding:4vw 4vw 1vw 4vw;
		line-height: 190%;}
		
	#main_content2{color: white;}
		
	.main_content2 a strong{font-size:4vw; padding:4vw 0 4vw 0; display:block; color: white;
		 word-spacing:0.5px; letter-spacing :0.1px;}
	
	.slim-btn{ margin-bottom:5%; width: 40vw;background-color: #4169E1; color:white;
		height: 5vw; line-height: 5vw; border: none; font-weight: normal; border-radius: 2px}
	
	/* main 끝 */
	
	/* 회사소개(공통 포함) - 대표이사/회사 소개 */
	.intro_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: auto 50vh; align-items: center; text-align: center; background-repeat: no-repeat;}
	
	.intro_header a{display:block; height:40vh;font-size: 4vh; color: #64CD3C; line-height: 130%;}
	
	.intro_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%;}
	
	.intro_box{ width:95vw; padding:0 1vw 1vw 1vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
	.intro_menu{display: none;}
	
	.intro_menu_big{margin:0 auto; display:flex; width: 90vw; height:10vh; align-items: center;}
	
	.intro_menu_ul{width: 90vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.intro_menu_ul_small{display: none;}
	
	.intro_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.intro_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.intro_menu_ul li a.click{color: #64CD3C; background-color: white; font-size: 2.5vh; border-top: 2px solid #64CD3C;  font-weight: bold;}
	
	.intro_submenu{margin:0 auto; display:flex; width: 95vw; height:9vw; justify-content: flex-start; padding:1vw 0 1vw 0;}
	
	.intro_submenu_ul{display: flex; width: 95vw; height: 7vw; justify-content: flex-start; list-style: none;}
	
	.intro_submenu_ul li{width: 15vw; height: 7vw; padding-right: 1vw;}
	
	.intro_submenu_ul li a{display:block; width: 14vw; height: 7vw; line-height:7vw; text-align: center; border: 0.1px solid #64CD3C; color:#64CD3C;letter-spacing :2px; font-weight: bold; font-size: 2vh;}
	
	.ceo_btn.unclick{ background-color:white; color: #64CD3C;  border: 0.1px solid #64CD3C;  font-size: 2vh; font-weight: bold;}
	
	.ceo_btn.click{ background-color: #64CD3C; color: white;  font-size: 2vh; font-weight: bold;}
	
	.cor_btn.click{ background-color: #64CD3C;  color: white;  font-size: 2vh; font-weight: bold;}
	
	.intro_ceo{ margin:0 auto; padding:1vw 0 1vw 0;width: 95vw; height:auto; }
	
	.intro_ceo.none{ display: none; }
	
	.intro_text{ margin:0 auto; padding:1vw 0 1vw 0; width: 95vw; height:auto; }
	
	.intro_text_part{ margin:0 auto; width: 90vw; height:auto; align-items: flex-start; text-align: left; padding:1vw;}
	
	.intro_text_part p{ padding:1vw; font-size: 2vh; line-height: 180%; word-spacing:0.5px; letter-spacing :0.1px; }
	
	#text{ font-size: 2.3vh; font-weight: bold; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end{ margin:0 auto; padding:3vh;width: 90vw; height:auto; align-items: center; text-align: right; }
	
	.intro_text_end h1{ font-size: 3vh; font-weight: bold; padding:1vh; letter-spacing :1px; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end h2{ font-size: 2vh; font-weight: bold; padding:1vh; letter-spacing :0.3px; }
	
	/*  */
	
	.intro_cor{padding:1vw 0 1vw 0; width: 95vw; height:auto; display: none; }
	
	.intro_cor.active{ display: block; }
	
	.cor_img{width: 95vw; height: 65vh; background-repeat: no-repeat;background-image: url("resources/images/sun-penel-1.jpg"); background-size: 100% auto;}
	
	.cor_text{display: flex;width: 90vw; padding:5vh 0 5vh 0; justify-content: space-between; align-items: flex-start;}
	
	.cor_text_box1{display: none; margin: 0 auto;}
	
	.cor_text_box{width: 32vw; height: 32vw; align-items: center; text-align: center; background-color: #64CD3C;
		display: inline-block; position: absolute; right: 1.5vw; margin: -30vh 0 0 0; padding:5vw;}
	
	#cor_text_box_main{color: white; font-size: 2.5vw; font-weight: bold; width: 22vw; height: 12vw; text-align: left; line-height: 140%;}
	
	#cor_text_box_sub{color:white; font-size:1.5vw; width: 22vw;  height: 12vw; text-align: left; line-height: 140%;}
	
	.cor_int{align-items:flex-start;justify-content:flex-start;width: 50vw; display: inline-block; height: 70vh; list-style: none; flex-direction: column;}

	.cor_int li{display: flex; height: 10vh; width:60vw;border-bottom: 1px solid #dcdcdc; line-height: 10vh; font-size: 2vh; text-align: left; letter-spacing: 0.5px;}
	
	.cor_int li strong{color: #64CD3C; font-weight: bold; padding:0 2vh 0 2vh; display: inline-block; width: 10vw;}
	
	/* 회사소개(공통 포함) - 대표이사/회사 소개  끝*/
	
	/* 회사소개 - 연혁 */
	.hist_box{width:95vw; height: auto; margin: 0 auto; }
	
	.hist_text{ margin:0 auto; width:95vw; height: 6h; line-height:10vw; align-items: flex-start; border-bottom: 1px solid #d2d2d2}
	
	.hist_text h1{display:inline;font-size: 5vh; color: black; letter-spacing: 5px;}
	
	.hist_img{margin: 0 auto; justify-content:center;align-items:center;width:95vw; height: 40vh; background-image: url("resources/images/people2.jpg"); background-repeat: no-repeat; background-size: 100% auto;}
	
	.hist_img_box{display:inline-block;width:120px; height: 120px; background-color:#64CD3C; color:white; font-size:20px;text-align: center; 
		border: 1px solid #64CD3C; padding-top:40px; position: absolute;}
	
	.hist_img_text {display:block; padding-top:15vh;margin:0 auto;text-align:center;color: white; font-size: 4vh;}
	
	.hist_img_text strong{margin:0 auto;text-align:center;display:block; color: white; font-size: 3vh; padding-bottom:3vh;}
	
	.hist_main{ margin:0 auto; width:95vw; height: auto; align-items: flex-start; padding:2vw 1vw 2vw 1vw;}
	
	.hist_contents{ width: 95vw; height: auto; justify-content: flex-start; z-index: 1;}
	
	.hist_contents::before{content:''; width: 1px; height: 70vh; display: inline-block;
		margin:-3vh auto auto 16vh; border-right:1.5px solid #d2d2d2; position: absolute;}
		
	.hist_content strong::after{content:'';width: 1.5vh; height: 1.5vh; display: inline-block;
		margin:1.5vh auto auto 3.7vh; position: absolute; color: #64CD3C; background: #64CD3C; border: 1px solid #64CD3C; border-radius: 50%;}
	
	.hist_content{ width:95vw; height: auto; display: table; padding-bottom:10vh;}
	
	.hist_content strong{display: table-cell; font-size: 4.5vh; vertical-align: top; width: 20vh; padding:1vh; height: 6.5vh; font-family: 'Bebas Neue-Regular', serif;}
	
	.hist_month{margin:0 auto;display: table-cell; vertical-align: top; height: 6vh}
	
	.hist_month span{display:inline-block;font-weight:bold;font-size:2.7vh;margin:0 auto;width: 10vh; height: 6.5vh; line-height:6.5vh; padding:0 2vh 0 1vh; vertical-align: top; text-align: left;}
	
	.hist_month li{margin:0 auto;font-size: 2.7vh; height:6.5vh;  line-height:6.5vh; vertical-align: top;}
	
	
	/* 회사소개 - 연혁  끝*/
	
	/* 회사 소개 오시는 길 */
	.map_box{width: 95vw; margin: 0 auto; padding:0 0 10vh 0;}
	.map{width: 90vw; height:80vh;margin: 0 auto;}
	.mapp{width: 95vw; height:90vh;margin: 0 auto; padding:10vh 0 0;}
	.map_sub{margin:0 auto;text-align: left; font-size: 5vh; width: 95vw; height: 15vh; line-height:15vh; border-bottom: 1.5px solid #64CD3C;}
	.map_text{width: 90vw; margin: 0 auto; display: flex; height: 12vh; line-height: 12vh; padding:2vh 0 2vh 0;}
	.map_text div strong{width: 10vw; font-size: 3vh; padding:0 1vw 0 1vw;}
	.map_add{display: inline-block; width: 65vw; height: 8vh; line-height:8vh; text-align: left; font-size: 2.5vh;}
	.map_num{display: inline-block; width: 25vw; height: 8vh; line-height:8vh; text-align: left; font-size: 2.5vh;}
	.fa-dot-circle{color:green; font-size: 3vh;}
	
	/* 회사 소개 오시는 길  끝*/
	
	/* 회사 소개 조직도 */
	.org_box{width: 95vw; margin: 0 auto; align-items: center;}
	.org_text{margin:0 auto;text-align: left; font-size: 5vh; width: 95vw; height: 15vh; line-height:15vh; border-bottom: 1.5px solid #64CD3C;}
	
	
	.org_img{padding:10vh 0 10vh 0;margin: 0 auto;width:95vw; align-items: center; height: 90vh; }
	
	.org_imgg{margin:0 auto; width: 80vw; height: 70vh; background-image: url("resources/images/org.jpg"); background-size: 80vw 70vh; background-repeat: no-repeat;}
	
	.org_people_box{width: 95vw; margin:0 auto;  padding:2.5vw; display: flex; overflow: visible;}
	
	.org_box_strong{display:block;width:90vw; height: 10vh; line-height:15vh;font-size: 4vh; text-align: left;margin: 0 auto; }
	
	.org_people_card{width: 15vw; height: 23vw; margin: 1.5vw; text-align: center; background-color:#F0FFF0;}
	
	.org_people_card a{text-align: center; line-height: 200%; font-size: 1.2vw; color:green;}
	
	.fa-address-card{color: green; font-size: 8vh; }
	
	.fa-user-tie{color: green; font-size: 6vh;}
	
	.org_people_card a strong{display: block; width: 15vw; height: 5vw; line-height:5vw;margin-bottom:2.6vw; text-align: center; 
	font-size: 1.4vw; background-color: green; color: white;}
	/* 회사 소개 조직도 끝 */	

/* 사업영역 */
	
	.business_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: 100% auto; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.business_header a{display:block; height:40vh;font-size: 4vh; color: black; line-height: 130%;}
	
	.business_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #32A4FF; letter-spacing: 2px; 
		line-height: 130%;}
	
	.business_menu{display: none;}
	
	.business_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.business_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.business_menu_ul_small{display: none;}
	
	.business_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.business_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.business_menu_ul li a.click{color:#32A4FF; background-color: white; font-size: 2.5vh; border-top: 2px solid #32A4FF;  font-weight: bold;}
	
	.business_box{ width:95vw; padding:0 1vw 1vw 1vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
	.business_text_box{margin:0 auto;width: 95vw; height: 15vh; display: flex; border-bottom: 1.5px solid #64CD3C;}
	
	.business_text{display: inline-block; width: 55vw; height: 15vh; line-height:15vh; text-align: left; font-size: 5vh;}

	.business_box{width: 95vw; margin: 0 auto; padding:5vw;}
	
	.business{width:90vw; height: 80vh; margin: 0 auto; padding: 5vh 0 5vh 0;}
	
	.business_img{width:80vw; height: 70vh; margin: 0 auto; background-image: url("resources/images/business.JPG"); background-size: 80vw 70vh; background-repeat: no-repeat;}

	.customers{width: 85vw; display: black; margin: 0 auto; padding:5vh 0 5vh 0;}
	
	.customer{display:inline-block;width: 15vw; height: 9vw;margin:2vw; padding:2vw 0 2vh 0;border: 0.5px solid #dcdcdc; align-items: center;}
	
	.customer img{width: 11vw; height: 5vw;; margin: 0 auto;}
	
	.customer_text{width: 80vw; height: 20vh; text-align: center; line-height:15vh; font-size: 5vh; padding-top:10vh; margin: 0 auto; font-weight: bold;}
	
/* 사업영역 끝 */

/* 공지사항 */
	#padding{ padding-top: 10px 10px; }
	.list2{display: none;}
	.list_box{width: 95vw; margin: 0 auto; align-items: center; }
	
	.list_contents{ height:auto; display: flex; align-items: center; justify-content: space-between; border-bottom:0.1px solid #dcdcdc; }
	
	.list_contents:hover{ background-color: #dcdcdc; }
	
	.list_content1{ width:5vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.5vw; text-align: center; color:gray;}
	.list_content2{ width:65vw; display: inline-block; height: 10vh; line-height: 10vh;}
	.list_content3{ width:20vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.3vw; text-align: right; padding-right:3vw;color:gray;}
	.list_content4{ width:5vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.3vw; text-align: left; color:gray;}
	.list_content2 a{width:65vw; display: inline-block; height: 10vh; line-height: 10vh; font-size: 1.5vw; text-align: left; padding-left:2vw;}
	
	.list_content3 span{padding-right: 1vw;}
	
	.list_content4 span{padding-right: 1vw;}
	
	.list_delete{ width:100%; text-align: center; padding: 8px 12px; }
	
	.list_text_box{width: 95vw; height: 15vh; display: flex; border-bottom: 1px solid #64CD3C;}
	
	.list_text{display: inline-block; width: 50vw; height: 15vh; line-height:15vh; text-align: left; font-size: 5vh;}
	
	.list_search{display: inline-block; width: 45vw; height: 15vh; padding:1.5vh 0 1.5vh 0; align-items: flex-end;}
	
	.serach_box{display: flex; width:40vw; height: 12vh;}
	
	.serach_form{width:45vw; height: 12vh; padding:1.5vh 0 1.5vh 4vw;}
	
	.search{font-size: 3vh; padding:1vh; height: 8vh; width:10vw; border: 1px solid #dcdcdc; color:darkgray} 
	
	.search_submit{font-size: 3vh; height: 8vh; width:5vw; border: none; background-color: #64CD3C; color:white;}
	
	.search_text{font-size: 3vh; padding:1vh; height: 8vh; width:20vw; border: 1px solid #dcdcdc; padding-left:1vw;}	
	
		
	/* 공지사항 */
	
	/* 공지사항 뷰 */
	.view_box{width: 95vw; margin: 0 auto; align-items: center;}
	
	.view_contents{width: 95vw; margin: 0 auto;}
	
	.view_subjects{align-items: flex-start; width: 90vw; height: 18vh; padding:2vh 0 2vh 0;}
	
	.view_subject{display:block; text-align: left; height: 8vh; line-height: 8vh; width: 90vw; font-size:4vh; color:#64CD3C; font-weight: bold;}
	
	.view_other{display: flex; align-content: flex-start; width: 90vw; height: 6vh;}
	
	.view_reg {display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 15vw; font-size:2.5vh; color:gray;}

	.view_reg span{padding-right:1vw;}

	.view_read{display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 75vw; font-size:2.5vh; color:gray;}

	.view_read span{padding-right:1vw;}
	
	.view_texts{ border-top: 0.5px solid #dcdcdc; border-bottom: 0.5px solid #dcdcdc; width: 95vw; padding:2vh 0 2vh 0; align-items: flex-start;}
	.view_text{ min-height: 20vh;}
	pre{ width: 90vw; padding:1vw;  overflow: auto; white-space: pre-wrap; background-color: white; text-align: left; font-size: 2.5vh;}  
	
	.view_files {width: 90vw; display: flex;}
	
	.view_file {width: 82vw; text-align: left;display: inline-block; font-size: 2.5vh; color: gray;}
	
	.view_file_name {display: inline-block; width: 8vw; text-align: left; font-size: 2.5vh; color: #64CD3C;}
	
	.view_list{width: 95vw; height: 15vh; margin: 0 auto; line-height: 15vh;}
	
	.view_list_btn{width: 15vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; background-color: #64CD3C; border-radius: 4px; color:white;}
	
	.view_update_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: #FFC81E; border: 1px solid #FFC81E; border-radius: 4px;}
	
	.view_delete_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: red; border: 1px solid red; border-radius: 4px;}
	/* 공지사항 뷰 끝 */
	
}

@media screen and (max-width: 768px){
	/* main */
	
	html{
		font-size: 5px;
	}
	
	body{margin-top:0;}
	
	
	/* main */
	.wrap{padding:0; margin:0; width:100%; max-height: 100%; justify-content: center;}
	
	.main_1st {justify-content:flex-end;margin:0 auto; max-width: 100%; height: 65vw;
		background-image: url("resources/images/mainsolar.jpg"); background-size: 100% auto;
		background-repeat: no-repeat; overflow: hidden; }
	
	.content_box{position: absolute; margin:0 auto; position:absolute; top:15vh; display:block;
		width: 100%; height: 25vw; background-color: rgba(1,1,1,0.4); overflow: hidden;
		padding:5vw 2vw 5vw 2vw; align-content: center; align-items: center;}
	
	.content{margin:0 auto; flex-direction:column; justify-content:center; display:flex; align-content: center;
		align-items: center; margin:0 auto; padding:0; width: 100%;}
	
	.content1{margin:0 auto; text-align:center; padding-bottom:3vw; color: #ADFF2F; font-size: 2vw;}
	
	.content2{margin:0 auto; padding-bottom:3vw; text-align:center; color: white; font-size: 3.5vw; font-weight: bold;}
	
	.content3{margin:0 auto; text-align:center; color: white; font-size: 3.5vw;}
	
	.main_2nd{ margin:0 auto;  width: 95%; justify-content: center; align-items: center;}
	
	.main_contents{ align-items:center; width: 90%; height:auto; margin:0 auto; padding:5vw;
		justify-content: center; text-align: center;}
	
	.main_content{ justify-content: center;text-align: center; height: 20vw; padding: 0 0 5vw 0; 
		width: 90%;  margin:0 auto; border: 1px solid green;}
		
	#main_content_title{font-size: 4vw; color: #0000CD; display: block;
		width:50vw; margin:0 auto; line-height: 6vw; height: 6vw; letter-spacing: 0.5px; }
	
	#main_content_sub{display: block; width:50vw; margin:0 auto; 
		line-height: 6vw; height: 6vw; font-size: 2vw; color: gray;}
	
	.main_content_box{ width:70vw; margin:0 auto; align-items: center;
		display: block; text-align: center;}
	.main_content1_box{width: 100%; margin:0 auto;}
	
	.main_content1{width: 70vw; height:auto; list-style: none;
	margin: 0 auto; text-align: center; align-items: center; display: flex; flex-direction: column;}
	
	.main_content1 li{width: 70vw; height: 45vw; 
		text-align: center; align-items: center; justify-content: center;}
	
	.substation{width: 70vw; height: 45vw; background-image: url("resources/images/substation.JPG"); background-size: 70vw auto; background-repeat: no-repeat;}
	
	.main_content1 li a strong{font-size: 3vw; font-weight:bold; display: block; padding:30vw 0 2vw 0;}
	
	.main_content1 li a{font-size: 2vw; color: black; display: block;}
	 
	.main_content2 { display: block; width:70vw; height:40vw; margin:0 auto; padding-: 0;
		overflow: hidden; background-image:url("resources/images/salesB.JPG");
		background-size:70vw 40vw; background-color:rgba(0,0,0,0.5); background-repeat:no-repeat;
		text-align: center; align-items: center; }
		
	.main_content2 a{font-size: 2vw; color: white; display: block; padding:5vw 5vw 0 5vw;
		line-height: 190%;}
		
	#main_content2{color: white;}
		
	.main_content2 a strong{font-size:4vw; display:block; color: white;
		 word-spacing:0.5px; letter-spacing :0.1px; padding:0 5vw 3vw 5vw;}
	
	.slim-btn{width: 40vw;background-color: #4169E1; color:white;
		height: 8vw; line-height: 5vw; border: none; font-weight: normal; border-radius: 2px; 
		font-size: 2vw;}
	
	/* main 끝 */
	
	/* 회사소개(공통 포함) - 대표이사/회사 소개 */
	.intro_header{max-width: 100vw; height: 35vw; background-image: url("resources/images/building2.jpg");
		background-size: 100% 35vw; align-items: center; text-align: center; background-repeat: no-repeat;}
	
	.intro_header a{display:block;font-size: 4vh; color: #64CD3C; line-height: 130%; font-weight: bold;}
	
	.intro_header a strong{display:block;padding:15vw 0 2vw 0; font-size: 3vh; color: #64CD3C; letter-spacing: 2px; 
		line-height: 130%; font-weight: bold;}
	
	.intro_box{ width:100vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
				/* 인트로 메뉴 */
	
	.intro_menu{ margin:0 auto; display:flex; width: 100vw; height:8vh; 
	align-items: center; flex-direction: column; 
	overflow: hidden;  transition-property:height; transition-duration:0.2s;}
	
	.intro_menu_big{display: none;}
	
	.intro_menu.on{height: 40vh;}
	
	.intro_menu_ul_small{height:40vh; width: 100vw; display: block; justify-content: space-between; align-items: center; flex-direction: column;
		list-style: none; height: 40vh;}
	
	.intro_menu_ul{display: none;}
	
	.intro_menu_ul_small li{margin:0 auto;width: 100vw; height: 8vh; line-height: 8vh; border-top: 0.5px solid gray; display: flex; background-color: #006400;}
	
	.intro_menu_ul_small li a{display:block;width: 100vw; height: 8vh; align-items: flex-start; text-align: left;
		font-size:3vh; line-height: 8vh; letter-spacing :0.1vw; color: white; 
		padding:0 3vh 0 3vh;}
	.intro_menu_ul_small li a.btn{color: #5CE75C;}
	.intro_menu_ul_small li a.click:hover{background-color: #64CD3C;}
	
	.intro_menu_ul_small li a.click{background-color:#64CD3C; color:white;}
	
				/* 서브메뉴 */
	
	.intro_submenu{margin:0 auto; display:flex; width: 100vw; height:10vh; justify-content: flex-start; }
	
	.intro_submenu_ul {display: flex; width: 100vw; height: 10vh; justify-content: flex-start; list-style: none;}
	
	.intro_submenu_ul li{width: 50vw; height: 10vh;}
	
	.intro_submenu_ul li a{display:block; width: 50vw; height: 10vh; line-height:10vh; 
	text-align: center; letter-spacing :2px; background-color: #006400; color: white; font-size: 3vh;}
	
	.ceo_btn.unclick{ background-color: #006400; color: white; }
	
	.ceo_btn.click{ background-color: white; color: #006400;}
	
	.cor_btn.click{ background-color : white;  color: #006400;  }
	
	.intro_ceo{ margin:0 auto; padding:2vh 0 2vh 0;width: 90vw; height:auto; }
	
	.intro_ceo.none{ display: none; }
	
	.intro_text{ margin:0 auto; padding:1vh 0 1vh 0; width: 90vw; height:auto; }
	
	.intro_text_part{ margin:0 auto; width: 85vw; height:auto; align-items: flex-start; text-align: left; padding:1vh;}
	
	.intro_text_part p{ padding:1vh; font-size: 2.3vh; line-height: 180%; word-spacing:0.5px; letter-spacing :0.1px; }
	
	#text{ font-size: 3vh; font-weight: bold; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end{ margin:0 auto; padding:2vh; width: 85vw; height:auto; align-items: center; text-align: right; }
	
	.intro_text_end h1{ font-size: 2.3vh; font-weight: bold; padding:0.5vh; letter-spacing :1px; font-family: 'Jeju Myeongjo', serif;}
	
	.intro_text_end h2{ font-size: 1.3vh; font-weight: bold; padding:0.5vh; letter-spacing :0.3px; }
	
	/*  */
	
	.intro_cor{width: 100vw; height:auto; display: none; margin: 0 auto;}
	
	.intro_cor.active{ display: block;}
	
	.cor_img{margin: 0 auto; width: 100vw; height: 45vh; background-repeat: no-repeat;background-image: url("resources/images/sun-penel-1.jpg"); background-size: 100% 45vh;}
	
	.cor_text{width: 100vw; padding:0 0 5vh 0; margin: 0 auto;}
	
	.cor_text_box{display: none; margin: 0 auto;}

	.cor_text_box1{width: 100vw; height: 25vh; align-items: center; text-align: center; background-color: #64CD3C;
		display:block;padding:5vw; margin: 0 auto;}
	
	#cor_text_box1_main{padding-top:1.5vh;display: inline-block; color: white; font-size: 3.5vh; font-weight: bold; width: 42.5vw; height: 15vw; text-align: left; line-height: 140%;}
	
	#cor_text_box1_sub{padding-top:2vh;display: inline-block; color:white; font-size:2.2vh;width: 42.5vw;  height: 15vw; text-align: left; line-height: 140%;}
	
	.cor_int{align-items: center;justify-content: center;width: 95vw; display: block; height: 70vh; list-style: none; flex-direction: column;}

	.cor_int li{padding-left:5vh;display: flex; height: 10vh; width:95vw;border-bottom: 1px solid #dcdcdc; line-height: 10vh; font-size: 2vw; text-align: left; letter-spacing: 0.5px;}
	
	.cor_int li strong{color: #64CD3C; font-weight: bold; display: inline-block; width: 20vw; font-size: 2.5vw;}
	
	/* 회사소개(공통 포함) - 대표이사/회사 소개  끝*/
	
	/* 회사소개 - 연혁 */
	.hist_box{width:100vw; height: auto; margin: 0 auto; }
	
	.hist_text{display: none;}
	
	.hist_text h1{display:inline;font-size: 5vh; color: black; letter-spacing: 5px;}
	
	.hist_img{margin: 0 auto; justify-content:center;align-items:center;width:100vw; height: 40vh; background-image: url("resources/images/people2.jpg"); background-repeat: no-repeat; background-size: 100% 40vh;}
	
	.hist_img_box{display:inline-block;width:100px; height: 100px; background-color:#64CD3C; color:white; font-size:15px;text-align: center; 
		border: 1px solid #64CD3C; padding-top:30px; position: absolute;}
	
	.hist_img_text {display:block; padding-top:15vh;margin:0 auto;text-align:center;color: white; font-size: 4vh;}
	
	.hist_img_text strong{margin:0 auto;text-align:center;display:block; color: white; font-size: 3vh; padding-bottom:3vh;}
	
	.hist_main{ margin:0 auto; width:90vw; height: auto; align-items: flex-start; padding:2vw 1vw 2vw 1vw;}
	
	.hist_contents{ width: 90vw; height: auto; justify-content: flex-start; z-index: 1;}
	
	.hist_contents::before{content:''; width: 1px; height: 65vh; display: inline-block;
		margin:-1.5vh auto auto 16vh; border-right:1.5px solid #d2d2d2; position: absolute;}
		
	.hist_content strong::after{content:'';width: 1.5vh; height: 1.5vh; display: inline-block;
		margin:1.5vh auto auto 3.7vh; position: absolute; color: #64CD3C; background: #64CD3C; border: 1px solid #64CD3C; border-radius: 50%;}
	
	.hist_content{ width:90vw; height: auto; display: table; padding-bottom:10vh;}
	
	.hist_content strong{display: table-cell; font-size: 4.5vh; vertical-align: top; width: 20vh; padding:1vh; height: 6.5vh; font-family: 'Bebas Neue-Regular', serif;}
	
	.hist_month{margin:0 auto;display: table-cell; vertical-align: top; height: 6vh}
	
	.hist_month span{display:inline-block;font-weight:bold;font-size:2.7vh;margin:0 auto;width: 10vh; height: 6.5vh; line-height:6.5vh; padding:0 2vh 0 1vh; vertical-align: top; text-align: left;}
	
	.hist_month li{margin:0 auto;font-size: 2.7vh; height:6.5vh;  line-height:6.5vh; vertical-align: top;}
	
	
	/* 회사소개 - 연혁  끝*/
	
	/* 회사 소개 오시는 길 */
	.map_box{width: 95vw; margin: 0 auto; padding:0 0 10vh 0;}
	.map{width: 100vw; height:60vh;margin: 0 auto;}
	.mapp{width: 100vw; height:60vh;margin: 0 auto; }
	.map_sub{margin:0 auto;text-align: left; font-size: 5.5vh; width: 95vw; height: 20vh; line-height:20vh; border-bottom: 1.5px solid #64CD3C; display: none;}
	.map_text{width: 90vw; margin: 0 auto; height: 12vh; padding:1vw 0 1vw 0;}
	.map_text div strong{width: 10vw; font-size: 3vw; padding:0 1vw 0 1vw;}
	.map_add{width: 90vw; height: 5vh; line-height:5vh; text-align: left; font-size: 2vw;}
	.map_num{width: 90vw; height: 5vh; line-height:5vh; text-align: left; font-size: 2vw;}
	.fa-dot-circle{color:green; font-size: 3vw;}
	
	/* 회사 소개 오시는 길  끝*/
	
	/* 회사 소개 조직도 */
	.org_box{width: 100vw; margin: 0 auto; align-items: center;}
	.org_text{display:none;}
	
	
	.org_img{padding:5vw 0 15vw 0;margin: 0 auto;width:95vw; align-items: center; height: 65vh; }
	
	.org_imgg{margin:0 auto; width: 95vw; height: 45vh; background-image: url("resources/images/org.jpg"); background-size: 100vw 45vh; background-repeat: no-repeat;}
	
	.org_people_box{width: 100vw; margin:0 auto;  height:40vh;padding:2vw; display: flex; overflow: visible;}
	
	.org_box_strong{display:block;width:90vw; height: 6vh; line-height:6vh;font-size: 4vh; text-align: center;margin: 0 auto; }
	
	.org_people_card{width: 15vw; height: 23vw; margin: 1.5vw; text-align: center; background-color:#F0FFF0;}
	
	.org_people_card a{text-align: center; line-height: 200%; font-size: 1.2vw; color:green;}
	
	.fa-address-card{color: green; font-size: 5vw; }
	
	.fa-user-tie{color: green; font-size: 5vw;}
	
	.org_people_card a strong{display: block; width: 15vw; height: 5vw; line-height:5vw;margin-bottom:2.6vw; text-align: center; 
	font-size: 1.4vw; background-color: green; color: white;}
	/* 회사 소개 조직도 끝 */	
	
/* 사업영역 */
	
	.business_header{max-width: 100vw; height: 50vh; background-image: url("resources/images/building2.jpg");
		background-size: 100% auto; align-items: center; text-align: center; background-repeat: no-repeat;
		
	}
	
	.business_header a{display:block; height:40vh;font-size: 4vh; color: black; line-height: 130%;}
	
	.business_header a strong{display:block;padding:20vh 0 2vh 0; font-size: 1.8vw; color: #32A4FF; letter-spacing: 2px; 
		line-height: 130%;}
	
	.business_menu{display: none;}
	
	.business_menu_big{margin:0 auto; display:flex; width: 95vw; height:10vh; align-items: center;}
	
	.business_menu_ul{width: 95vw; display: flex; background-color:rgba(0,0,0,0.5);justify-content: space-between; align-items: center; list-style: none; height:10vh;}
	
	.business_menu_ul_small{display: none;}
	
	.business_menu_ul li{width: 23.75vw; height: 10vh; align-items: center; text-align: center; font-size:2.5vh;}
	
	.business_menu_ul li a{display:block;width: 23.75vw; height: 10vh; align-items: center; text-align: center;
		font-size:2vh; line-height: 10vh; letter-spacing :2px; border-right:1px solid gray; color: white;}
	
	.business_menu_ul li a.click{color:#32A4FF; background-color: white; font-size: 2.5vh; border-top: 2px solid #32A4FF;  font-weight: bold;}
	
	.business_box{ width:95vw; padding:0 1vw 1vw 1vw; margin:0 auto; justify-content: center; align-items: center; text-align: center;}
	
	.business_text_box{display:none;}
	


	.business_box{width: 100vw; margin: 0 auto;}
	
	.business{width:100vw; height: 50vh; margin: 0 auto; padding: 5vh 0 5vh 0;}
	
	.business_img{width:100vw; height: 50vh; margin: 0 auto; background-image: url("resources/images/business.JPG"); background-size: 100% 50vh; background-repeat: no-repeat;}

	.customers{width: 95vw; display: black; margin: 0 auto; padding:5vh 0 5vh 0;}
	
	.customer{display:inline-block;width: 18vw; height: 9vw;margin:2vw; padding:2vw 0 2vh 0;border: 0.5px solid #dcdcdc; align-items: center;}
	
	.customer img{width: 14vw; height: 5vw;; margin: 0 auto;}
	
	.customer_text{width: 80vw; height: 20vh; text-align: center; line-height:15vh; font-size: 5vw; padding-top:10vh; margin: 0 auto; font-weight: bold;}
	
/*사업영역 끝 */

/* 공지사항 */
	#padding{ padding-top: 10px 10px; }
	.list{display: none;}
	.list_box{width: 95vw; margin: 0 auto; align-items: center; }
	
	.list_contents{ width:93vw;height: 14vw; display: block; align-items: center; justify-content: space-between; border-bottom:0.1px solid #dcdcdc; padding:1vw 0 1vw 0;}
	
	.list_contents:hover{ background-color: #dcdcdc; }
	
	.list_content1{ padding-left:1.5vw; width:93vw; display: block; height: 4vw; line-height: 4vw; font-size: 2vw; text-align: left; color:gray;}
	.list_content2{ padding-left:1.5vw; width:93vw; display: block; height: 4vw; line-height: 4vw; text-align: left;}
	.list_content{padding-left:1.5vw; width:93vw; display: flex; height: 4vw; line-height: 4vw;}
	.list_content3{ width:20vw; display: inline-block; height: 4vw; line-height: 4vw; font-size: 1.5vw; text-align: left; color:gray;}
	.list_content4{ width:20vw; display: inline-block; height: 4vw; line-height: 4vw; font-size: 1.5vw; text-align: left; color:gray;}
	.list_content2 a{width:93vw; display: inline-block; height: 4vw; line-height: 4vw; font-size: 2.2vw; text-align: left; color: black;}
	
	.list_content3 span{padding-right: 1vw;}
	
	.list_content4 span{padding-right: 1vw;}
	
	.list_delete{ width:100%; text-align: center; padding: 8px 12px; }
	
	.list_text_box{width: 95vw; height: 12vh; border-bottom: 1px solid #64CD3C;}
	
	.list_text{display: none;}
	
	.list_search{width: 95vw; height: 12vh; padding:1vh 0 1vh 0;}
	
	.serach_box{display: flex; width:95vw; height: 11vh;}
	
	.serach_form{width:95vw; height: 11vh; padding:2vh;}
	
	.search{font-size: 2vw; padding:1vh; height: 6vw; width:20vw; border: 1px solid #dcdcdc; color:darkgray;} 
	
	.search_submit{font-size: 2vw; height: 6vw; width:10vw; border: none; background-color: #64CD3C; color:white;}
	
	.search_text{font-size: 2vw; padding:1vh; height: 6vw; width:30vw; border: 1px solid #dcdcdc; padding-left:1vw;}	
		
		
	/* 공지사항 */
	
		/* 공지사항 뷰 */
	.view_box{width: 95vw; margin: 0 auto; align-items: center;}
	
	.view_contents{width: 95vw; margin: 0 auto;}
	
	.view_subjects{align-items: flex-start; width: 90vw; height: 18vh; padding:2vh 0 2vh 0;}
	
	.view_subject{display:block; text-align: left; height: 8vh; line-height: 8vh; width: 90vw; font-size:3vh; color:#64CD3C; font-weight: bold;}
	
	.view_other{display: flex; align-content: flex-start; width: 90vw; height: 6vh;}
	
	.view_reg {display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 20vw; font-size:2.5vw; color:gray;}

	.view_reg span{padding-right:1vw;}

	.view_read{display: inline-block; text-align: left; height: 6vh; line-height: 6vh; width: 78vw; font-size:2.5vw; color:gray;}

	.view_read span{padding-right:1vw;}
	
	.view_texts{ border-top: 0.5px solid #dcdcdc; border-bottom: 0.5px solid #dcdcdc; width: 95vw; padding:2vh 0 2vh 0; align-items: flex-start;}
	.view_text{ min-height: 20vh;}
	pre{ width: 90vw; padding:1vw;  overflow: auto; white-space: pre-wrap; background-color: white; text-align: left; font-size: 2.5vh;}  
	
	.view_files {width: 90vw; display: flex;}
	
	.view_file {width: 70vw; text-align: left;display: inline-block; font-size: 2vh; color: gray;}
	
	.view_file_name {display: inline-block; width: 20vw; text-align: left; font-size: 2vh; color: #64CD3C;}
	
	.view_list{width: 95vw; height: 15vh; margin: 0 auto; line-height: 15vh;}
	
	.view_list_btn{width: 10vh; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; background-color: #64CD3C; border-radius: 4px; color:white;}
	
	.view_update_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: #FFC81E; border: 1px solid #FFC81E; border-radius: 4px;}
	
	.view_delete_btn{width: 12vw; height: 10vh; font-size: 3vh; text-align: center; padding:1vh 1vw 1vh 1vw; color: red; border: 1px solid red; border-radius: 4px;}
	/* 공지사항 뷰 끝 */
	
}
</style>
</head>
<body>

</body>
</html>