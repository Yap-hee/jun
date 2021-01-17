<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script type="text/javascript">	
$(document).ready(function() {
	
	const navbar = document.querySelector('.navbar');
	
	$(window).scroll(function(){
		var scrollPosition = window.scrollY || document.documentElement.scrollTop;
		if(scrollPosition > 10) {
			navbar.classList.add('active');
		}
	}).trigger('scroll');
	
	$(window).scroll(function(){
		var scrollPosition = window.scrollY || document.documentElement.scrollTop;
		if(scrollPosition < 11) {
			navbar.classList.remove('active');
		}
	}).trigger('scroll');
});
</script>
<style type="text/css">
ul, li{
	margin: 0; padding: 0;
	position:relative;
}

body{
    margin:0;
    padding:0;
   	font-family: 'Noto Sans KR', sans-serif;
}

button{
	text-decoration: none;
}

a{
    text-decoration: none;
    color: black;
}

a:link {text-decoration: none; color: #646464;}
a:visited {text-decoration: none; color: #646464;}
a:active {text-decoration: none;  color: blue;}
a:hover {text-decoration: none; color:black;}

@media screen and (min-width:770px){

	.side_logo{
		display: none;
	}
	
	.navbar{
		padding:0;
		margin:0 auto;
		position:fixed;
		top:0;
		justify-content:space-between;
	    align-items: center;
	    align-content:flex-start;
	    background-color: none;
	    height:73px;
	    width:100%;
	    background-color: rgba(255,255,255,0);
	    transition-property:background-color, height; 
	    transition-duration:0.3s;
	    transition-timing-function: ease-out;
	    overflow: hidden;
	    flex-grow: 1;
	}
	
	.navbar.active{
		background-color: rgba(255,255,255,1);
		opacity:1;
	}
	
	.navbar.active .navbar_menu li a{opacity:1;}
	
	.navbar:hover{
		opacity:1;
		background-color: rgba(255,255,255,1);
		height:240px;
		border-bottom: 0.1 solid #dcdcdc;
	}
	
	.navbar_logo{
		width:12%; height: 70px; position:absolute; top:0%; left:0%; display: flex; list-style: none; line-height: 70px;
	    align-items:center;
	    justify-content: flex-start;
	}
	
	.navbar_logo li{ height: 70px; line-height: 70px;  align-items: center; margin: 0 auto; padding:12.5px 0 12.5px 0;}
	
	.navbar_logo li a{display:block; width:100%;height: 45px; line-height: 70px;  align-items: center;}
	
	.navbar_menu{
		width:76%; position:relative; top:0%; display: flex;
	    list-style: none; height: 70px; margin: 0 auto; justify-content: center;
	}
	
	.navbar::before{display:block; content=""; width: 100vw; height: 71px; border-bottom: 0.1px solid #dcdcdc; margin:0;
		position:absolute; top:0;
	}
	
	.navbar_menu li{ width:75px;  height:70px; text-align: center;  line-height: 70px;  font-weight: bold;
		margin:0 2% 0 2%;
	}
	
	.navbar_menu li a{
		font-size: 1.1vw;
	}
	
	.navbar_menu li:hover{
		border-bottom: 3px solid green;
	}
	
	.navbar_menu li a{
		opacity: 0;
	}
	
	.navbar:hover .navbar_menu li a{
		opacity:1;
	}
	
	.navbar_btn{ width:12%; position:absolute; top:0%; right:0%; display: flex;
	    list-style: none;  background-color: none;  height: 70px; line-height: 70px; 
	    background-color: white;  justify-content: flex-end;  align-items:center; border-left: 1px solid #dcdcdc;}
	
	.navbar:hover.navbar_btn{
		border-left: 1px solid #dcdcdc;
		opacity: 1;
	}
	
	.navbar_btn li{
		
	    height:70px;
	    text-align: center;
	    line-height: 70px; 
	    padding-right: 0;
	}
	
	.bar{width: 40%;}
	.bar_text{width: 60%;} 
	
	.bars{padding:25px 0 25px 0;height: 70px; width: 50%; margin: 0 0 0 auto;}
	
	.navbar_btn li a{ font-size: 1.1vw; color: black; margin:0 auto 0 15%; display: block;
		height: 80px; width: 50px;
	}
	
	.navbar:hover .navbar_btn li a{opacity: 1;}
	
	.navbar_menu_hover{
		padding-top:20px;
		list-style: none;
	    padding-left:0;
	}
	
	.navbar_menu_hover li{
		height:30px;
		opacity:1;
	}
	
	.navbar_menu_hover li:hover{
		border-bottom:none;
	}
	
	.navbar_menu_hover li a{ display:block; height:30px; line-height:30px;
		opacity:0;
		font-weight: normal;
		font-size: 11px;
	}
	
	.navbar_menu_hover li:hover a{
		color: green;
	}
	
	.sidebar{
		display: none;
	}
}
@media screen and (max-width:769px){
	.navbar{
		display: none;
	}
	
	.sidebar{
		width: 140px;
		height: 80px;
		background-color: rgba(34,139,34,0);
		flex-direction:column;
		align-items: stretch;
		transition-property:background-color, height;
		transition-duration:0.3s;
		overflow: hidden;
		position: fixed;
	}
	
	.sidebar:hover{
		height: 100%;
		background-color: rgba(34,139,34,1);
	}
	
	.side_logo{
		margin:0 auto;
		padding:20px 0 20px 40px;
		width: 140px;
		height:80px;
		transition-property:background-color;
		transition-duration:0.3s;
		
	}
	
	 .side_menu{
        flex-direction:column;
        align-items: center;
        width:100%;
        padding: 20px;
        height:60px;
    }
    
    .sidebar:hover .side_logo{
    	background-color: rgba(255,255,255,1);
    	}
    
    .side_menu li{
        text-align: center;
        border-bottom:1px solid #e6e6e6;
        height:50px;
	    width:100%;
	    line-height:50px;
	    transition-property:background-color, height;
		transition-duration:0.3s;
    }
    
    .side_menu li a{
    	font-size: 12px;
    	font-weight: bold;
        color: white;
    }
    
    .side_menu #menu1:hover{
    	height:130px;
    	background-color: #006400;
    }
    
     .side_menu #menu2:hover{
    	height:120px;
    	background-color: #006400;
    }
    
     .side_menu #menu3:hover{
    	height:120px;
    	background-color: #006400;
    }
    
     .side_menu #menu4:hover{
     	height:120px;
    	background-color: #006400;
    }
    
     .side_menu_hover{
    	text-align: right;
    	display: none;
    }
    
    .side_menu_hover li{
    	height:15px;
	    line-height:20px;
	    border-bottom:none;
    	opacity: 0.5;
    }
    
    .side_btn{
    	flex-direction:column;
        align-items: center;
        width:100%;
        padding: 20px;
        position: absolute;
        bottom: 20px;
        display: none;
    }
    
    .sidebar:hover .side_btn {display: block;}
    
    .side_btn li{
    	height:12px;
	    line-height:15px;
	    border-bottom:none;
    	text-align: center;
    }
    
    .side_btn li a{
    	opacity: 0.5;
    	color:white;
    }
    
    .side_btn li:hover a{
    	opacity: 1;
    }
    
    .side_menu_hover li:hover{
    	color: blue;
    	opacity: 1;
    }
    
    .side_menu_hover li a{
    	font-size:9px;
    	font-weight:normal;
    }
    
    .side_menu li:hover .side_menu_hover{
    	display:block;
    }
	
}
</style>
</head>
<body>

</body>
</html>