<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<html>
<head>
    <title>Welcome in BookAPI</title>
</head>

<body>
    <h1>Welcome to BookAPI</h1>
    <h2>Books in API</h2>
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
    <%@ include file="/footer.jsp" %>
</body>
</html>


