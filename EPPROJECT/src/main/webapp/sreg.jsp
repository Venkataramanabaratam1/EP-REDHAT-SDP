<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.Student" %>
       
    <%
    
    	Student user =new Student();
    	user.setId(Integer.parseInt(request.getParameter("id")));
    	user.setName(request.getParameter("name"));
   		user.setGender(request.getParameter("gender"));
   		user.setDob(request.getParameter("dob"));
   		user.setYear(Integer.parseInt(request.getParameter("year")));
   		user.setSemester(request.getParameter("sem"));
   		user.setDepartment(request.getParameter("dep"));
   		user.setCgpa(Double.parseDouble(request.getParameter("cgpa")));
   		user.setBacklogs(Integer.parseInt(request.getParameter("backlogs")));
   		user.setEmail(request.getParameter("semail"));
   		user.setPassword(request.getParameter("pwd"));
   		user.setContactno(request.getParameter("contactno"));
   		InitialContext context=new InitialContext(); 	
   		StudentService studentreg =(StudentService)context.lookup("java:global/EPPROJECT/StudentServiceImpl!com.klef.ep.services.StudentService");  
   		String ack = studentreg.registerstudent(user);
   		
   		response.sendRedirect("addempsuccess.jsp");
   		  
    %>
    
