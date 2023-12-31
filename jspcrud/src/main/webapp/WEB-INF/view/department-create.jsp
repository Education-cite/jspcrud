<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Department</title>
</head>
<body>
<h1>Create Department</h1>
<form:form method="post" action="<c:url value='/departments/create'/>">
    <label for="name">Name:</label>
    <modelAttribute>department</modelAttribute>
    <form:input path="name" id="name" /><br>
    <label for="active">Active:</label>
    <form:checkbox path="active" id="active" /><br>
    <input type="submit" value="Create">
</form:form>
<br>
<a href="<c:url value='/departments/list'/>">Back to List</a>
</body>
</html>
