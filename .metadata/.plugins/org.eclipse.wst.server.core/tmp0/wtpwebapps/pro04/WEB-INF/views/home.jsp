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
					src="./resources/img/main_1.png"
					alt="메인 이미지" />
			</div>
			<div class="marketing-site-content-section-block">
          <div class="callout secondary">
			<c:if test="${!empty msg }">
			<script>
			alert("로그인 실패");
			document.loginForm.userid.focus();
			</script>
			</c:if>
			<c:if test="${empty sid }">
            <form action="${path1 }/member/loginCheck.do" method="post" name="loginForm">
              <div class="grid-x">
                <div class="small-12 cell">
                  <label>Login ID
                    <input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
                    <!--  pattern="^[a-z0-9]+$"  -->
                  </label>
                </div>
                <div class="small-12 cell">
                  <label>Login PW
                    <input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
                    <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                  </label>
                  <button type="submit" class="button">LOGIN</button>
                  <a href="${path2 }/member/agree.do" class="button" style="float:right;">회원가입</a>
                </div>
              </div>
            </form>
			<script>
			function loginFaiure() {
				alert("로그인 실패");
			}
			</script>
			</c:if>
			<c:if test="${not empty sid }">
             <div class="grid-x" style="height:218px">
                <div class="small-12 cell">
                  <label><strong>${sid }</strong>님 안녕하세요~!</label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;&nbsp;</label>
                </div>
                <div class="small-12 cell">
                  <label>
                  	<c:set var="now" value="<%=new java.util.Date() %>" />
                  	<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" type="date"/>
                  </label>
                </div>
                <div class="small-12 cell">
                  <label><fmt:formatDate value="${now }" pattern="a h:mm" type="date"/></label>
                </div>
                <div class="small-12 cell">
                  <label><span style="display:none">${serverTime }</span></label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;</label>
                </div>
              </div>
			</c:if>
          </div>
        </div>
			<div
				class="marketing-site-content-section-block small-order-2 medium-order-1">
				<h3 class="marketing-site-content-section-block-header">KT&G, 라오스 교육 인프라 지원 위해 논께오 지역에 초등학교 건립</h3>
				<p class="marketing-site-content-section-block-subheader subheader">임직원 기부금으로 비용 마련…깜빠네에 이어 논께오에 두 번째 학교 설립</p>
				<a href="#" class="round button small">자세히 보기</a>
			</div>
			<div
				class="marketing-site-content-section-img small-order-1 medium-order-2">
				<img
					src="https://www.ktng.com/imgViewer?fpath=CM0019&fnm=CM0019_1347_448.jpg"
					alt="준공식 사진" />
			</div>
		</div>
	</div>
	
	<footer id="footer" class="footer-nav row expanded collapse">
		<!-- 푸터 부분 인클루드 -->
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>