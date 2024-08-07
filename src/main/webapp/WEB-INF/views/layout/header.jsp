<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<title>FlashHeaven</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

</head>

<style>
	img {
		cursor: pointer;
	}
	
	footer {
		height: 100px;
		padding: 20px;
		position: absolute;
	}
	.footer_content {
		padding-left: 30px;
		padding-bottom: 30px;
	}
	.logo {
		display: contents;
	}
    .navbar-nav .nav-link {
        color: black !important;
    }
    .container-fluid {
   		padding-top: 20px;
    	padding-left: 200px;
    	padding-right: 200px;
    	text-align: center;
    }
    .box-container {
        display: inline-block;
    }
    .card-creator {
        margin-top: -8px;
        margin-bottom: 10px;
        font-size: smaller;
        color: darkslategray;
    }
    .contact {
        background-color: #d3edfd;
        background-image: url("img/background.png");
        background-size: contain; 
        background-position: center; 
        background-repeat: no-repeat; 
        position: relative; 
        height: 300px;
        padding: 60px 300px;
        margin: 30px 0px;
        text-align: center;
    }
    .contact-text {
        font-size: 30px;
        font-weight: 600;
    }
    .contact-button {
        padding-top: 30px;
    }
    .contact-btn {
   		display :flex;
        width: 200px;
        height: 53px;
        font-size: 17px;
        background-color: white;
        border-radius: 10rem;
        border: none;
        text-decoration: none;
        display: inline-block;
        text-align: center;
        line-height: 53px; 
        color: black; 
        vertical-align: middle;
        align-items: center;
        justify-content: center;
    }
    .contact-btn:hover {
        background-color: #E2E2E3 !important;
        text-decoration: none;
        color: black;
    }
    .contact-button img {
        display: inline-block;
        width: 20px; 
        height: 20px; 
        vertical-align: middle;
    }
    #box:hover {
        transform: scale(1.1);
        transition-duration: 0.5s;
    }
    #content {
        display: flex;
        /* 게임 가운데 정렬 */
        /* 
        justify-content: center;
        align-items: center; 
        */
        height: auto;
        min-height: 500px;
        margin: 0px 230px;
        padding-top : 10px;
        padding-bottom: 50px;
    }
    #box {
        margin: 10px 20px;
        cursor: pointer;
    }
    #btn-login {
    	width: 100%;
    	background-color: black;
    	margin-top: 20px;
    }
    #btn-save {
    	width: 30%;
    	background-color: black;
    	margin-top: 20px;
    }
     #btn-save2 {
    	width: 100%;
    	background-color: black;
    	margin-top: 20px;
    }
   .container { 
    	min-height: 500px;
    }
   .form-group {
    	width: 100%;
    	margin: 20px auto;
    }
	.adm_login { 
		margin: 10px 247px;
    	padding-bottom: 20px;
	}
	.adm_signup { 
		margin: 10px 247px;
    	padding-bottom: 20px;
	}
    .login_form {
    	margin: 10px 250px;
    	padding-bottom: 20px;
   	}
   	.sign_form {
    	margin: 10px 250px;
    	padding-bottom: 20px;
   	}
   	.notice_list {
   		margin-bottom: 30px;
   	}
   	.card-set {
   		display: flex;
   		justify-content: space-between;
   	}
    .card-body a:hover {
        text-decoration: none; 
    }
    .card-title {
    	font-size: large;
    	font-weight: 500;
    	color: black;
    }
    .card-title:hover {
    	font-weight: 600;
    }
    .board-btn {
    	text-align: center;
    	padding-top: 50px;
    }	
    .board-btn button {
    	cursor: pointer;
    	padding: 10px 30px;
    	background-color: white;
    	border: 1px solid #707070;
    	border-radius: 12px;
    	box-shadow: none;
    	outline: none; 
    	margin-right: 3px;
	}
	.board-btn button:hover {
    	background-color: #f0f0f0;
	}
</style>

<body>
	<nav class="navbar navbar-expand-sm bg-white navbar-dark">
		<!-- Brand -->
		<div class="container-fluid">
			<div class="logo">
				<a href="/FlashHeaven" style="display: contents">
					<img class="card-img-top" src="${pageContext.request.contextPath}/img/logo.png" alt="logo" style="width:25%">
				</a>
			</div>
			<!-- Link -->
			<div class="collapse navbar-collapse justify-content" id="collapsibleNavbar" style="padding-left: 20px">
				<c:choose>
					<c:when test="${empty sessionScope.auth}">
						<ul class="navbar-nav" style="font-weight: 500">
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/game">Game</a></li>
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/notice">Notice</a></li>
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/auth/loginForm">adm-Login</a></li>
							<!-- <li class="nav-item"><a class="nav-link" href="/FlashHeaven/auth/signForm">SignUp</a></li> -->
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/game">Game</a></li>
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/notice">Notice</a></li>
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/write">Write</a></li>
							<li class="nav-item"><a class="nav-link" href="/FlashHeaven/user/logout">Logout</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	<br>