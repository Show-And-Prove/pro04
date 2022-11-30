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
	<title>요금받음</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
	
	<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 class="h1">결제</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path1 }/parking/pay.do" method="post">
			      <table id="table1">
			      	<tbody>
			      		<tr>
			      			<th style="background-color:#dcdcdc"></th>
			      			<td>
			      				<input type="hidden" name="parkno" id="parkno" value="${dto.parkno }" >
			      				<input type="text" name="car_num" id="car_num" value="${dto.car_num }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">아이디</th>
			      			<td>
			      				<input type="text" name="id" id="id" value="${dto.id }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">입차시간</th>
			      			<td>
			      				<input type="text" name="in_time" id="in_time" value="${dto.in_time }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">출차시간</th>
			      			<td>
			      				<input type="text" name="out_time" id="out_time" value="${dto.out_time }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">이용시간</th>
			      			<td>
			      				<input type="text" name="using_time" id="using_time" value="${dto.using_time }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">요금</th>
			      			<td>
			      				<input type="text" name="money" id="money" value="${dto.money }" readonly>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" class="submit success button" value="결제" >
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
    <footer id="footer">
    	<!-- 푸터 부분 인클루드 -->
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>