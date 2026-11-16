<form action="${pageContext.request.contextPath}/employees/updateEmp"
      method="post">

    <input type="hidden" name="eid" value="${employee.eid}">

    <label>Employee Name:</label>
    <input type="text" name="ename" value="${employee.ename}" required>

    <br><br>

    <label>Salary:</label>
    <input type="number" name="sal" value="${employee.sal}" required>

    <br><br>

    <button type="submit">Update Employee</button>

</form>