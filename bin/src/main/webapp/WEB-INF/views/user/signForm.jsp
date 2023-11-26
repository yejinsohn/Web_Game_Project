<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div class="container">
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
	<button id="btn-save" class="btn btn-primary">Sign up</button>
</div>

<script src="/blog/js/user.js"></script>

<br>
<%@include file="../layout/footer.jsp"%>