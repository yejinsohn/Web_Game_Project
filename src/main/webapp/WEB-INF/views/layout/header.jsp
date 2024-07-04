<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>FlashHeaven</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

</head>

<body>
<style>
    footer {
        background-color: Lightgray;
        height: 100px;
        padding: 20px;
        position: absolute;
    }
</style>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="padding: 20px;">
    <div class="container-fluid">
        <!-- Links in the middle -->
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav mr-auto"></ul>
        </div>
        <div class="mx-auto order-0">
            <a class="navbar-brand mx-auto" href="/FlashHeaven">Flash Heaven</a>
        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <c:choose>
                    <c:when test="${empty sessionScope.auth}">
                        <li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/notice">Notice</a></li>
                        <li class="nav-item"><a class="nav-link" href="/FlashHeaven/auth/loginForm">adm-Login</a></li>
                        <!-- <li class="nav-item"><a class="nav-link" href="/FlashHeaven/auth/signForm">SignUp</a></li> -->
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/notice">Notice</a></li>
                        <li class="nav-item"><a class="nav-link" href="/FlashHeaven/board/write">Write</a></li>
                        <li class="nav-item"><a class="nav-link" href="/FlashHeaven/user/logout">Logout</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
<br>