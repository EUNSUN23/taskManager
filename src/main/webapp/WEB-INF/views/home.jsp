<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="<c:url value="/js/jquery/jquery-3.6.0.js"/>"></script>
<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/css/home.css"/>" rel="stylesheet">
<script src="<c:url value="/js/bootstrap/bootstrap.min.js"/>"></script>
<title>Login</title>
</head>
<body>


	<form class="login form-inline d-flex flex-column" action="/board">
		 <label for="id" class="mr-sm-2  p2">아이디 :</label> <input
			name="id" type="text" class="form-control mb-2 mr-sm-2  p2"
			id="id">
		<button type="submit" class="btn btn-primary mb-2  p2">로그인</button>
	</form>

</body>
</html>