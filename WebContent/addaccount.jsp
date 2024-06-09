<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.contact-form {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #fff;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
  width: 80%;
  max-width: 500px;
  margin: 0 auto;
}

.form-group {
  width: 100%;
  margin-bottom: 20px;
}

label {
  font-size: 1.2rem;
  font-weight: bold;
  margin-bottom: 10px;
  display: block;
}

input[type="text"],
input[type="email"],
textarea {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease-in-out;
  font-size: 1.1rem;
}

input[type="text"]:focus,
input[type="email"]:focus,
textarea:focus {
  outline: none;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
}

.btn-submit {
  background-color: #ff6f61;
  color: #fff;
  border: none;
  border-radius: 20px;
  padding: 10px 20px;
  font-size: 1.1rem;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.btn-submit:hover {
  background-color: #ff524f;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
}

</style>
</head>
<body>
<form action="newuserupdate.jsp" method="post" class="contact-form">
<%String mail=session.getAttribute("setmail").toString(); %>
  <div class="form-group">
    <label for="name">Email:</label>
    <input type="email" value="<%=mail %>" id="name" name="name" readonly required>
  </div>
  
  <div class="form-group">
    <label for="email">Bank Name:</label>
    <input type="email" value="Finity Bank" id="email" name="email" readonly required>
  </div>
  
  <div class="form-group">
    <label for="message">Account Number:</label>
    <input type="text" id="email" name="acc" required>
  </div>
  
   <div class="form-group">
    <label for="email">IFSC Code:</label>
    <input type="text" id="email" name="ifsc" required>
  </div>
  
  <div class="form-group">
    <label for="message">Branch Name:</label>
   <input type="text" id="email" name="branch" required>
  </div>
  <div class="form-group">
    <label for="message">UPI Pin:</label>
    <input type="text" id="email" name="upi" required>
  </div>
  <div class="form-group">
    <label for="message">Account Balance:</label>
    <input type="text" id="email" name="bal" value="0" required>
  </div>
  
  
  <div class="form-group">
   <center> <button type="submit" class="btn-submit">Submit</button></center>
  </div>
</form>
<center>
<!-- <h1>By steven2023<h1>
  <h2><a href="https://www.apphub.rocks/">www.apphub.rocks</a><h2> -->
    </center>

</body>
</html>