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
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<header class="">
	<jsp:include page="../include/header.jsp" />
</header>
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
    <footer>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>