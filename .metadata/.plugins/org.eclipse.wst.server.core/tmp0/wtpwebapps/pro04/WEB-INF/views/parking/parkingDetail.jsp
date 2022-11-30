<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주차 상세</title>
<jsp:include page="../include/head.jsp" />
</head>
<body>
	<header class="">
		<jsp:include page="../include/header.jsp" />
	</header>
	<div class="row column text-center">
		<h2>주차 상세</h2>
		<hr>
		<form action="${path1 }/parking/delete2.do" method="post">
			<table>
				<tbody>
					<tr>
						<td><input type="hidden" name="parkno" id="parkno" value="${dto.parkno }"></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${dto.id }</td>
					</tr>										
					<tr>
						<th>차량 번호</th>
						<td>${dto.car_num }</td>
					</tr>
					<tr>
						<th>입차 시간</th>
						<td>${dto.in_time }</td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="submit success button" value="출차2(update문으로 outtime sysdate로 추가)">
		</form>
		<!-- X -->
		<div class="button-group">
			<a class="button" href="${path1 }/parking/list.do">주차 목록</a> 
			<a class="button" href="${path1 }/parking/delete2.do?parkno=${dto.parkno}">출차(테이블에서 데이터 삭제)</a>
		</div>
		<!-- X -->
	</div>

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
	<script>
		$(document).foundation();
	</script>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>