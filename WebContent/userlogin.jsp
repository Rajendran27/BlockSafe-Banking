<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>


*{
     font-family:'Montserrat', sans-serif;
     margiin: 0;
     padding: 0;
     
}

body{
  background: linear-gradient(90deg, rgba(22,9,121,1) 0%, rgba(43,43,51,1) 1%, rgba(64,89,106,1) 100%, rgba(0,212,255,1) 100%),url(images/photo-1519162584292-56dfc9eb5db4.jfif);
 background-position: center ;
  
   -webkit-background-size:cover ; 
    height: 100vh;
    width: 200vh;
    margin: auto;
    background-repeat: no-repeat;
    background-size: 120%;
 
}

.container{

  width:360px;
  height:350px;
  background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),transparent;
  
  position: absolute;
  border-radius:10px;
  top:50%;
  left:50%;
  transform: translate(-50%, -50%);
  color:white;
  text-align: center;
  
}
.container h1{

  font-size:35px;
  margin-top:40px;
  margin-bottom:30px;
  
}

.box{

  width:260px;
  height:40px;
  background:#f1f1f1b3;
  border-radius:10px;
  margin:10px auto;
  
}

.btn{

  font-family:'Montserrat', sans-serif;
  width:260px;
  height:40px;
  background:#9254C8;
  border-radius:10px;
  margin:14px auto;
  display:block;
  font-size:16px;
  border:none;
  color:white;
  cursor:pointer;
  transition:0.4s all;
  
}

.btn:hover{

  background:#3498db;
  
}

.box input{

  font-family:'Montserrat', sans-serif;
  background:none;
  border:none;
  outline:none;
  text-align:center;
  width:90%;
  line-height:37px;
  font-size:16px;
  color:#333;
  
}

.b1{

  display:block;
  width:260px;
  padding:20px 0;
  text-decoration:none;
  color:white;
  text-align:center;
  margin: auto;
  transition:0.4s all;
  
}

.b2{

  position:absolute;
  bottom:43px;
  left:50%;
  transform:translateX(-50%);
  width:260px;
  padding:10px 0;
  text-decoration:none;
  text-align:center;
  transition:0.4s all;
  color:white;
  
}

a:hover{

  background:#00000040;
  
}
.fab{
  display:block;
  margin:10px 20px 0px 20px;
}
.fa-github{
  color:black;
}
.fa-google{
  color:#c41b1b;
}
.fa-facebook-square{
  color:#002fa6;
}
.fab:hover{
  cursor:pointer;
}

</style>

<body>
<%
String mail=session.getAttribute("log").toString();
if(mail.equals("1")){ %>

  <div class="container">
    <h1>Login</h1>
    <form action="userlogin" method="post" >
      <div class="box">
        <input type="text" name="useremail" placeholder="Mail-Id" required maxlength="30">
      </div>
      <div class="box">
        <input type="password" name="userpass" placeholder="Password"	required maxlength="15">
      </div>
      <input type="submit" class="btn" value="Login">
    </form>
    
    <a href="#" class="b1"></a>
    <div style="margin-bottom:-40px;color:white">
    <a href="userregister.jsp" class="b2"  >Create Account</a></div>
    <br><br><hr>
    <p></p>
    <div class="icon">
    <i class="fab fa-github fa-2x"></i>
    <i class="fab fa-google fa-2x"></i>
    <i class="fab fa-facebook-square fa-2x"></i>
    </div>
  </div>
<%}else{ %>
<div class="container">
<p>Sorry, Check Username and Password...</p>
    <h2>Login</h2>
    <form action="userlogin" method="post" >
      <div class="box">
        <input type="text" name="useremail" placeholder="Mail-Id" required maxlength="30">
      </div>
      <div class="box">
        <input type="password" name="userpass" placeholder="Password"	required maxlength="15">
      </div>
      <input type="submit" class="btn" value="Login">
    </form>
    
    <a href="#" class="b1"></a>
    <div style="margin-bottom:-40px;color:white">
    <a href="userregister.jsp" class="b2"  >Create Account</a></div>
    <br><br><hr>
    <p></p>
    <div class="icon">
    <i class="fab fa-github fa-2x"></i>
    <i class="fab fa-google fa-2x"></i>
    <i class="fab fa-facebook-square fa-2x"></i>
    </div>
  </div>
<%} %>
</body>
</html> --%>












<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>


/* Animated Wave Background Style  */
html, body {
    width: 100%;
    height: 100%;
}
body {
    background:radial-gradient(ellipse at center, rgba(255,254,234,1) 0%, rgba(255,254,234,1) 35%, #B7E8EB 100%);
    overflow: hidden;
}

.ocean {
    height: 5%;
    width:100%;
    position:absolute;
    bottom:0;
    left:0;
    background: #015871;
}

.wave {
    background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/85486/wave.svg) repeat-x;
    position: absolute;
    top: -198px;
    width: 6400px;
    height: 198px;
    animation: wave 5s cubic-bezier( 0.36, 0.45, 0.63, 0.53) infinite;
    transform: translate3d(0, 0, 0);
}

.wave:nth-of-type(2) {
    top: -175px;
    animation: wave 7s cubic-bezier( 0.36, 0.45, 0.63, 0.53) -.125s infinite, swell 7s ease -1.25s infinite;
    opacity: 1;
}

@keyframes wave {
    0% {
        margin-left: 0;
    }
    100% {
        margin-left: -1600px;
    }
}

@keyframes swell {
    0%, 100% {
        transform: translate3d(0,-25px,0);
    }
    50% {
        transform: translate3d(0,5px,0);
    }
}

/* Login Section Style */
* {
    box-sizing: border-box;
}

body {
    font-family: 'Montserrat', sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: -20px 0 50px;
    margin-top: 20px;
}

h1 {
    font-weight: bold;
    margin: 0;
}

p {
    font-size: 14px;
    font-weight: 100;
    line-height: 20px;
    letter-spacing: .5px;
    margin: 20px 0 30px;
}

span {
    font-size: 12px;
}

a {
    color: #0e263d;
    font-size: 14px;
    text-decoration: none;
    margin: 15px 0;
}

.container {
    background: #fff;
    border-radius: 90px;
    box-shadow: 30px 14px 28px rgba(0, 0, 5, .2), 0 10px 10px rgba(0, 0, 0, .2);
    position: relative;
    overflow: hidden;
    opacity: 85%;
    width: 768px;
    max-width: 100%;
    min-height: 480px;
    transition: 333ms;
}


.form-container form {
    background: #fff;
    display: flex;
    flex-direction: column;
    padding:  0 50px;
    height: 100%;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.social-container {
    margin: 20px 0;
    display: block;
}


.social-container a {
    border: 1px solid #008ecf;
    border-radius: 50%;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    margin: 0 5px;
    height: 40px;
    width: 40px;
    transition: 333ms;
}
.social-container a:hover {
    transform: rotateZ(13deg);
    border: 1px solid #0e263d;
}

.form-container input {
    background: #eee;
    border: none;
    border-radius: 50px;
    padding: 12px 15px;
    margin: 8px 0;
    width: 100%;
}
.form-container input:hover {
    transform: scale(101%);
}

button {
    border-radius: 50px;
    box-shadow: 0 1px 1px ;
    border: 1px solid #008ecf;
    background: #008ecf;
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    padding: 12px 45px;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: transform 80ms ease-in;
}

button:active {
    transform: scale(.95);
}

button:focus {
    outline: none;
}

button.ghost {
    background: transparent;
    border-color: #fff;
}

.form-container {
    position: absolute;
    top: 0;
    height: 100%;
    transition: all .6s ease-in-out;
}

.sign-in-container {
    left: 0;
    width: 50%;
    z-index: 2;
}

.sign-up-container {
    left: 0;
    width: 50%;
    z-index: 1;
    opacity: 0;
}

.overlay-container {
    position: absolute;
    top: 0;
    left: 50%;
    width: 50%;
    height: 100%;
    overflow: hidden;
    transition: transform .6s ease-in-out;
    z-index: 100;
}

.overlay {
    background: #ff416c;
    background: linear-gradient(to right, #008ecf, #008ecf) no-repeat 0 0 / cover;
    color: #fff;
    position: relative;
    left: -100%;
    height: 100%;
    width: 200%;
    transform: translateY(0);
    transition: transform .6s ease-in-out;
}

.overlay-panel {
    position: absolute;
    top: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 0 40px;
    height: 100%;
    width: 50%;
    text-align: center;
    transform: translateY(0);
    transition: transform .6s ease-in-out;
}

.overlay-right {
    right: 0;
    transform: translateY(0);
}

.overlay-left {
    transform: translateY(-20%);
}

/* Move signin to right */
.container.right-panel-active .sign-in-container {
    transform: translateY(100%);
}

/* Move overlay to left */
.container.right-panel-active .overlay-container {
    transform: translateX(-100%);
}

/* Bring signup over signin */
.container.right-panel-active .sign-up-container {
    transform: translateX(100%);
    opacity: 1;
    z-index: 5;
}

/* Move overlay back to right */
.container.right-panel-active .overlay {
    transform: translateX(50%);
}

/* Bring back the text to center */
.container.right-panel-active .overlay-left {
    transform: translateY(0);
}

/* Same effect for right */
.container.right-panel-active .overlay-right {
    transform: translateY(20%);
}

/* https://Github.com/YasinDehfuli
	 https://Codepen.io/YasinDehfuli */</style>



<body>
<!-- Animated Wave Background  -->
<div class="ocean">
    <div class="wave"></div>
    <div class="wave"></div>
</div>
<!-- Log In Form Section -->
<section>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="userregister" method="post" >
                <h1>Sign Up</h1>
                <!-- <div class="social-container">
                    <a href="https://Github.com/YasinDehfuli" target="_blank" class="social"><i class="fab fa-github"></i></a>
                    <a href="https://Codepen.io/YasinDehfuli" target="_blank" class="social"><i class="fab fa-codepen"></i></a>
                    <a href="mailto:Ydehfuli@gmail.com" target="_blank" class="social"><i class="fab fa-google"></i></a>
                </div> -->
                <span>Or use your Email for registration</span>
                <label>
                     <input type="text" id="name" name="username" placeholder="Name">
                </label>
                <label>
                    <input type="email" id="email" name="useremail" placeholder="Mail-Id">
                </label>
                <label>
                   <input type="text" id="email" name="usermobileno" placeholder="Mobile">
                </label>
                <label>
                  <input type="password" id="password" name="userpass" placeholder="Password" autocomplete="off">
             
                </label>
               <!--  <label>
                   <input type="file" name="filename" accept="image/*" ">
                </label>
                 --><button style="margin-top: 9px">Sign Up</button>
            </form>
        </div>
        <%
       String log=session.getAttribute("log").toString();
        if(log.equals("1")){ %>
        <div class="form-container sign-in-container">
            <form action="emailotp.jsp" method="post">
                <h1>Sign in</h1>
                
                <span> Or sign in using E-Mail Address</span>
                <label>
                    <input type="email" name="useremail" placeholder="Mail-Id" required maxlength="30">
                </label>
                <label>
                    <input type="password" name="userpass" placeholder="Password"	required maxlength="15">
                </label>
                <a href="#">Forgot your password?</a>
                <button>Sign In</button>
            </form>
        </div><%}else{ %>
        <div class="form-container sign-in-container">
            <form action="userlogin" method="post">
            <p>Sorry, Verify your Mail-ID and Password</p>
                <h1>Sign in</h1>
               
                <span> Or sign in using E-Mail Address</span>
                <label>
                    <input type="email" name="useremail" placeholder="Mail-Id" required maxlength="30">
                </label>
                <label>
                    <input type="password" name="userpass" placeholder="Password"	required maxlength="15">
                </label>
                <a href="#">Forgot your password?</a>
                <button>Sign In</button>
            </form>
        </div>
        <%} %>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Log in</h1>
                    <p>Sign in here if you already have an account </p>
                    <button class="ghost mt-5" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Create, Account!</h1>
                    <p>Sign up if you still don't have an account ... </p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>

<script>const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () =>
    container.classList.add('right-panel-active'));

signInButton.addEventListener('click', () =>
    container.classList.remove('right-panel-active'));

// https://Github.com/YasinDehfuli
// 	 https://Codepen.io/YasinDehfuli
// Disigned By Nisay</script>

<!-- https://Github.com/YasinDehfuli
	 https://Codepen.io/YasinDehfuli
	 -->