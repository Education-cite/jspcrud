<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
<h1>Employee List</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>DOB</th>
        <th>Gender</th>
        <th>Mobile</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.dob}</td>
            <td>${employee.gender}</td>
            <td>${employee.mobile}</td>
            <td>
                <a href="<c:url value='/employees/update/${employee.id}'/>">Edit</a>
                <a href="<c:url value='/employees/delete/${employee.id}'/>">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="<c:url value='/employees/create'/>">Create New Employee</a>
</body>
</html>
