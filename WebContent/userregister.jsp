<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script>
const [form] = document.forms;
const [
  nameFeedback,
  emailFeedback,
  passwordFeedback,
  confirmPasswordFeedback
] = document.querySelectorAll('.feedback');

const isNameValid = name => {
  return name.length > 3 && name.length <= 20 && /^[A-Za-z0-9_ ]*$/g.test(name);
}

const isEmailValid = email => {
  return /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/g.test(email);
}

const isPasswordValid = password => {
  return /^((?=.*[\d])(?=.*[a-z])(?=.*[A-Z])|(?=.*[a-z])(?=.*[A-Z])(?=.*[^\w\d\s])|(?=.*[\d])(?=.*[A-Z])(?=.*[^\w\d\s])|(?=.*[\d])(?=.*[a-z])(?=.*[^\w\d\s])).{7,30}$/gm.test(password);
}

const isPasswordMatch = (password, confirmPassword) => {
  return !!confirmPassword && password === confirmPassword;
}

const validation = (name, email, password, confirmPassword) => {
  return (
    isNameValid(name) &&
    isEmailValid(email) &&
    isPasswordValid(password) &&
    isPasswordMatch(password, confirmPassword)
  );
}

const toggleShowPassword = (toggler, elements) => {
  toggler.addEventListener('change', e => {
    elements.forEach(element => {
      element.setAttribute('type', e.target.checked ? 'text' : 'password');
    });
  });
};

const getElement = (name, e) => {
  return {
    name(e) {
      e.target.classList.toggle('border-danger', !isNameValid(e.target.value));
      nameFeedback.textContent = isNameValid(e.target.value) ? null : 'Name must be at least 3 to 20 characters long and contain only alphabet, number, underscore and white space';
    },
    email(e) {
      e.target.classList.toggle('border-danger', !isEmailValid(e.target.value));
      emailFeedback.textContent = isEmailValid(e.target.value) ? null : 'Provide a valid email address';
    },
    password(e) {
      e.target.classList.toggle('border-danger', !isPasswordValid(e.target.value));
      passwordFeedback.textContent = isPasswordValid(e.target.value) ? null : 'Password must be at least 7 characters long and contain 1 capital letter and 1 symbol or number';

      form.confirmPassword.classList.toggle('border-danger', !isPasswordMatch(e.target.value, form.confirmPassword.value));
      confirmPasswordFeedback.textContent = isPasswordMatch(e.target.value, form.confirmPassword.value) ? null : 'Password do not match';
    },
    confirmPassword(e) {
      e.target.classList.toggle('border-danger', !isPasswordMatch(form.password.value, e.target.value));
      confirmPasswordFeedback.textContent = isPasswordMatch(form.password.value, e.target.value) ? null : 'Password do not match';
    }
  }[name](e);
}

const handleInput = e => {
  const { name: formName, email, password, confirmPassword, btn } = form;
  const { name } = e.target;
  
  getElement(name, e);
  
  btn.disabled = !validation(formName.value, email.value, password.value, confirmPassword.value);
}

document.addEventListener('DOMContentLoaded', () => {
  toggleShowPassword(form.showPassword, [form.password, form.confirmPassword]);
  
  form.name.addEventListener('input', handleInput);

  form.email.addEventListener('input', handleInput);

  form.password.addEventListener('input', handleInput);

  form.confirmPassword.addEventListener('input', handleInput);
  
  form.addEventListener('submit', e => {
    e.preventDefault();
    const { name, email, password, confirmPassword } = e.target;
    const submittedValue = {
      name: name.value,
      email: email.value,
      password: password.value,
      confirmPassword: confirmPassword.value
    };
    
    // Check console to see the result
    console.log(submittedValue);
  });
});

</script>

<style>
@import 'https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/yeti/bootstrap.min.css';

form label {
  cursor: pointer;
}

</style>


<body>


<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card shadow my-5">
        <h4 class="card-header">Register</h4>
        <div class="card-body">
        
          <form action="userregister" method="post" enctype="multipart/form-data">
          
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" id="name" name="username" class="form-control border">
              <small class="form-text text-danger feedback"></small>
            </div>
            <div class="form-group">
              <label for="email">Email address</label>
              <input type="email" id="email" name="useremail" class="form-control border">
              <small class="form-text text-danger feedback"></small>
            </div>
            <div class="form-group">
              <label for="email">Mobile No</label>
              <input type="text" id="email" name="usermobileno" class="form-control border">
              <small class="form-text text-danger feedback"></small>
            </div>
            
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" id="password" name="userpass" class="form-control border" autocomplete="off">
              <small class="form-text text-danger feedback"></small>
            </div>
            
           
           
           
          
          
            <div class="form-group">
          <label for="confirmPassword">Upload Image</label>
         <input type="file" name="filename" accept="image/*" onchange="loadFile(event)">
      <p><img id="output" width="200"/></p>
            <small class="form-text text-danger feedback"></small>
            </div>
         
           
            <button type="submit" class="btn btn-outline-dark" name="btn" >Register</button>
            
          </form>
          
          
        </div>
        <div class="card-footer"></div>
      </div>
    </div>
  </div>
</div>
 <script>
          var loadFile = function(event) {
              var image = document.getElementById('output');
              image.src=URL.createObjectURL(event.target.files[0]);
          };
      </script>

</body>
</html>