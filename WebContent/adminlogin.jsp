<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  overflow: hidden;
  background-color: #cfd1e1;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
}

.container .box {
  position: relative;
  width: 400px;
  height: 480px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.container .box::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 25px;
  height: 100%;
  background: linear-gradient(#fff, #fff, #e3e3e3);
  filter: blur(1px);
  -webkit-filter: blur(1px);
  z-index: 1;
}

.container .box::after {
  content: "";
  position: absolute;
  top: 1px;
  right: -1px;
  width: 25px;
  height: 100%;
  background: #9d9d9d;
  filter: blur(1px);
  -webkit-filter: blur(1px);
  z-index: 1;
}

.container .box .shadow {
  position: absolute;
  width: 100%;
  height: 100%;
  background: #eee;
}

.container .box .shadow::before {
  content: "";
  position: absolute;
  top: 0;
  left: calc(100% + 96px);
  width: 120%;
  height: 240%;
  background: linear-gradient(rgba(0, 0, 0, 0.075), transparent);
  transform: skewX(45deg);
  -webkit-transform: skewX(45deg);
  -moz-transform: skewX(45deg);
  -ms-transform: skewX(45deg);
  -o-transform: skewX(45deg);
}

.container .box .shadow::after {
  content: "";
  position: absolute;
  bottom: -200%;
  left: calc(100% + 80px);
  width: 100%;
  height: 200%;
  background: linear-gradient(rgba(0, 0, 0, 0.075), transparent);
  transform: skewX(45deg);
  -webkit-transform: skewX(45deg);
  -moz-transform: skewX(45deg);
  -ms-transform: skewX(45deg);
  -o-transform: skewX(45deg);
}

.cover {
  position: absolute;
  top: 0;
  left: -100px;
  width: 100px;
  height: 100px;
  background: #cfd1e1;
  z-index: 10;
}

.content {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  width: 100%;
  height: 100%;
  background: linear-gradient(#dbdae1, #a3aaba);
  box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1), 15px 15px 15px rgba(0, 0, 0, 0.1),
    20px 10px 20px rgba(0, 0, 0, 0.1), 50px 50px 85px rgba(0, 0, 0, 0.25),
    inset 3px 3px 2px #fff;
}

.content .form {
  position: relative;
  width: 260px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.logo {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 70px;
  height: 70px;
  background-color: #444;
  color: #fff;
  font-size: 1.75em;
  margin-bottom: 10px;
  border-radius: 50%;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  -ms-border-radius: 50%;
  -o-border-radius: 50%;
}

.content .form h2 {
  font-size: 2em;
  color: #444;
}

.content .form .inputBox {
  position: relative;
  width: 100%;
  margin-top: 30px;
}

.content .form .inputBox input {
  position: relative;
  width: 100%;
  padding: 10px 0 10px 25px;
  font-size: 1em;
  background: transparent;
  box-shadow: none;
  border: none;
  outline: none;
  border-bottom: 3px solid #444;
  color: #444;
}

.content .form .inputBox i {
  position: absolute;
  left: 0;
  bottom: 15px;
  font-size: 1em;
  color: #444;
}

.content .form .inputBox span {
  position: absolute;
  left: 0;
  padding: 10px 0 10px 25px;
  font-size: 1em;
  pointer-events: none;
  color: #444;
  transition: 0.5s;
  -webkit-transition: 0.5s;
  -moz-transition: 0.5s;
  -ms-transition: 0.5s;
  -o-transition: 0.5s;
}

.content .form .inputBox input:focus ~ span,
.content .form .inputBox input:valid ~ span {
  transform: translateY(-20px);
  -webkit-transform: translateY(-20px);
  -moz-transform: translateY(-20px);
  -ms-transform: translateY(-20px);
  -o-transform: translateY(-20px);
  font-size: 0.9em;
  background-color: #444;
  color: #fff;
  padding: 2px 4px;
}

.content .form .links {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin-top: 15px;
}

.content .form .links a {
  color: #444;
  text-decoration: none;
  font-size: 0.9em;
}

.content .form .inputBox input[type="submit"] {
  background-color: #444;
  color: #fff;
  cursor: pointer;
  padding: 10px;
  font-size: 1em;
  transition: 0.5s;
  -webkit-transition: 0.5s;
  -moz-transition: 0.5s;
  -ms-transition: 0.5s;
  -o-transition: 0.5s;
}

.content .form .inputBox input[type="submit"]:hover {
  background-color: #333;
}


</style>

<body>


    <div class="container">
      <div class="box">
        <div class="cover"></div>
        <div class="shadow"></div>
        <div class="content">
          <div class="form" >
            <form action="adminlogin" method="post">
           
            <h2>ADMIN LOGIN</h2>
            <div class="inputBox">
              <input type="text" name="admin_name" required />
              <i class="fa-solid fa-user"></i>
              <span>Username</span>
            </div>
            <div class="inputBox">
              <input type="password"  name="admin_password" required />
              <i class="fa-solid fa-lock"></i>
              <span>Password</span>
            </div>
            <div class="links">
              
           
            </div>
            <div class="inputBox">
              <input type="submit" value="Login" />
                  </form>
            </div>
          </div>
        </div>
      </div>
    </div>


</body>
</html>