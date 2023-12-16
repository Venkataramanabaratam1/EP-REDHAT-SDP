<%@page import="com.klef.ep.models.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Employee"%>
<%@page import="com.klef.ep.models.Admin"%>
<!DOCTYPE html>
<html>
<head>
  <title>Viewallstudents</title>
  
  <style>
  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: center;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  /* Center the heading */
  h2 {
    text-align: center;
  }
 </style>
 
</head>

<body>
  <h2 align="center">Placement and Training Project</h2>
  <hr color="black"/><hr color="black"/>
  <br/>

  <a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
  <a href="viewallstuds.jsp">View All Students</a>&nbsp;&nbsp;&nbsp;

  <br>

  <h2 align="center"><u>View All Students</u></h2>
  <table align="center" border="2">
    <tr>
      <th>ID</th>
      <th>Full Name</th>
      <th>Gender</th>
      <th>Date of Birth</th>
      <th>Department</th>
      <th>Year</th>
      <th>Semester</th>
      <th>Backlogs</th>
      <th>Cgpa</th>
      <th>Email Address</th>
      <th>Contact No</th>
      <th>Action</th>
    </tr>

    <%-- Add CSS styles to the table rows using "class" attribute --%>
    <%
      InitialContext context = new InitialContext();
      AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");
      List<Student> studlist = adminService.ViewAllStudents();

      for (Student emp : studlist) {
    %>
    <tr>
      <td><%=emp.getId()%></td>
      <td><%=emp.getName()%></td>
      <td><%=emp.getGender()%></td>
      <td><%=emp.getDob()%></td>
      <td><%=emp.getDepartment()%></td>
      <td><%=emp.getYear()%></td>
      <td><%=emp.getSemester()%></td>
      <td><%=emp.getBacklogs()%></td>
      <td><%=emp.getCgpa()%></td>
      <td><%=emp.getEmail()%></td>
      <td><%=emp.getContactno()%></td>
      <td><a href="deleteemp.jsp?eid=<%=emp.getId()%>">Delete</a></td>
    </tr>
    <%
      }
    %>
  </table>
</body>
</html>
