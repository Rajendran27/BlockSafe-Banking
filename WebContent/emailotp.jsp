<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="mail.mail1" %>
  <%@page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico" type="image/x-icon" />
    <link rel="stylesheet" href="input.css" />
    <title>Creating a Beautiful and Responsive Input Field: An HTML and CSS Guide without Javascript</title>
  
  
  
  <style type="text/css">
  /* Box Sizing -------------------------------------- */

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

/* Color ---------------------------------------------- */

:root {
  --color-invalid: #e50914;
  --color-invalid-hover: #f11722;
  --color-valid: rgb(13, 150, 65);
  --color-forgot: #0071eb;
  --color-flag: rgb(232, 225, 225);
  --color-input: #333333;
}

/* Text, Tag Style ------------------------------------ */

h1 {
  font-size: 2rem;
  font-weight: 500;
  line-height: 1.3;
}
a,
li {
  text-decoration: none;
  list-style: none;
}
p,
span {
  font-weight: 300;
  line-height: 1.5;
}
img {
  width: 2rem;
}
body {
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
  color: black;
  background-color:#fefae0;
  padding: 2%;
}

/* Text Styling --------------------------------------- */

.text-phone {
  font-size: 0.8rem;
  font-weight: 600;
  color: black;
}
.text-error {
  left: 0.1rem;
  font-size: 0.8rem;
  font-weight: 500;
  color: orange;
  display: none;
}

/* Button --------------------------------------------- */

button,
.btn {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  cursor: pointer;
  font-size: 1.1em;
  font-family: inherit;
  font-weight: inherit;
  padding: 1.1em;
  border: none;
  border-radius: 4px;
  color: white;
  height: 3.2rem;
  max-width: 100%;
}
.btn-primary {
  font-size: 1.2em;
  background: var(--color-invalid);
  margin-inline: auto;
}
.btn-wide {
  font-size: 1.5em;
  height: 4rem;
  background: var(--color-invalid);
  width: 100%;
}
.btn-login {
  background: var(--color-invalid);
  margin-top: 3rem;
  width: 100%;
}
.btn-primary:hover,
.btn-login:hover,
.btn-wide:hover {
  background-color: var(--color-invalid-hover);
}

/* Margin Spacing ------------------------------------ */

.margin-top {
  margin-top: 1rem;
}
.margin-top-1 {
  margin-top: 1.4rem;
}
.margin-inline {
  margin-inline: auto;
}
.margin-left {
  margin-left: 0.6rem;
}

/* Support HTML CSS ----------------------------------- */

.title {
  font-size: 1.6rem;
  color: gray;
  margin-top: 1rem;
  padding-bottom: 0.6rem;
  border-bottom: 1px solid gray;
}
.container {
  display: grid;
  max-width: 42rem;
  padding: 1rem;
  gap: 1rem;
  border-radius: 6px;
  border: 1px dashed gray;
}

/* Input Field & State-------------------------------- */

::placeholder {
  color: transparent;
}
::-ms-input-placeholder {
  color: transparent;
}
label {
  color: white;
  transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms ease-in;
}
.input {
  position: relative;
}
.input-field {
  border: 1px solid gray;
  outline: none;
  font-size: 1em;
  border-radius: 4px;
  padding-inline: 1.36em;
  padding-block: 1.8em 1em;
  height: 4rem;
  width: 100%;
}
.input-field:focus {
  border: 2px solid var(--color-forgot);
}
.input-label {
  display: grid;
  position: absolute;
  top: 1.36rem;
  left: 1.36rem;
  color: gray;
  transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms ease-in;
}
.input-field:focus ~ .label-size,
.input-field:not(:placeholder-shown) ~ .label-size {
  top: 0.6rem;
  left: 1.36rem;
  font-size: 0.9em;
}
.input-field:valid {
  border: 2px solid var(--color-valid);
}
.input-field:not(:placeholder-shown):invalid {
  border-bottom: 3px solid orange;
}
.input-field:not(:placeholder-shown):invalid ~ .text-error {
  display: block;
}

/* Input Sign Up Container */

.giftcode-container,
.credit-container,
.wallet-container {
  max-width: 26rem;
  position: relative;
  left: 50%;
  transform: translateX(-50%);
}

/* Input Sign Up State */

.landing:focus {
  border: 1px solid gray;
}
.credit:not(:placeholder-shown):invalid,
.giftcode:not(:placeholder-shown):invalid,
.wallet:not(:placeholder-shown):invalid {
  border: 2px solid var(--color-invalid);
}
.credit:not(:placeholder-shown):invalid ~ .text-error,
.giftcode:not(:placeholder-shown):invalid ~ .text-error,
.wallet:not(:placeholder-shown):invalid ~ .text-error {
  display: block;
  color: var(--color-invalid);
}

/* Input Sign Up Login */

.login {
  background-color: var(--color-input);
  color: white;
}
.login-container {
  max-width: 22rem;
  position: relative;
  left: 50%;
  transform: translateX(-50%);
}

/* Input Sign Up Credit */

.question {
  cursor: pointer;
  position: absolute;
  right: 1rem;
  top: 0.86rem;
  color: gray;
}

/* Input Sign Up Wallet */

.input-field-phone {
  padding-inline-start: 7rem;
}
.input-label-phone {
  left: 7rem;
}
.phone {
  position: absolute;
  top: 1.3rem;
  left: 1rem;
  display: flex;
  align-items: center;
  gap: 0.6rem;
}
.flag {
  border: 1px solid var(--color-flag);
  border-radius: 0.2rem;
}
.input-field-phone:focus ~ .label-size,
.input-field-phone:not(:placeholder-shown) ~ .label-size {
  top: 0.6rem;
  left: 7rem;
  font-size: 0.8em;
}

/* Checkbox Input --------------------------------- */

/* Agreement */

.agreement {
  max-width: 28rem;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 0.6rem;
  font-size: 1rem;
  font-weight: 300;
}
.agree-label {
  color: black;
}
.agree-input {
  cursor: pointer;
  appearance: none;
  height: 1.6rem;
  width: 1.6rem;
  border-radius: 0.2rem;
  display: flex;
  align-items: center;
  justify-content: center;
}
.agree-input::after {
  content: "\f00c";
  font-family: "Font Awesome 6 Free";
  font-weight: 600;
  font-size: 1.2rem;
  color: var(--color-forgot);
  display: none;
}
.agree-input:checked {
  border: 1px solid var(--color-forgot);
}
.agree-input:checked::after {
  display: block;
}
.alert {
  display: block;
}
.agree-alert {
  max-width: 23rem;
  display: none;
  font-size: 0.8rem;
  line-height: 1.3;
  color: var(--color-invalid);
}
.agree-input:invalid {
  border: 1px solid var(--color-invalid);
}
.agree-input:valid ~ .agree-alert {
  display: none;
}
.agree-input:invalid ~ .agree-alert {
  display: block;
}

/* Remember */

.remember-me {
  display: flex;
  align-items: center;
  gap: 0.4rem;
}
.remember-input {
  appearance: none;
  cursor: pointer;
  height: 1rem;
  width: 1rem;
  border-radius: 0.1rem;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 1px solid gray;
}
.remember-input::after {
  content: "\f00c";
  font-family: "Font Awesome 6 Free";
  font-weight: 600;
  color: black;
  display: none;
}
.remember-input:checked {
  background-color: white;
  border: 1px solid gray;
}
.remember-input:checked::after {
  display: block;
}
  
  
  
  
  
  
  
  
  
  
  
  
  </style>
  
  
  
  
  
  
  
  
  
  
  </head>
  <body>
    <% 
   
    String name=request.getParameter("useremail");
	String pass=request.getParameter("userpass");  
	
    
    
    
    
    
    
    
    
    
    
    
    Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
    
		 mail1.mail(name,"Hello "+name+", your Verification code is "+t6+" ");
		 
		 
		 
		 
		 %>
    
    
    
    
    
    
    
    
    
    <section class="container margin-inline">
      <h1 class="">Email Verfication</h1>

      <!-- Landing Page ------------------------------->

     

      <form action="userlogin" class="input margin-top-1" method="post">
        <input class="input-field landing" type="text" id="email" placeholder="Verfication code" name="code" autocomplete="off" required />

        <label for="email" class="input-label label-size">Enter Verfication code</label>

      <!--   <p class="text-error">Please enter a valid email address</p> -->

          <input class="input-field landing" type="hidden" value="<%=pass%>"  placeholder="email" name="useremail"/>
        
          <input class="input-field landing" type="hidden" id="useremail"  value="<%=name%>" placeholder="email" name="useremail" autocomplete="off" required />
          <input class="input-field landing" type="hidden" id="useremail"  value="<%=t6%>" placeholder="email" name="codeo" autocomplete="off" required />
        
          
          
        
        
        <button type="submit" class="btn-primary margin-top-1">
          Submit
          <i class="fas fa-chevron-right margin-left"></i>
        </button>
      </form>

      <!-- Sign In Page -------------------------------->

     
    </section>
  












<%-- <%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>










 --%>










</body>
</html>