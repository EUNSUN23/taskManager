<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<form action="/board">
		<input type="text" name="id" required placeholder="아이디" /> 
		<input type="submit" value="로그인" />
	</form>
	

</body>
</html>