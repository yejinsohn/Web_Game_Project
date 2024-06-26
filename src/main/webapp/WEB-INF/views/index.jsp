<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>

<%@include file="layout/header.jsp"%>
<br>

<style>
.box-container {
	display: inline-block;
}

.card-creator {
	margin-top: -8px;
	margin-bottom: 10px;
	font-size: smaller;
	color: darkslategray;
}

/* 마우스 오버 시 1.1배 확대 */
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
  	min-height: 100%;
  	margin : 0px 100px;
  	padding-bottom: 100px;
}

#box {
	margin: 30px 30px;
	cursor: pointer;
}
</style>

<div id="content">
	<div class="box-container">
		<div id="box">
			<div class="card" style="width: 400px">
				<img class="card-img-top" src="img/Thumbnail_Run.jpg"
					alt="Thumbnail">
				<div class="card-body">
					<h4 class="card-title">Running Game</h4>
					<p class="card-creator">Creator : 손예진</p>
					<p class="card-text">무시무시한 적들을 피해 스테이지 안에 숨어있는 비밀의 문을 찾아보세요!</p>
					<a class="btn btn-primary"
						style="background-color: #b4b4b4; border: 10px;">Arcade</a> <a
						href="https://yejinsohn.github.io/Game_Project/"
						class="btn btn-primary" style="border: 10px;">Play now</a>
				</div>
			</div>
		</div>
	</div>
	<div class="box-container">
		<div id="box">
			<div class="card" style="width: 400px">
				<img class="card-img-top" src="img/Thumbnail_UFO.png"
					alt="Thumbnail">
				<div class="card-body">
					<h4 class="card-title">UFO Game</h4>
					<p class="card-creator">Creator : 박경빈</p>
					<p class="card-text">떨어지는 운석을 피해 무사히 정거장에 도착할 수 있도록 UFO를 조종해
						보세요!</p>
					<a class="btn btn-primary"
						style="background-color: #b4b4b4; border: 10px;">Arcade</a> <a
						href="https://sirbeen.github.io/UFOGAME_Test/"
						class="btn btn-primary" style="border: 10px;">Play now</a>
				</div>
			</div>
		</div>
	</div>
</div>

<br>
<%@include file="layout/footer.jsp"%>