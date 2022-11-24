<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원 목록</title>
	<jsp:include page="../include/head.jsp" />
</head>
<body>
<header class="">
	<jsp:include page="../include/header.jsp" />
</header>
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
					<td><a href="/member/getMember.do?id=${mem.id }">${mem.name }</a></td>
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
    <footer>
    
    </footer>
<%-- 	<script src="${path1 }/include/vendor/jquery.js"></script>
    <script src="${path1 }/include/vendor/what-input.js"></script>
    <script src="${path1 }/include/vendor/foundation.js"></script>
    <script src="${path1 }/include/app.js"></script> --%>
</body>
</html>