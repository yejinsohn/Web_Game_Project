<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="layout/header.jsp"%>
<br>

<div id="content">
    <div class="box-container">
        <div id="box">
            <div class="card" style="width:350px">
                <img class="card-img-top" src="img/Thumbnail_Run.jpg" alt="Thumbnail">
                <div class="card-body">
                    <h4 class="card-title">Running Game</h4>
                    <p class="card-creator">Creator : 손예진</p>
                    <p class="card-text">무시무시한 적들을 피해 스테이지 안에 숨어있는 비밀의 문을 찾아보세요!</p>
                    <a class="btn btn-primary" style="color: #b4b4b4; background-color: white; border-color: #b4b4b4;">Arcade</a> 
                    <a href="https://yejinsohn.github.io/Game_Project/" class="btn btn-primary" style="border: 10px;">Play now</a>
                </div>
            </div>
        </div>
    </div>
    <div class="box-container">
        <div id="box">
            <div class="card" style="width:350px">
                <img class="card-img-top" src="img/Thumbnail_UFO.png" alt="Thumbnail">
                <div class="card-body">
                    <h4 class="card-title">UFO Game</h4>
                    <p class="card-creator">Creator : 박경빈</p>
                    <p class="card-text">떨어지는 운석을 피해 무사히 정거장에 도착할 수 있도록 UFO를 조종해보세요!</p>
                    <a class="btn btn-primary" style="color: #b4b4b4; background-color: white; border-color: #b4b4b4;">Arcade</a> 
                    <a href="https://sirbeen.github.io/UFOGAME_Test/" class="btn btn-primary" style="border: 10px;">Play now</a>
                </div>
            </div>
        </div>
    </div>
    <div class="box-container">
        <div id="box">
            <div class="card" style="width:350px">
                <img class="card-img-top" src="img/moregame.png" alt="Thumbnail" 
                		style="height: 100px; width: 100px; align-self: center; margin-top: 60px; margin-bottom: 35px;">
                <div class="card-body">
                    <h4 class="card-title">업데이트 대기중 </h4>
                    <p class="card-creator">Creator : -</p>
                    <p class="card-text">- <br><br></p>
                    <a class="btn btn-primary" style="color: #b4b4b4; background-color: white; border-color: #b4b4b4;">-</a> 
                    <a href="" class="btn btn-primary" style="border: 10px;">Play now</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="contact">
    <div class="contact-text">
        누구나 자신이 만든 게임을 게시할 수 있습니다. <br>
        저희와 함께 하고 싶다면 연락주세요!
    </div>
    <div class="contact-button">
        <a href="mailto:sonyejin2449@gmail.com?subject=게임 게시 문의&body=안녕하세요,%0D%0A제 게임을 귀하의 웹사이트에 게시하고 싶습니다.%0D%0A감사합니다." class="contact-btn">
            메일로 문의하기
            <img src="img/mail.png" alt="send">
        </a>
    </div>
</div>
<br>
<%@include file="layout/footer.jsp"%>
