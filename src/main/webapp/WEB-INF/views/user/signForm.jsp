<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div class="container">
	<div class="adm_signup">
		<h3>관리자 회원가입</h3>
		FLASH HEAVEN을 관리하기 위해 관리자용 계정이 필요합니다.
	</div>
	<div class="sign_form">
	<form>
		<div class="form-group">
			<label for="username">User name:</label> <input type="text"
				class="form-control" placeholder="Enter name" id="username">
		</div>
		<div class="form-group">
			<label for="email">Email :</label> <input type="email"
				class="form-control" placeholder="Enter email" id="email">
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password" id="password">
		</div>
	</form>
	<button id="btn-save2" class="btn btn-primary" >회원가입</button>
	</div>
</div>

<script src="/FlashHeaven/js/user.js"></script>

<br>
<%@include file="../layout/footer.jsp"%>