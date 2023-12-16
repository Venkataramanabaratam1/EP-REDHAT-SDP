<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="javax.naming.InitialContext,com.klef.ep.services.* ,com.klef.ep.models.*,java.util.*"%>
<%-- <jsp:include page="nav.jsp"/> --%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<style>
body {
    /* background-image: url("https://wallpapercave.com/wp/wp2417737.jpg"); */
    background-color: #effcff;
    overflow-x: hidden;
    /* margin: 0; */
}
.total
     {
      z-index: 99;
      position: absolute;
     background-color: rgba(0, 0, 0, 0.778);
     }
     .inside{
     color: white;
     }

.main {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content:space-evenly;
    margin-top: 30px;
}

.content {
    position: relative;
    height: 50%;
    max-width: 100%;
    background: linear-gradient(180deg, rgba(7,7,7,0.2) 5%, rgba(6,6,6,0.435) 52%);
}
.content h1
{
    position: absolute;
    inset: 0;
    color: rgb(239, 248, 255);
    text-transform: uppercase;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;

}


.content img{
    position: relative;
    object-fit: cover;
    height: 100%;
    width: 100%;
    z-index: -1;
}

/* .total {
    position: absolute;
    inset: 0;
    background: linear-gradient(180deg, rgba(7,7,7,0.2) 5%, rgba(6,6,6,0.435) 52%);
} */



.cardio {
    position: relative;
    height: 200px;
    min-height: 100%;
     max-width: 300px;
    width: 100%;
    background-color: rgb(0, 0, 0);
    border: none;
    border-radius: 15px;
    box-shadow: 0px 0px 4px rgba(45, 45, 45, 0.758);
    z-index: 1;
    box-sizing: border-box;
    margin: 8px;
    margin-right: 15px;
    transition: .5s ease;
}

.cardio img {
    height: 75%;
    min-height: min-content;
    width: 100%;
    border-radius: 15px 15px 0px 0px;
}

.cardio:hover {
    transform: translateY(-10%);
}

.inside {
    position: absolute;
    inset: 0;
    height: 75%;
    box-sizing: border-box;
    z-index: 1;
}

.bootstrap-btn {
    display: inline-block;
    font-weight: 400;
    text-align: center;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    color: #fff;
    background-color: #007bff;
}

.bootstrap-btn:hover {
    background-color: #0069d9;
}

.bootstrap-btn:active {
    background-color: #0048d9;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.345);
}

.details {
    position: absolute;
    height: 100%;
    inset: 0;
    opacity: 0;
    color: azure;
    transition: .5s ease-in;
    background-color: rgba(20, 20, 20, 0.578);
    border-radius: 15px 15px 0px 0px;
}

.details p {
    text-transform: uppercase;
    
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    padding: 15%;
   
    margin: auto;
    letter-spacing: 1px;
}

.boost {
    box-sizing: border-box;
    position: absolute;
    bottom: 0px;
    height: 25%;
    width: 100%;
    z-index: 2;
    display: flex;
    align-items: center;
    justify-content: space-around;
    text-transform: uppercase;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    flex-direction: row;
    border-radius: 0px 0px 15px 15px;
    background-color: rgb(252, 252, 252);
}

.inside:hover .details {
    opacity: 1;
}
</style>
           
        <div class="content">
          <h1>placements offered</h1>
          <img src="https://wallpapercave.com/wp/wp2417737.jpg" alt="">
        </div>&nbsp;
        <a href="homepage.jsp"><button class="bootstrap-btn">Back</button></a>
    <div class="main">
<%
		InitialContext context=new InitialContext(); 
		AdminService show =(AdminService)context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");  
		List<Placement> lst=show.View1();
		for(Placement e:lst)
		{
%>
        <div class="cardio">
            <img src="<%=e.getImgsrc()  %>" alt="" loading="lazy">
            <div class="boost">
                <h3><%=e.getName() %></h3>
               <a href="<%=e.getRoute() %>"> <button class="bootstrap-btn"> Apply</button></a>
            </div>
            <div class="inside">
                <div class="details">
                    <p> <%=e.getAbout() %></p>
                </div>
            </div>
        </div>
 
   <% 
   }
  
  %>
</div>
  
</body>
</html>

