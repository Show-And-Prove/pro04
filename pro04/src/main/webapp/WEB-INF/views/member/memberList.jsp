<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<<c:set var="path1" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원 목록</title>
<%--     <link rel="stylesheet" href="${path1 }/include/foundation.css">
    <link rel="stylesheet" href="${path1 }/include/app.css"> --%>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
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
		<h2>회원목록</h2>
		<hr>
		<table>
			<thead>
			<tr>
				<th width="80">No</th>
				<th width="100">아이디</th>
				<th width="100">이름</th>
				<th>가입일</th>
				<th>포인트</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${memberList }" var="mem" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${mem.id }</td>
					<td>${mem.name }</td>
					<td>${mem.regdate }</td>
					<td>${mem.pt }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>


    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
<%-- 	<script src="${path1 }/include/vendor/jquery.js"></script>
    <script src="${path1 }/include/vendor/what-input.js"></script>
    <script src="${path1 }/include/vendor/foundation.js"></script>
    <script src="${path1 }/include/app.js"></script> --%>
</body>
</html>