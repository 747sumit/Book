<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Home
<c:if test="${not empty userobj}">
<p class="text-center text-success">${userobj.name}</p>
<p class="text-center text-success">${userobj.password}</p>
<p class="text-center text-success">${userobj.email}</p>
<p class="text-center text-success">${userobj.phno}</p>
</c:if>

</body>
</html>