<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<style>
.marketing-site-content-section {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
}

.marketing-site-content-section .button.round {
  border-radius: 5000px;
  text-transform: uppercase;
  margin-bottom: 0;
}

.marketing-site-content-section .marketing-site-content-section-img {
  -webkit-align-self: center;
      -ms-flex-item-align: center;
              -ms-grid-row-align: center;
          align-self: center;
  -webkit-flex: 1 0 100%;
      -ms-flex: 1 0 100%;
          flex: 1 0 100%;
}

.marketing-site-content-section .marketing-site-content-section-img img {
  width: 100%;
}

@media screen and (min-width: 40em) {
  .marketing-site-content-section .marketing-site-content-section-img {
    -webkit-flex: 1 0 50%;
        -ms-flex: 1 0 50%;
            flex: 1 0 50%;
  }
}

.marketing-site-content-section .marketing-site-content-section-block {
  padding: 1rem;
  -webkit-flex: 1 0 100%;
      -ms-flex: 1 0 100%;
          flex: 1 0 100%;
  -webkit-align-self: stretch;
      -ms-flex-item-align: stretch;
          align-self: stretch;
  background: #e6e6e6;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-align-items: flex-start;
      -ms-flex-align: start;
          align-items: flex-start;
}

@media screen and (min-width: 40em) {
  .marketing-site-content-section .marketing-site-content-section-block {
    -webkit-flex: 1 0 50%;
        -ms-flex: 1 0 50%;
            flex: 1 0 50%;
    padding: 2rem;
  }
}

.marketing-site-content-section-block-header {
  font-size: 24px;
}

.marketing-site-content-section-block-subheader {
  font-size: 13px;
}
</style>
<!-- 헤드 부분 인클루드 -->
<jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<div id="content">
		<hr>
		<div class="marketing-site-content-section">
			<div class="marketing-site-content-section-img">
				<img
					src="https://images.pexels.com/photos/256046/pexels-photo-256046.jpeg?h=350&auto=compress&cs=tinysrgb"
					alt="" />
			</div>
			<div class="marketing-site-content-section-block">
				<h3 class="marketing-site-content-section-block-header">Yeti
					Snowcone Agency</h3>
				<p class="marketing-site-content-section-block-subheader subheader">Lorem
					ipsum dolor sit amet, consectetur adipisicing elit. Aperiam omnis,
					maxime libero natus qui minus!</p>
				<a href="#" class="round button small">learn more</a>
			</div>
			<div
				class="marketing-site-content-section-block small-order-2 medium-order-1">
				<h3 class="marketing-site-content-section-block-header">Yeti
					Snowcone Agency</h3>
				<p class="marketing-site-content-section-block-subheader subheader">Lorem
					ipsum dolor sit amet, consectetur adipisicing elit. Aperiam omnis,
					maxime libero natus qui minus!</p>
				<a href="#" class="round button small">learn more</a>
			</div>
			<div
				class="marketing-site-content-section-img small-order-1 medium-order-2">
				<img
					src="https://images.pexels.com/photos/300857/pexels-photo-300857.jpeg?h=350&auto=compress&cs=tinysrgb"
					alt="" />
			</div>
		</div>
	</div>
	<footer id="footer" class="footer-nav row expanded collapse">
		<!-- 푸터 부분 인클루드 -->
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>