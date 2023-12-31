<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>

<%@include file="layout/header.jsp"%>
<br>

<style>
.box-container {
	display: inline-block;
}

#box {
	margin: 30px 30px;
	
}
</style>
<div class="box-container">
	<div id="box">
		<div class="card" style="width: 400px">
			<img class="card-img-top" src="img/Thumbnail_Run.jpg" alt="Thumbnail">
			<div class="card-body">
				<h4 class="card-title">Running Game</h4>
				<p class="card-text">무시무시한 적들을 피해 스테이지 안에 숨어있는 비밀의 문을 찾아보세요!</p>
				<a class="btn btn-primary" style="background-color:#b4b4b4; border:10px;">Arcade</a>
				<a href="https://yejinsohn.github.io/Game_Project/" class="btn btn-primary" style="border:10px;">Play now</a>
			</div>
		</div>
	</div>
</div>
<div class="box-container">
	<div id="box">
		<div class="card" style="width: 400px">
			<img class="card-img-top" src="img/Thumbnail_UFO.png" alt="Thumbnail">
			<div class="card-body">
				<h4 class="card-title">UFO Game</h4>
				<p class="card-text">떨어지는 운석을 피해 무사히 정거장에 도착할 수 있도록 UFO를 조종해 보세요!</p>
				<a class="btn btn-primary" style="background-color:#b4b4b4; border:10px;">Arcade</a>
				<a href="https://sirbeen.github.io/UFOGAME_Test/" class="btn btn-primary" style="border:10px;">Play now</a>
			</div>
		</div>
	</div>
</div>

<br>
<%@include file="layout/footer.jsp"%>