<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../layout/header.jsp"%>

<div id="writeButton" style="display: none">
	<button type="button" class="navyBtn" onClick="location.href = '/FlashHeaven/board/write'">Write</button>
</div>

<div class="container">
	<div class="notice_list">
		<c:forEach var="board" items="${boards.content}">
			<div class="card m-3">
				<div class="card-body">
					<a href="/FlashHeaven/board/${board.id}">
						<span class="card-title">${board.title}</span>
					</a>
				</div>
			</div>
		</c:forEach>
	</div>
	
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${boards.last}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>

<br>
<%@include file="../layout/footer.jsp"%>
