<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>  
    
<style> 
@import url(https://fonts.googleapis.com/css?family=RobotoDraft|Roboto);


body {
  background-color: #34495e;
  background: url(image/photo-1501167786227-4cba60f6d58f.jfif);
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -ms-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: top center;
  -webkit-touch-callout: none;
  -webkit-tap-highlight-color: transparent;
  margin: 10em auto;
}

body:before {
  content: "";
  display: block;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(100, 94, 85, 0.3);
  z-index: -1;
}

::-webkit-scrollbar {
  -webkit-appearance: none;
  width: .3em;
  background-color: #cbcbcb;
}
::-webkit-scrollbar-thumb {
  background: rgba(0,0,0,0.9);
}

.wrapper-indieandcool {
  text-align: center;
  text-transform: uppercase;
  width: 100%;
  color: #fff;
  height: 9em;
  background: rgba(0,0,0,0.5);
}

.wrapper-indieandcool h1 {
  font-family: "RobotoDraft", sans-serif;
  font-size: 4em;
  margin: 1em auto;
}
.wrapper-indieandcool h2.descripcion {
  font-family: "Roboto", sans-serif;
  font-size: 1.47em;
  margin: -1.80em auto;
}


.wrapper-indieandcool .btn-indies {
  display: inline-block;
  background-color: rgba(255, 255, 255, 0.8);
  color: #000;
  border: none;
  padding: .3em 1em;
  font-family: "RobotoDraft", sans-serif;
  font-size: 2em;
  font-weight: bold;
  text-decoration: none;
  margin: 5em auto;
  margin-right: 1em;
}
.wrapper-indieandcool .btn-indies:nth-child(4) {
  background-color: rgba(0,0,0,0.7);
  color: #fff;
  margin-right: 1em;
}

.wrapper-indieandcool .btn-indies:nth-child(4):hover {
  background-color: rgba(255, 255, 255, 0.7);
  color: #000;
}

.wrapper-indieandcool .btn-indies:hover {
  background-color: rgba(0,0,0,0.7);
  color: rgba(255, 255, 255, 0.9);
}

@media screen and (min-width: 30em) and (max-width : 40em) {
body {
  background-position: center center;
}
.wrapper-indieandcool h1 {
  font-size: 3em;
}
.wrapper-indieandcool h2.descripcion {
  font-size: 1.27em;
}
}

@media screen and (max-width: 32em) {
  body {
    margin: 6em auto;
    background-position: center center;
}
.wrapper-indieandcool {
  height: 8em;
}
.wrapper-indieandcool h1 {
  font-size: 2.27em;
  margin: 1.23em auto;
}
.wrapper-indieandcool h2.descripcion {
  font-size: 1.12em;
}
.wrapper-indieandcool .btn-indies {
  display: ;
  background-color: /* rgba(255, 255, 255, 0.8) */;
  color: /* #000 */;
  border: none;
  padding: .3em 1em;
  max-width: 100%;
  font-family: "RobotoDraft", sans-serif;
  font-size: 2em;
  font-weight: bold;
  text-decoration: none;
  margin: 2.47em auto;
}
.wrapper-indieandcool .btn-indies:nth-child(4) {
  margin: -2em auto;
}

}
</style>

<body>
<%session.setAttribute("log", "1"); %>
<div class="wrapper-indieandcool" style="margin-top:10px;">
  <h2>WELCOME BY</h2>
  <h1 style="margin-top:-5px;">FINITY BANK</h1>
  <a href="userlogin.jsp" class="btn-indies" style="float:right;margin-top:-310px;margin-right:240px;border-radius:30px;">USER</a>
  <a href="adminlogin.jsp" class="btn-indies" style="float:right;margin-top:-310px;margin-right:10px;border-radius:30px;">ADMIN</a>
</div>
















<!-- <header>

        <nav>
        
            <a href="#" class="logo"></a>
            
            <ul class="nav-list">
            
                <li><a href="userlogin.jsp">USER</a></li>
                <li><a href="#"></a></li>
                <li><a href="adminlogin.jsp">ADMIN</a></li>
                <li><a href="#"></a></li>
            </ul>
        </nav>  
    </header>
    <main>
    </main>     -->

</body>


</html>