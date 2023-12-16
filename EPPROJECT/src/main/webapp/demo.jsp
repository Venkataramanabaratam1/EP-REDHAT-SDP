<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.Student,java.util.*" %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>
  <%
    InitialContext context =new InitialContext();
  StudentService stulogin =(StudentService)context.lookup("java:global/EPPROJECT/StudentServiceImpl!com.klef.ep.services.StudentService");  
    String email=request.getParameter("semail");
    String pwd=request.getParameter("pwd");
   List<Student> lst=stulogin.viewAllStudents();
    //out.println(e);
	
   // if(lst==null)
    //	out.println("dengindhi");
	    for(Student e:lst){
	    	   if(e.getEmail().equals(email))
	    	  {
	    		  if(e.getPassword().equals(pwd))
	    		  {
	    			  String name=e.getName();
	                  session.setAttribute("name", name);
	    			response.sendRedirect("./HTMLs/homepage.jsp");
	    		  }
	    		  else
	    		  {
	    			  out.println("Login Failed");
	    		  }
	    	  } 
	    /* out.println(e.getName()); */
	    }
   /*System.out.println(email);
   Student s= stulogin.login(email, pwd);
    if(s==null){
    	out.println("login sucess");
    	}
    else
    	out.println("login fail");*/

  %>

</h1>
</html>