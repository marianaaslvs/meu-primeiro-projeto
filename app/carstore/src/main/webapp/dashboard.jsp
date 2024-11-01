<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<div>

    <c:if test="${sessionScope.loggedUser != null}">
        <span>${sessionScope.loggedUser}</span>
        <a href="/logout">Logout</a>
    </c:if>

    <h1>Cars</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Color</th>
            <th>Image</th>
            <c:if test="${sessionScope.loggedUser != null}">
                <th>Actions</th>
            </c:if>
        </tr>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td>${car.id}</td>
                <td>${car.name}</td>
                <td>${car.color}</td>
                <td>${car.image}</td>
                <td>
                    <c:if test="${sessionScope.loggedUser != null}">
                        <form action="/delete-car" method="post">
                            <input type="hidden" id="id" name="id" value="${car.id}">
                            <button type="submit">Delete</button>
                            <span> | </span>
                            <a href="index.jsp?id=${car.id}&name=${car.name}&color=${car.color}">Update</a>
                        </form>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>