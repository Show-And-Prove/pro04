<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 상세</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
    <div class="top-bar">
      <div class="top-bar-left">
        <ul class="menu">
          <li class="menu-text">Marketing Site</li>
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
        </ul>
      </div>
      <div class="top-bar-right">
        <ul class="menu">
          <li><a href="#">Three</a></li>
          <li><a href="#">Four</a></li>
          <li><a href="#">Five</a></li>
          <li><a href="#">Six</a></li>
        </ul>
      </div>
    </div>
    <!-- End Top Bar -->


    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <button class="orbit-previous" aria-label="previous"><span class="show-for-sr">Previous Slide</span>&#9664;</button>
        <button class="orbit-next" aria-label="next"><span class="show-for-sr">Next Slide</span>&#9654;</button>
        <li class="orbit-slide is-active">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
      </ul>
    </div>

    <div class="row column text-center">
      <h2>회원 상세</h2>
      <hr>
      <table>
      	<tbody>

      		<tr>
      			<th>아이디</th>
      			<td>${dto.id }</td>
      		</tr>	
      		<tr>
      			<th>이름</th>
      			<td>${dto.name }</td>
      		</tr>
      		<tr>
      			<th>주소</th>
      			<td><p>${dto.addr }</p></td>
      		</tr>
      		<tr>
      			<th>전화번호</th>
      			<td>${dto.tel }</td>
      		</tr>
      		<tr>
      			<th>가입일</th>
      			<td>${dto.regdate }</td>
      		</tr>
      		<tr>
      			<th>포인트</th>
      			<td>${dto.pt }</td>
      		</tr>
      	</tbody>
      </table>
    </div>
	
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>