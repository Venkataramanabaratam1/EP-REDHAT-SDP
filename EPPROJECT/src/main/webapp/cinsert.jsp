<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String about=request.getParameter("about");
	String route=request.getParameter("route");
	String url=request.getParameter("src");
	Course ces=new Course();
	ces.setId(id);
	ces.setAbout(about);
	ces.setName(name);
	ces.setRoute(route);
	ces.setImgsrc(url);
	InitialContext context=new InitialContext(); 
	AdminService addcou =(AdminService)context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");  
	String s= addcou.Addcourse(ces);
	if(s==null)
	{
		out.println("go");
	}
	else
	{
		out.println("mg");
		response.sendRedirect("view.jsp");
	}
		

	
	
	%>
</body>
</html>