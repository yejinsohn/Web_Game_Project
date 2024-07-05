<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div class="container">
	<div class="adm_login">
		<h3>관리자 로그인</h3>
		FLASH HEAVEN을 관리하기 위해 로그인이 필요합니다.
	</div>
	<div class="login_form">
	<form action="#" method="post">
		<div class="form-group">
			<label for="username">User name:</label> <input type="text" name="username"
				class="form-control" placeholder="Enter name" id="username">
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password" name="password"
				class="form-control" placeholder="Enter password" id="password">
		</div>
	</form>
	<button id="btn-login" class="btn btn-primary">로그인</button>
	</div>
</div>

<script src="/FlashHeaven/js/user.js"></script>

<br>
<%@include file="../layout/footer.jsp"%>