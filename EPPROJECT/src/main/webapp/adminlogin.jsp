<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<style>
body {
  background-color: lightblue;
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

h2 {
  text-align: center;
}

hr {
  border: 1px solid black;
}

.container {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: white;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

form {
  display: flex;
  flex-direction: column;
}

label {
  font-weight: bold;
}

input[type="text"],
input[type="password"] {
  padding: 8px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
}

input[type="submit"],
input[type="reset"] {
  padding: 10px 20px;
  margin: 10px 0;
  background-color: #007BFF;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
  background-color: #0056b3;
}

a {
  display: inline-block;
  margin-top: 20px;
  color: #007BFF;
  text-decoration: none;
}

a:hover {
  color: #0056b3;
}
</style>
</head>
<body>

<h2>Placement and Training</h2>
<hr/><hr/>
<br/>

<a href="landingpage.html"><button>Back</button></a>&nbsp;&nbsp;
<br> <br>

<div class="container">
  <h2 style="text-align: center; text-decoration: underline;">Admin Login</h2>
  <form method="post" action="checkadminlogin.jsp"> 
    <label><b>Username</b></label>
    <input type="text" name="uname" required>

    <label><b>Password</b></label>
    <input type="password" name="pwd" required>

    <div style="text-align: center;">
      <input type="submit" value="Login" required>
      <input type="reset" value="Clear" required>
    </div>
  </form>
</div>

</body>
</html>