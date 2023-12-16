<%@page import="com.klef.ep.services.EmployeeService"%>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Employee"%>
<%@page import="com.klef.ep.models.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");

String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

Admin admin = adminService.CheckAdminLogin(uname, pwd);

if(admin!=null)
{   
	  //session is an implicit object
	   session.setAttribute("username", uname);  // username is a session variable
	   response.sendRedirect("adminhome.jsp"); // will redirect to admin home
}
else
{
	  response.sendRedirect("adminloginfail.html");  // will redirect to login failed page
}



%>