<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="styles.css">
 
 <style type="text/css">
 
 
 body {
  width: 100%;
  margin: 0;
  font-family: Tahoma, sans-serif;
  background-color: rgb(40,40,75);
  color: rgb(240, 240, 240);
}

#title, #description {
  margin: 1.5rem auto;
  text-align: center;
}

form {
  margin: 1rem auto;
  width: 70%;
  min-width: 400px;
  max-width: 700px;
  background-color: rgba(0,0,0,0.3);
  border-radius: 0.5rem;
  padding: 0.5rem
}

.form-group{
  margin: 1rem;
}

label{
  display: block;
}

input {
  background-color: rgb(50,50,75);
  border: 2px solid rgb(50,50,90);
  border-radius: 0.5rem;
  padding-left: 4px;
  color: rgb(240, 240, 240)
}

input[id="name"], input[id="email"], input[id="number"], select{
  display: block;
  width:100%
}

textarea {
  width: 100%;
  height: 5rem;
  background-color: rgb(50,50,75);
  border: 2px solid rgb(50,50,90);
}

input[type=submit] {
  display: block;
  margin: 0 auto;
  width: 100%
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 </style>
 
 
 
 
 
 
 
 
 
 
 
 
  </head>
  <body>
    <h1 id="title">Create Account</h1>
   
    <form id="survey-form">
      <div class="form-group">
        <label id="name-label" for="name">Name
          <input type="text" name="name" placeholder="Enter your name" required>
        </label>
      </div>
      <div class="form-group">
        <label id="email-label" for="email">Email
          <input type="email" name="email" placeholder="Enter your Email" required>
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Mobile 
          <input type="text" name="number" >
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Bank name 
          <input type="text" name="bankname"  >
        </label>
      </div>
     
      <div class="form-group">
        <label id="number-label" for="number">Account number 
          <input type="text" name="account" >
        </label>
      </div>
     
        
      <div class="form-group">
        <label id="number-label" for="number">IFSC Code 
          <input type="text" name="ifsc" >
        </label>
      </div>
     
      <div class="form-group">
        <label id="number-label" for="number">Branch
          <input type="text" name="branch" >
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Upi id 
          <input type="text" name="upi" >
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Upi pin 
          <input type="text" name="pin" >
        </label>
      </div>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
    
    
      <div class="form-group">
        <input id="submit" type="submit" value="Create Account">
      </div>
    </form>
  </body> --%>

<!DOCTYPE html>
<title>Finity Banking</title>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="styles.css">
  <style type="text/css">
  
  body {
  width: 100%;
  margin: 0;
  font-family: Tahoma, sans-serif;
  background-color: rgb(40,40,75);
  color: rgb(240, 240, 240);
}

#title, #description {
  margin: 1.5rem auto;
  text-align: center;
}

form {
  margin: 1rem auto;
  width: 20%;
  min-width: 400px;
  max-width: 700px;
  background-color: rgba(0,0,0,0.3);
  border-radius: 0.5rem;
  padding: 0.5rem
}

.form-group{
  margin: 1rem;
}

label{
  display: block;
}

input {
  background-color: rgb(50,50,75);
  border: 2px solid rgb(50,50,90);
  border-radius: 0.5rem;
  padding: 14px;
  color: rgb(240, 240, 240)
}

input[id="name"], input[id="email"], input[id="number"], select{
  display: block;
  width:80%
}

textarea {
  width: 100%;
  height: 5rem;
  background-color: rgb(50,50,75);
  border: 2px solid rgb(50,50,90);
}

input[type=submit] {
  display: block;
  margin: 0 auto;
  width: 40%
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </style>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </head>
  <body>
  <%String mail=session.getAttribute("useremail").toString(); %>
    <h1 id="title">Activate Account</h1>
    
    <form id="survey-form" action="Apply" method="post">
       <div class="form-group">
        <label id="name-label" for="name">Name
          <input type="text" name="name" id="name" placeholder="Enter your name" required>
        </label>
      </div>
      <div class="form-group">
        <label id="email-label" for="email">Email
          <input type="email" name="email" value="<%=mail %>" id="name" placeholder="Enter your Email" required>
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Mobile number 
          <input type="text" name="number" id="name" >
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Bank name 
          <input type="text" name="bankname" id="name"  >
        </label>
      </div>
     
      <div class="form-group">
        <label id="number-label" for="number">Account number 
          <input type="text" name="account" id="name" >
        </label>
      </div>
     
        
      <div class="form-group">
        <label id="number-label" for="number">IFSC Code 
          <input type="text" name="ifsc" id="name">
        </label>
      </div>
     
      <div class="form-group">
        <label id="number-label" for="number">Branch
          <input type="text" name="branch" id="name" >
        </label>
      </div>
     <!--  <div class="form-group">
        <label id="number-label" for="number">Upi id  -->
          <input type="hidden" name="upi" id="name" >
        </label>
      </div>
     <!--  <div class="form-group">
        <label id="number-label" for="number">Upi pin  -->
          <input type="hidden" name="pin" id="name" >
        </label>
      </div>
      
       <div class="form-group">
        <label id="number-label" for="number">Location
          <input type="text" name="location" id="name" >
        </label>
        </div>
      
      <div class="form-group">
        <label id="number-label" for="number">Address
          <input type="text" name="address" id="name" >
        </label>
        </div>
        
          <div class="form-group">
       <!--  <label id="number-label" for="number">Location -->
          <input type="hidden" value="old" name="type" id="name" >
        </label>
        </div>
     
     
      <div class="form-group">
        <input id="submit" type="submit" value="Create">
      </div>
    </form>
  </body>
</html>

