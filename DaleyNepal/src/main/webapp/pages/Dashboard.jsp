<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Dashboard - Daley Nepal</title>
</head>
<body>
  <h1>Welcome to the Admin Dashboard</h1>
  <p>Hello, <%= session.getAttribute("fullName") %>!</p>
  <a href="<%= request.getContextPath() %>/pages/index.jsp">Go to Home</a>
</body>
</html>
