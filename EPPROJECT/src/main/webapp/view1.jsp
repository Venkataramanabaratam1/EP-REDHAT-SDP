<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"
  import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Delete Trainings</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<a href="adminhome.jsp">Back</a>
<style>
/* Reset some default styles */
body, html {
  margin: 0;
  padding: 0;
  display:flex;
  flex-direction:column;
  font-family: Arial, sans-serif;
}

/* Center the table on the page */
body {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  height: 100vh;
  background-color: #f0f0f0;
}

table {
  border-collapse: collapse;
  width: 80%;
  max-width: 800px;
  background-color: #fff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  margin-top: 20px;
}

th, td {
  padding: 12px;
  text-align: left;
  
  border: 2px solid #ddd;
}

th {
  background-color: #007bff;
  color: #fff;
}

tr:hover {
  background-color: #f2f2f2;
}

a {
  text-decoration: none;
  color: #007bff;
}

a:hover {
  text-decoration: underline;
}


</style>
<div>
<h1>Delete Training</h1>
</div>
<%

  InitialContext context=new InitialContext(); 
  AdminService show =(AdminService)context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");  
  List<Placement> lst=show.View1();
  %>
  <table>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>About</th>
      <th>Action</th>
     <!--  <th>About</th>
      <th>Action</th> -->
    </tr>
    <% for(Placement e : lst) { %>
    <tr>
      <td><%= e.getId() %></td>
      <td><%= e.getName() %></td>
     <%--  <td><%= e.getRoute() %></td> --%>
      <%-- <td><%= e.getImgsrc()%></td> --%>
      <td><%= e.getAbout() %></td>
      <td><a href="Deletecourse1.jsp?id=<%= e.getId()%>">Delete</a></td>
    </tr>
    <% } %>
  </table>

</body>
</html>