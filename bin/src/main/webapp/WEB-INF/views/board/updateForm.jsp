<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div class="container">
	<form>
		<input type="hidden" id="id" value="${board.id}"/>
		<div class="form-group">
			<input value="${board.title}" type="text" class="form-control" placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>
	</form>
	<div style=" text-align: center;">
	<button id="btn-update" class="btn btn-primary">수정 완료</button>
	</div>
</div>

<br>
<script>
	$('.summernote').summernote({
		placeholder: 'Hi! Please write down the content here 💬',
        tabsize: 2,
        height: 300
	});
</script>
<script src="/blog/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>