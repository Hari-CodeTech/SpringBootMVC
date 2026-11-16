<%@ page contentType="text/html;charset=UTF-8" %>

<html>
	<head>Add Employee data</head>
	
	<body>
		
		
		<form action="${pageContext.request.contextPath}/employees/saveEmp" method="post">

		    Name: <input type="text" name="ename" required>
		    <br><br>

		    Salary: <input type="number" name="sal" required>
		    <br><br>

		    <button type="submit">Add Employee</button>

		</form>
				<form:errors path="ename" cssStyle="color:red"/>
				<form:errors path="sal" cssStyle="color:red"/>
	</body>
</html>