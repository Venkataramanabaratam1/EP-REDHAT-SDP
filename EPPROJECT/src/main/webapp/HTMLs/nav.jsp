<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="../CSS/navstyle.css">
    <link rel="icon" href="../images/icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
</head>

<body>
    <nav>
        <div class="total">
            <div class="menu">
                <img src="../images/menu.png" alt="" id="btn" height="25">
            </div>
            <div class="logo">
               <img src="../images/icon.png" alt=""height='30'>
            </div>
            <div class="container">
                <a href="" class="inside">home</a>
                <a href="" class="inside">plans</a>
                <a href="../HTMLs/contactus.html" class="inside">contactUs</a>
                <a href="../HTMLs/placements.jsp" class="inside">Placements</a>
                <a href="../HTMLs/training.jsp" class="inside">Training</a>
           </div>
           
            <div class="search">
                <!-- <input type="search" > -->
                 <a href="../empprofile.jsp" class="inside">Profile</a>
                <a href="../landingpage.html" class="inside">Logout</a>
            </div>

        </div>
    </nav>

    <script>
      var x = document.getElementById('btn')
      var count = 0
      x.addEventListener('click', () => {
          let a = document.querySelector('.container')
          a.classList.toggle('active')
          if (count == 0) {
              console.log(count);
              x.src = 'images/close.png'
              x.style.height = '30px'
              count++
          }
          else {
              x.src = 'images/menu.png'
              x.style.height = '25px'
              count--
          }

      })
  </script>

</body>

</html>
