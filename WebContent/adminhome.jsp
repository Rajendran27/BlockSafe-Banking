<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>FINITY BANKING - ADMIN</title>
 

<style>

/@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap');

* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   font-family: 'Roboto', sans-serif;
}

body {
   background-image:url(image/photo-1541354329998-f4d9a9f9297f.avif) ;
background-size:cover;
}

a {
   text-decoration: none;
}

.container {
   background-color: #203232;
   padding: 10px;
}

.navbar-container {
   width: 85%;
   margin: 0 auto;
}

.navbar {
   display: flex;
   justify-content: space-between;
   align-items: center;
}

.navbar .navbar-logo a {
   color: #fff;
}

.navbar-menu {
   display: flex;
   justify-content: center;
   align-items: center;
}

#navbarMenus ul {
   display: flex;
   justify-content: center;
   gap: 40px;
   list-style: none;
}

#navbarMenus ul li a {
   color: #fff;
   font-size: 17px;
   transition: all 0.3s;
}

#navbarMenus ul li a:hover {
   color: #00bdb7;
   transition: all 0.3s;
}

#navbarMenus ul li a.active{
  color: #00bdb7;
}

/* toggler */

#toggle {
   width: 25px;
   height: 25px;
   cursor: pointer;
   position: relative;
   transition: 0.5s;
   display: flex;
   justify-content: center;
   align-items: center;
   display: none;
   padding-top: 12px;
}

#toggle:before {
   content: '';
   position: absolute;
   width: 100%;
   height: 2px;
   background-color: #fff;
   transform: translateY(-9px);
   box-shadow: 0 9px #fff;
   transition: 0.2s;
}

#toggle:after {
   content: '';
   position: absolute;
   width: 100%;
   height: 2px;
   background-color: #fff;
   transform: translateY(9px);
   transition: 0.2s;
}

/* function */
#toggle.active:before {
   transform: translateY(0px) rotate(45deg);
   box-shadow: 0 0px #fff;
   transition: 0.2s;
}

#toggle.active:after {
   transform: translateY(0px) rotate(-45deg);
   box-shadow: 0 0px #fff;
   transition: 0.2s;
}

.container-body {
   width: 85%;
   margin: 0 auto;
   padding: 10px;
   height: 100vh;
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;
}

.container-body h2 {
   color: #ff9;
   text-align: center;
}

.title{
  color: #00bdb7;
}

@media (max-width: 767px) {
   .navbar-container {
      width: 100%;
   }

   .container-body {
      width: 100%;
      padding: 10px;
   }

   #toggle {
      display: block;
   }

   #navbarMenus {
      border-top: 1px solid rgba(255, 255, 255, 0.1);
      position: absolute;
      top: 47px;
      left: 0;
      width: 100%;
      background-color: #203232;
      max-height: 0px;
      transition: 0.3s;
      overflow: hidden;
   }

   #navbarMenus ul {
      flex-direction: column;
      text-align: center;
      padding: 40px 0;
      font-size: 30px;
      gap: 10px;
   }

   #navbarMenus ul li {
      display: inline-block;
   }

   /* function nav */
   #navbarMenus.active {
      max-height: 22em;
      transition: 0.3s;
      box-shadow: 0vh 50vh 0 50vh rgba(0, 0, 0, 0.548);
   }
}










</style>


















</head>
<body>
<div class="container">
  <div class="navbar-container">
    <nav class="navbar">
      <h1 class="navbar-logo">
       <a href="/" class="header__logo">
          <img id="header-img" src="image/istockphoto-1382305677-612x612.jpg" width="60px;" height="60px" alt="Finitybank" />
        </a>
        <span style="margin-right:30px;margin-top:-30px;color:white;">Finity Banking</span></a>
      </h1>
    
      <div class="navbar-menu">
         <div id="navbarMenus">
            <ul id="navBody">
              <li class="navList"><a href="#" class="active">Home</a></li>
              <li class="navList"><a href="cusrecords.jsp">Customer records</a></li>
              <li class="navList"><a href="request.jsp">Request</a></li>
              
              <li class="navList"><a href="newrequest.jsp">New Client</a></li>
              <li class="navList"><a href="history.jsp">Transaction History</a></li>
           
              <li class="navList"><a href="expensehome.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="toggle"></div>
      </div>

    </nav>
  </div>
</div>

<div class="container-body">
  
</div>

<script type="text/javascript">

const toggle = document.getElementById('toggle');
const navMenu = document.getElementById('navbarMenus');

toggle.addEventListener('click', () => {
 toggle.classList.toggle('active');
 navMenu.classList.toggle('active');
});
window.addEventListener('click', (event) => {
 let navBodyFinder =
    event.target.id !== 'toggle' &&
    event.target.id !== 'navbarMenus' &&
    event.target.id !== 'navBody' &&
    event.target.className !== 'navList';

 if (navBodyFinder) {
    toggle.classList.remove('active');
    navMenu.classList.remove('active');
 }
});
</script>













</body>
</html>