<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/header.jsp" %>
<html>
<head>
    <title>Book edit</title>
    <style>
        .error {
            color: white;
            background: red;
            font-size: small;
        }
    </style>
</head>
<body>
<h1>Edit book</h1>
<form:form method="post" modelAttribute="book" action="/admin/books/edit">
    <form:hidden path="id"/>
    Isbn: <form:input path="isbn"/><form:errors path="isbn" cssClass="error"/><br/>
    Title: <form:input path="title"/><form:errors path="title" cssClass="error"/><br/>
    Author: <form:input path="author"/><form:errors path="author" cssClass="error"/><br/>
    Publisher: <form:select path="publisher" items="${publishers}"/><form:errors path="publisher" cssClass="error"/><br/>
    Type: <form:select path="type" items="${types}"/><form:errors path="type" cssClass="error"/><br/>
    <input type="submit" value="Edit">
</form:form>
</body>
</html>
<%@ include file="/footer.jsp" %>

