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
	<title>입차</title>
    <jsp:include page="../include/head.jsp" />
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
<header class="">
	<jsp:include page="../include/header.jsp" />
</header>
<div class="content1" id="content1">
	    <div class="row column text-center">
	      <h2 class="h1">입차 등록</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path1 }/parking/carIn.do" method="post">
			      <table id="table1">
			      	<tbody>
			      		<tr>
			      			<th style="background-color:#dcdcdc">아이디</th>
			      			<td>
			      				<input type="text" name="id" id="id" value="${sid }" readonly>
			      			</td>
			      			<th style="background-color:#dcdcdc">차량 번호</th>
			      			<td>
			      				<input type="text" name="car_num" id="car_num" placeholder="ex)123가1234 - 띄워쓰기 없이 입력 요망" maxlength="30" required>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" class="submit success button" value="입차" >
			      				<a class="button" href="${path1 }/parking/list.do">목록으로</a>
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
    <footer id="footer">
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>