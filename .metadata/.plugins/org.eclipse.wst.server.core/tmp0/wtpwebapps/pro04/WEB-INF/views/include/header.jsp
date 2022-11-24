<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path0" value="${pageContext.request.contextPath }"></c:set>
<div class="top-bar">
  <div class="top-bar-left">
    <ul class="dropdown menu" data-dropdown-menu>
      <li class="menu-text">Site Title</li>
      <li>
        <a href="#">One</a>
        <ul class="menu vertical">
          <li><a href="#">One</a></li>
          <li><a href="#">Two</a></li>
          <li><a href="#">Three</a></li>
        </ul>
      </li>
      <li><a href="#">Two</a></li>
      <li><a href="#">Three</a></li>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <li><a href="#">One</a></li>
      <li><a href="#">One</a></li>
      <li><a href="#">One</a></li>
    </ul>
  </div>
</div>
<!-- End Top Bar -->


<div class="orbit" role="region" aria-label="Favorite Space Pictures"
	data-orbit>
	<ul class="orbit-container">
		<button class="orbit-previous" aria-label="previous">
			<span class="show-for-sr">Previous Slide</span>&#9664;
		</button>
		<button class="orbit-next" aria-label="next">
			<span class="show-for-sr">Next Slide</span>&#9654;
		</button>
		<li class="orbit-slide is-active"><img
			src="https://placehold.it/2000x750"></li>
		<li class="orbit-slide"><img src="https://placehold.it/2000x750">
		</li>
		<li class="orbit-slide"><img src="https://placehold.it/2000x750">
		</li>
		<li class="orbit-slide"><img src="https://placehold.it/2000x750">
		</li>
	</ul>
</div>