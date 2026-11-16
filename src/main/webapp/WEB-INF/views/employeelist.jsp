<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Employee List</title>
</head>
<body>

<h2>Employee List</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Salary</th>
        <th>Action</th>
    </tr>

    <c:forEach var="emp" items="${employees}">
        <tr>
            <td>${emp.eid}</td>
            <td>${emp.ename}</td>
            <td>${emp.sal}</td>
            <td>
                <a href="${pageContext.request.contextPath}/employees/${emp.eid}/delete">
                    Delete
                </a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>