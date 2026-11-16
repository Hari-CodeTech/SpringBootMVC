# Employee Management System

A web-based Employee Management System developed using Java, Spring Boot MVC, JSP, Hibernate, Spring Data JPA, and MySQL. The application allows users to manage employee records through CRUD (Create, Read, Update, Delete) operations.

## 🚀 Features

- **Add Employee:** Register new employees with name and salary.
- **View Employees:** Display all employee records in a dashboard.
- **Update Employee:** Edit existing employee information.
- **Delete Employee:** Remove employee records.
- **Form Validation:** Validate employee details before saving.
- **Database Integration:** Store employee information in MySQL.
- **Responsive UI:** Dashboard designed using Bootstrap 5 and custom CSS.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java 21 | Programming Language |
| Spring Boot 4.1.2 | Application Framework |
| Spring MVC | Web Request Handling |
| Spring Data JPA | Database Operations |
| Hibernate | ORM Framework |
| MySQL 8 | Database |
| JSP | View Technology |
| JSTL | Dynamic JSP Content |
| Bootstrap 5 | UI Design |
| HTML5 & CSS3 | Frontend |
| Maven | Dependency Management |
| Eclipse IDE | Development Environment |

## 📂 Project Structure

```text
EmployeeManagementSystem/
│
├── src/main/java/
│   └── com/example/demo/
│       ├── controller/
│       │   └── EmployeeController.java
│       ├── model/
│       │   └── Employee.java
│       ├── repo/
│       │   └── EmployeeRepo.java
│       └── SpringBootMvcApplication.java
│
├── src/main/resources/
│   ├── static/
│   │   └── css/
│   │       └── style.css
│   └── application.properties
│
├── src/main/webapp/
│   └── WEB-INF/
│       └── views/
│           ├── addEmployee.jsp
│           ├── employeelist.jsp
│           └── editEmployee.jsp
│
├── pom.xml
└── README.md
```

## ⚙️ Database Configuration

Create a MySQL database:

```sql
CREATE DATABASE springbootmvc;
```

Configure `application.properties`:

```properties
spring.application.name=SpringBootMVC

spring.datasource.url=jdbc:mysql://localhost:3306/springbootmvc?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=root

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
```

Update the database username and password according to your MySQL configuration.

## ▶️ How to Run the Project

1. Clone or download this repository.
2. Open the project in Eclipse IDE.
3. Configure your MySQL database credentials.
4. Update Maven dependencies.
5. Run `SpringBootMvcApplication.java`.
6. Open the application in your browser.

**Application URL:**

```text
http://localhost:8080
```

## 🌐 Application Endpoints

| HTTP Method | Endpoint | Description |
|---|---|---|
| GET | `/employees/addEmp` | Open employee registration page |
| POST | `/employees/saveEmp` | Save a new employee |
| GET | `/employees/getEmp` | Display all employees |
| GET | `/employees/{eid}/edit` | Open employee edit page |
| POST | `/employees/updateEmp` | Update employee details |
| GET | `/employees/{eid}/delete` | Delete an employee |

## 🗄️ Employee Database Structure

| Column | Data Type | Description |
|---|---|---|
| eid | INT | Primary Key, Auto Increment |
| ename | VARCHAR | Employee Name |
| sal | DOUBLE | Employee Salary |

## 📸 Application Modules

1. Employee Dashboard
2. Employee Registration
3. Employee List
4. Employee Update
5. Employee Delete

## 🎯 Learning Outcomes

- Understanding Spring Boot MVC architecture.
- Implementing CRUD operations using Spring Data JPA.
- Understanding entity mapping with Hibernate.
- Integrating Spring Boot with MySQL.
- Handling HTTP GET and POST requests.
- Working with JSP and JSTL.
- Implementing server-side form validation.
- Designing responsive interfaces using Bootstrap.

## 👨‍💻 Developer

**Hari Satya Sai Puvvala**

Java Developer | Full Stack Java Developer

---

⭐ If you find this project useful, feel free to explore the source code.
