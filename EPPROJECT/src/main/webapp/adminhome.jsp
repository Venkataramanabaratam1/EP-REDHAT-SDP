<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Employee" %>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>
<body>


 <h2 align="center">Placement and Training Project</h2>
  <hr color="black"/><hr color="black"/>
  <br/>

<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewallstuds.jsp">View All Students</a>&nbsp;&nbsp;&nbsp;
<a href="addcourses.html">Add Course(s)</a>&nbsp;&nbsp;&nbsp;
<a href="view.jsp">Delete Course(s)</a>&nbsp;&nbsp;&nbsp;
<a href="placement.html">Add Placement(s)</a>&nbsp;&nbsp;&nbsp;
<a href="view1.jsp">Delete Placement(s)</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;

<br>

<h3 align="center">You are in Admin Home</h3>

Welcome <%=username%>
<center>
<img src="./images/Admin.jpg" alt="img" width="30%" height="50%"> </center>

</body>
</html>