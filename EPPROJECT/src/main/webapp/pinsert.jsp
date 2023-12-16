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
	Placement ces=new Placement();
	ces.setId(id);
	ces.setAbout(about);
	ces.setName(name);
	ces.setRoute(route);
	ces.setImgsrc(url);
	InitialContext context=new InitialContext(); 
	AdminService addpla =(AdminService)context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");  
	String s= addpla.Addplacement(ces);
	if(s==null)
	{
		out.println("go");
	}
	else
	{
		
		response.sendRedirect("view1.jsp");
	}
		

	
	
	%>
</body>
</html>