<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>
<h1></h1>

<h2>List of books</h2>
<table border="1">
    <thead>
    <th>Isbn</th>
    <th>Title</th>
    <th>Author</th>
    <th>Options</th>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.isbn}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>
                <a href="/admin/books/edit/${book.id}">Edit</a>
                <a href="/admin/books/delete/${book.id}">Delete</a>
                <a href="/admin/books/show/${book.id}">Details</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
<%@ include file="/footer.jsp" %>