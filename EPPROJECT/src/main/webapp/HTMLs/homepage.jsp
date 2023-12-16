<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="./nav.jsp"/>    
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/home.css">
    <title>Homepage</title>
</head>
<body>
<%
 
  String name=(String)session.getAttribute("name");
%>
    
   <div class="back">
    <img src="../images/Home1.jpg" id="chg" alt="img" width="100%" height="70%">
     &nbsp;
    <center><h1>Welcome to our web site</h1></center><br/>
    
   </div>
  <div class="fore"> 
    <h1>Hello <%=name %>!</h1>
   </div>
  
   
<script>
    var count=1;
    function slide()
    {
        var names=['Training','Placement','Certification','Guidance']; // Note the use of semicolon to end the statement
        var para=["Training advances knowledge, embracing innovation, and striking ethical balance for a sustainable, interconnected, and inclusive digital future.","Certification is vital in technology's evolving landscape, validating skills, ensuring competitiveness, and fostering continuous improvement for professionals.","Placement enhances opportunities, linking talents with suitable roles, driving success, and contributing to a thriving, dynamic workforce.","Guidance empowers growth, providing direction, support, and wisdom to navigate challenges, enabling individuals to reach their full potential."];
          /* var x=document.querySelector('.back'); */
        var x=document.getElementById('chg');
        document.querySelector('.fore').innerHTML='<h1>' + names[count-1] + '</h1>' +
        '<p>' + para[count-1] + '</p>';
          x.src="../images/Home"+count+".jpg"
           count+=1;
           if(count>4)
           {
            count=1;
           }
           console.log(x.src);
    }
   
    setInterval(slide, 3000);

</script>

</body>
</html>
