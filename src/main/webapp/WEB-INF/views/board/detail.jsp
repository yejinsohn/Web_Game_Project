<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<br>


<div class="container">
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr>
	<div>
		<div>${board.content}</div>
	</div>
	<hr>
	<div class="card-set">
		<div class="card-content">	
			글 번호 : <span id="id"><i>${board.id}</i></span>
		</div>
		<div style="text-align:end;">
			작성일: <fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd"/> <br>
			작성자: ${board.user.username} <br>
		</div>
	</div>
<br>

<div class="board-btn">
	<button onclick="history.back()">목록</button>
	<c:if test = "${board.user.id == auth.userId}">
		<button id = "btn-update" onclick="location.href='/FlashHeaven/board/${board.id}/updateForm'">수정</button>
		<button id = "btn-delete">삭제</button>
	</c:if>
</div>
</div>
<br>
<script src="/FlashHeaven/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>