<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div style="text-align: center;">
	글 번호 : <span id="id"><i>${board.id} </i></span>
</div>

<div class="container">
		<div>
			<h3>${board.title}</h3>
		</div>
		<hr>
		<div>
			<div>${board.content}</div>
		</div>
		<hr>
</div>

<br>

<div style="text-align: center;">
	<button style="background-color:#FFEFD5; border:none;" onclick="history.back()">목록</button>
	<c:if test = "${board.user.id == auth.userId}">
		<button id = "btn-update" onclick="location.href='/FlashHeaven/board/${board.id}/updateForm'" style="background-color:#FFE4B5; border:none;">수정</button>
		<button id = "btn-delete" style="background-color:#FFDAB9; border:none;">삭제</button>
	</c:if>
</div>

<br>
<script src="/FlashHeaven/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>