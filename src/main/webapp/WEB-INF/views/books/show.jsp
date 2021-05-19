<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<html>
<head>
    <title>Book details</title>
</head>
<body>
<h1></h1>
<a href="/">Home</a><br>
<a href="/admin/books/add">Book Details</a><br>

<h2>Book details</h2>
<table border="1">
    <thead>
    <th>isbn</th>
    <th>title</th>
    <th>author</th>
    <th>publisher</th>
    <th>type</th>
    <th>Options</th>
    </thead>
    <tbody>
    <tr>
        <td><c:out value="${book.isbn}"/></td>
        <td><c:out value="${book.title}"/></td>
        <td><c:out value="${book.author}"/></td>
        <td><c:out value="${book.publisher}"/></td>
        <td><c:out value="${book.type}"/></td>
        <td>
            <a href="/admin/books/edit/${book.id}">Edit</a>
            <a href="/admin/books/delete/${book.id}">Delete</a>
            <a href="/admin/books/show/${book.id}">Details</a>
        </td>
    </tr>

    </tbody>
</table>
</body>
</html>
<%@ include file="/footer.jsp" %>