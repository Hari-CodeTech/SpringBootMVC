<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html> <head>     <title>Employee Management Dashboard\</title>


<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">


</head>

<body>

<div class="container-fluid">     <div class="row">


    <!-- Sidebar -->
    <div class="col-md-2 sidebar">
        <h3>EMS</h3>
        <p>Employee Management</p>

        <hr>

        <a href="${pageContext.request.contextPath}/employees/getEmp">Dashboard</a>
        <a href="${pageContext.request.contextPath}/employees/addEmp">Add Employee</a>
    </div>

    <!-- Main Content -->
    <div class="col-md-10 main-content">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <h2>Employee Dashboard</h2>
                <p>Manage your employee records</p>
            </div>

            <a href="${pageContext.request.contextPath}/employees/addEmp"
               class="btn btn-primary">
                + Add Employee
            </a>
        </div>

        <!-- Statistics -->
        <div class="row mb-4">
            <div class="col-md-4">
                <div class="stat-card">
                    <h6>Total Employees</h6>
                    <h2>${employees.size()}</h2>
                </div>
            </div>
        </div>

        <!-- Employee Table -->
        <div class="card shadow-sm">
            <div class="card-body">

                <h5 class="mb-3">Employee Records</h5>

                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Salary</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="emp" items="${employees}">
                                <tr>
                                    <td>${emp.eid}</td>
                                    <td>${emp.ename}</td>
                                    <td>₹ ${emp.sal}</td>

                                    <td>
                                        <a class="btn btn-sm btn-outline-primary"
                                           href="${pageContext.request.contextPath}/employees/${emp.eid}/edit">
                                            Edit
                                        </a>

                                        <a class="btn btn-sm btn-outline-danger"
                                           href="${pageContext.request.contextPath}/employees/${emp.eid}/delete">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>

            </div>
        </div>

    </div>
</div>


</div>

</body>
</html>
