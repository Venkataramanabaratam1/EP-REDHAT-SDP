<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Course</title>
</head>
<body>
<%
String uid=request.getParameter("id");
int id=Integer.parseInt(uid);
InitialContext context=new InitialContext(); 
AdminService show =(AdminService)context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");  
show.Deletecourse(id);
response.sendRedirect("view.jsp");
%>

</body>
</html>