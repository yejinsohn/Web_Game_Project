<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
<br>

<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title : </label> 
			<input type="text" class="form-control" placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<label for="content">Content : </label>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<div style="text-align: center; padding-bottom: 15px">
	<button id="btn-save" class="btn btn-primary">Write</button>
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
<script src="/FlashHeaven/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>