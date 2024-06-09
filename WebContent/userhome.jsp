<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finity Banking</title>
</head>
<style>@keyframes fade-in {
  from {
    visibility: hidden;
    opacity: 0;
  }
  to {
    visibility: visible;
    opacity: 1;
  }
}

@keyframes fade-out {
  from {
    visibility: visible;
    opacity: 1;
  }
  99% {
    visibility: visible;
    opacity: 0;
  }
  to {
    visibility: hidden;
  }
}

html {
  font-size: 100%;
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: inherit;
}

body {
  margin: 0;
  padding: 0;
  font-family: "Public Sans", sans-serif;
  font-size: 0.875rem;
  font-weight: 300;
  line-height: 1.3;
  color: #9698a6;
  overflow-x: hidden;
}

@media (min-width: 64em) {
  body {
    font-size: 1.125rem;
  }
}

h1, h2, h3 {
  font-weight: 300;
  line-height: 1.15;
  color: #2d314d;
  margin-top: 0;
}

h1 {
  font-size: 2.31rem;
  margin-bottom: 1.125rem;
}

@media (min-width: 64em) {
  h1 {
    font-size: 3.25rem;
  }
}

h2 {
  font-size: 1.875rem;
  margin-bottom: 1.5625rem;
}

@media (min-width: 64em) {
  h2 {
    font-size: 2.25rem;
    margin-bottom: 2.25rem;
  }
}

h3 {
  font-size: 1rem;
  margin-bottom: 1.125rem;
}

@media (min-width: 64em) {
  h3 {
    font-size: 1.25rem;
    margin-bottom: 2rem;
  }
}

p {
  margin-top: 0;
  line-height: 1.5;
  margin-bottom: 1.875rem;
}

a,
a:visited,
a:hover {
  text-decoration: none;
}

.container {
  max-width: 69.375rem;
  margin: 0 auto;
}

.container--pall {
  padding: 2.5rem 1.375rem;
}

.container--px {
  padding-left: 1.375rem;
  padding-right: 1.375rem;
}

.container--py {
  padding-top: 2.5rem;
  padding-bottom: 2.5rem;
}

.container--pt {
  padding-top: 2.5rem;
}

.container--pr {
  padding-right: 1.375rem;
}

.container--pb {
  padding-bottom: 2.5rem;
}

.container--pl {
  padding-left: 1.375rem;
}

.flex {
  display: flex;
}

.flex-jc-sb {
  justify-content: space-between;
}

.flex-jc-c {
  justify-content: center;
}

.flex-ai-c {
  align-items: center;
}

button,
.button {
  display: inline-block;
  padding: 0.8125rem 2.1522rem;
  border-radius: 1.5rem;
  border: none;
  background: linear-gradient(to right, #31d35c, #2bb7da);
  color: white;
  font-size: 0.875rem;
  font-weight: 700;
  cursor: pointer;
}

@media (max-width: 64em) {
  .hide-for-mobile {
    display: none;
  }
}

@media (min-width: 64em) {
  .hide-for-desktop {
    display: none;
  }
}

.fade-in {
  animation: fade-in 300ms ease-in-out forwards;
}

.fade-out {
  animation: fade-out 300ms ease-in-out forwards;
}

.header {
  position: fixed;
  top:0;
  left:0;
  right:0;
  min-height: 64px;
  z-index:99999;
  background: white;
}

.header.menu-clicked .burger-menu {
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: absolute;
  top: 88px;
  left: 0;
  right: 0;
  z-index: 9999;
  margin: 0 auto;
  width: 326px;
  padding: 35px 0;
  background-color: white;
  border-radius: 4px;
}

.header.menu-clicked .burger-menu > a {
  text-align: center;
  font-size: 0.875rem;
  color: #9698a6;
  transition: color 300ms ease-in-out;
}

.header.menu-clicked .burger-menu > a:not(:last-child) {
  margin-bottom: 30px;
}

.header.menu-clicked .burger-menu > a:hover {
  color: #2d314d;
}

.header.menu-clicked .burger-menu > a:hover::before {
  opacity: 1;
}

.header.menu-clicked .header__burger > span:first-child {
  transform: rotate(45deg);
}

.header.menu-clicked .header__burger > span:nth-child(2) {
  transform: translateX(-1px);
  width: 2px;
  opacity: 0;
}

.header.menu-clicked .header__burger > span:last-child {
  transform: rotate(-45deg);
}

.header nav {
  height: 4rem;
  padding-top: 0;
  padding-bottom: 0;
}

.header__logo img {
  height:80px ;
  width:80px ;
}

.header__burger > span {
  display: block;
  width: 24px;
  height: 2px;
  background-color: #2d314d;
  transition: all 400ms ease-in-out;
  transform-origin: 5px 1px;
}

.header__burger > span:not(:last-child) {
  margin-bottom: 3px;
}

.header__cta {
  transition: opacity 300ms ease-in-out;
}

.header__cta:hover {
  opacity: 0.7;
}

.overlay {
  visibility: hidden;
  position: fixed;
  z-index: 9998;
  top: 4rem;
  right: 0;
  bottom: 0;
  left: 0;
  background: #2d314d;
  background: linear-gradient(#2d314d, transparent);
}

@media (min-width: 64em) {
  .header > nav {
    height: 5rem;
  }
  .header .burger-menu {
    animation: none !important;
  }
  .header .burger-menu > a {
    display: inline-block !important;
    font-size: 0.775rem;
    color: #9698a6;
    line-height: 5rem;
    position: relative;
  }
  .header .burger-menu > a:not(:last-child) {
    margin-right: 30px;
  }
  .header .burger-menu > a::before {
    content: "";
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    bottom: -1px;
    height: 5px;
    background: linear-gradient(to right, #31d35c, #2bb7da);
    opacity: 0;
    transition: opacity 300ms ease-in-out;
  }
  .header .burger-menu > a:hover {
    color: #2d314d;
  }
  .header .burger-menu > a:hover::before {
    opacity: 1;
  }
}

.hero {
  background-color: #fafafa;
}

@media (min-width: 64em) {
  .hero .container {
    display: flex;
    flex-direction: row-reverse;
    align-items: center;
  }
}

.hero__image {
  position: relative;
  background: url("https://res.cloudinary.com/db8ufjm93/image/upload/v1611002756/easybank/bg-intro-mobile_wmdsb7.svg");
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  min-height: 16.25rem;
}

@media (min-width: 40em) {
  .hero__image {
    min-height: 25rem;
    background-position: center 80%;
  }
}

@media (min-width: 64em) {
  .hero__image {
    background-image: none;
    min-height: 41rem;
    flex: 3;
  }
}

.hero__image::before {
  content: "";
  position: absolute;
  background: url("https://res.cloudinary.com/db8ufjm93/image/upload/v1611002756/easybank/bg-intro-desktop_ko3ci3.svg");
  background-repeat: no-repeat;
  background-position: 10% 88%;
  background-size: 90%;
  width: 200%;
  height: 105%;
  display: none;
}

@media (min-width: 64em) {
  .hero__image::before {
    display: block;
  }
}

.hero__image::after {
  content: "";
  position: absolute;
  background: url("https://res.cloudinary.com/db8ufjm93/image/upload/v1611002762/easybank/image-mockups_frvsgr.png");
  background-position: center bottom;
  background-repeat: no-repeat;
  background-size: 88%;
  width: 100%;
  height: 105%;
}

@media (min-width: 40em) {
  .hero__image::after {
    background-size: 65%;
  }
}

@media (min-width: 64em) {
  .hero__image::after {
    background-position: 70% 100%;
    background-size: 75%;
    width: 150%;
    height: 120%;
  }
}

.hero__text {
  text-align: center;
}

@media (min-width: 64em) {
  .hero__text {
    flex: 2;
    text-align: left;
    padding-right: 0;
  }
}

.hero__form {
  flex-direction:column;
}

@media (min-width: 64em) {
  .hero__form {
  align-items: flex-start;
}
}

.hero__form #email {
  width: 70%;
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #31d35c;
  border-radius: 5px;
}

@media (min-width: 40em) {
  .hero__form #email {
    width: 50%
  }
}

@media (min-width: 64em) {
  .hero__form #email {
    width: 85%
  }
}

.hero__cta {
  width:fit-content;
  transition: opacity 300ms ease-in-out;
  color: white;
  margin-bottom: 2.5rem;
}

.hero__cta:hover {
  opacity: 0.7;
}

.feature {
  background-color: #f3f4f6;
  text-align: center;
}

@media (min-width: 64em) {
  .feature {
    text-align: left;
  }
}

.feature .container {
  padding-top: 3.635rem;
  padding-bottom: 3.635rem;
}

@media (min-width: 64em) {
  .feature .container {
    padding-top: 6.25rem;
    padding-bottom: 6rem;
  }
}

.feature p {
  margin-bottom: 2rem;
}

@media (min-width: 64em) {
  .feature p {
    width: 60%;
  }
}

@media (min-width: 40em) {
  .feature__grid {
    display: flex;
    flex-wrap: wrap;
  }
}

.feature__item {
  padding: 1rem;
}

@media (min-width: 40em) {
  .feature__item {
    flex: 0 0 50%;
  }
}

@media (min-width: 64em) {
  .feature__item {
    padding: 1rem 1rem 1rem 0;
    flex: 1;
  }
}

.feature__icon {
  margin-bottom: 1.5625rem;
}

@media (min-width: 64em) {
  .feature__icon {
    margin-bottom: 2.625rem;
  }
}

.feature__description {
  font-size: 0.75rem;
}

@media (min-width: 40em) {
  .feature__description {
    font-size: 0.8125rem;
  }
}

.articles {
  background-color: #fafafa;
  padding-top: 5.125rem;
  padding-bottom: 5.125rem;
}

.article__content h2 {
  text-align: center;
}

@media (min-width: 64em) {
  .article__content h2 {
    text-align: left;
  }
}

.article__grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 1.25rem;
}

@media (min-width: 40em) {
  .article__grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (min-width: 64em) {
  .article__grid {
    grid-template-columns: repeat(4, 1fr);
  }
}

.article__item {
  border-radius: 0.3125rem;
  overflow: hidden;
}

.article__image {
  height: 12.5rem;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
}

.article__text {
  background-color: white;
  padding: 1.75rem;
}

@media (min-width: 64em) {
  .article__text {
    padding: 1.75rem 1.5rem 1.625rem 1.5rem;
  }
}

.article__author {
  font-size: 0.625rem;
  color: #9698a6;
  margin-bottom: 0.75rem;
}

.article__title {
  color: #2d314d;
  font-size: 1rem;
  margin-bottom: 0.875rem;
}

.article__title:hover {
  color: #31d35c;
}

.article__description {
  color: #9698a6;
  font-size: 0.8135rem;
}

.video {
  padding-bottom: 40px;
  background-color: #f3f4f6;
}

.video #video {
  width: 100%;
  height: 315px;
  border-radius:10px;
}

@media (min-width: 40em) {
  .video #video {
    width: 70%;
    height: 400px;
  }
}

@media (min-width: 64em) {
  .video #video {
    width: 60%;
  }
}

.footer {
  background-color: #2d314d;
  color: white;
  padding-top: 2.1875rem;
  padding-bottom: 2.1875rem;
  text-align: center;
  position: relative;
}

@media (min-width: 64em) {
  .footer .container {
    display: grid;
    grid-template-columns: 1.44fr 1fr 1fr 2.27fr;
    grid-template-rows: 1fr auto;
    grid-template-areas: "logo links1 links2 cta" "social links1 links2 copyright";
    justify-items: start;
    align-items: stretch;
  }
}

.footer a {
  color: white;
  display: inline-block;
}

.footer a:hover {
  color: #31d35c;
}

@media (max-width: 64em) {
  .footer__logo {
    margin-bottom: 1.625rem;
  }
}

@media (min-width: 64em) {
  .footer__logo {
    grid-area: logo;
  }
}

@media (max-width: 64em) {
  .footer__social {
    margin-bottom: 2.0625rem;
  }
}

@media (min-width: 64em) {
  .footer__social {
    grid-area: social;
    align-self: end;
  }
}

.footer__social a svg path {
  transition: fill 150ms ease-in-out;
}

.footer__social a:hover svg path {
  fill: #31d35c;
}

.footer__social a:not(:last-child) {
  margin-right: 0.8125rem;
}

.footer__links {
  display: flex;
  flex-direction: column;
  font-size: 0.9875rem;
}

@media (min-width: 64em) {
  .footer__links {
    align-items: flex-start;
  }
}

@media (max-width: 64em) {
  .footer__links.col1 {
    margin-bottom: 1.25rem;
  }
}

@media (min-width: 64em) {
  .footer__links.col1 {
    grid-area: links1;
  }
}

.footer__links.col1 > a {
  transition: color 150ms ease-in-out;
}

.footer__links.col1 > a:not(:last-child) {
  margin-bottom: 1rem;
}

@media (max-width: 64em) {
  .footer__links.col2 {
    margin-bottom: 2rem;
  }
}

@media (min-width: 64em) {
  .footer__links.col2 {
    grid-area: links2;
  }
}

.footer__links.col2 > a:not(:last-child) {
  margin-bottom: 1rem;
}

@media (min-width: 64em) {
  .footer__cta {
    grid-area: cta;
    justify-self: end;
    text-align: right;
  }
}

@media (max-width: 64em) {
  .footer__cta .button {
    margin-bottom: 1.625rem;
  }
}

.footer__cta .button:hover {
  color: white;
  opacity: 0.7;
}

.footer__copyright {
  color: #9698a6;
  font-size: 0.9875rem;
}

@media (min-width: 64em) {
  .footer__copyright {
    grid-area: copyright;
    justify-self: end;
    align-self: end;
  }
}

.footer .attribution {
  position: absolute;
  bottom: 5px;
  left: 0;
  right: 0;
  margin: 0 auto;
}</style>
<!-- <style>
body{

  background-image:url("image/istockpho.jpg");
background-repeat: no-repeat;
background-size:100%;

}
* {
  box-sizing: border-box;
}

html {
  margin: 0;
  padding: 0;
}
.banner-area{
    
  /*   background-position: center ;
  
    /* -webkit-background-size:cover ; */
    height: 100vh;
    width: 218vh;
    margin: auto;
    background-repeat: no-repeat;
 background-size: 120%; */
}

/* ------------------------ NAVBAR ----------------*/


header{
  display:flex;
  justify-content: space-between;
  color: white;
  background: rgba(0,0,0,0.4)
}

header div{
  display:flex;
  justify-content: space-between;
  align-items: center;
  font-family: Pacifico;
  margin: 0 2rem;
}

header div i{
  font-size: 2rem;
  margin: 1rem;
}

header nav{
  padding: 1rem 2rem;
}

nav ul li{
  list-style: none;
  display: inline;
  text-transform: uppercase;
  font-weight: bold;
  letter-spacing: 5px;
}

nav li a{
  padding: 1rem;
  margin: 1rem;
  text-decoration: none;
  color: white;
  transition: all 250ms ease-in;
}

nav li a:hover{
  background: rgba(255,255,255,.3);
  color: black;
}



/* ------------------------ TOP SECTION ----------------*/



/* ------------------------ BOT SECTION ----------------*/



.container-boxes{
  margin: 0 auto;
  padding: 0;
  display:flex;
  justify-content: space-around;
  align-items: flex-end;
  max-width: 80vw;
}

.box{
  background: rgba(255,255,255,.5);
  margin: 1rem;
  padding: .5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 350px;
  max-height: 180px;
  min-height: 180px;
  transition: all 250ms ease-out;
}

.box:hover{
  background: rgba(255,255,255,.7);
  transform: translateY(-20%);
}

.box a{
  text-decoration: none;
  color: black;
}

.icon{
  font-size: 3rem;
  padding: 1rem;
}

.text h3{
  text-transform: uppercase;
  letter-spacing: 4px;
  margin-bottom: 0;
}

.text p{
  margin-top: 1rem;
  line-height: 1.5rem;
  text-align: left;
}

.text{
  padding: .5rem;
}


/* MEDIAQUERIES */


@media (max-width: 1160px){
   .icon{
    font-size: 2rem;
    padding: 0.5rem;
  }
  
  .text h3{
    text-transform: uppercase;
    letter-spacing: 4px;
    margin-bottom: 0;
    font-size: 1rem;
  }

  .text p{
    margin-top: 1rem;
    line-height: 1.5rem;
    text-align: left;
    font-size: .8rem;
  }
  nav li a:hover{
  background: none;
  color: black;
  }
}


@media (max-width: 850px){
  body{
    height: 100%;
  }
  .container-boxes{
    flex-direction: column;
  }
  .box:hover{
    background: rgba(255,255,255,.7);
    transform: none;
  }
  .titles h1{
  font-size: 3rem;
  }
}





</style>

<body>



  <header>
    <div>
    
    
      <i class="fas fa-atom"></i>
      <p></p>
      
      
    </div>
    
    
    <nav>
    
    
      <ul>
      
      
      
      
        <li><a href="totalmoneyupdate.jsp">Balance View</a></li>
          <li><a href="create.jsp">Create account</a></li>
        
        <li><a href="search.jsp">Money Transaction</a></li>
        
        
         <li><a href="newclientcreate.jsp">New Client</a></li>
        
        
        <li><a href="#">BALANCE</a></li> 
        
        
        <li><a href="approvee.jsp">Approve</a></li>
        
        
               
      </ul>
      
      
    </nav>
    
    
  </header>


    <div class="box">


    </div>
    
    
  </section> -->





<body>
    <header class="header" id="header">
      <div class="overlay"></div>
      <nav class="container container--pall flex flex-jc-sb flex-ai-c" id="nav-bar">
        <a href="/" class="header__logo">
          <img id="header-img" src="image/istockphoto-1382305677-612x612.jpg" alt="Finitybank" />
        </a><span style="margin-right:300px;">Finity Banking</span>

    
        <div class="header__links burger-menu hide-for-mobile">
          <a class="nav-link" href="newclientcreate.jsp">New Account</a>
            <a class="nav-link" href="create.jsp">Activate Account</a>
               <a class="nav-link" href="search.jsp">Send Money</a>
          <a class="nav-link" href="totalmoneyupdate.jsp">Balance</a>
        <a class="nav-link" href="approvee.jsp"> History</a>
        <a class="nav-link" href="expensehome.jsp">Logout</a>
     
        </div>

      <!--   <button class="header__cta hide-for-mobile" type="button">
          Request Invite
        </button> -->
      </nav>
    </header>

    <section class="hero" id="hero">
      <div class="container">
        <div class="hero__image"></div>
        <div class="hero__text container--pall">
          <h1>Next generation digital banking</h1>
          <p>
            Take your financial life online. Your Finity bank account will be a
            one-stop-shop for spending, saving, budgeting, investing, and much
            more.
          </p>
          <!-- <form class="hero__form flex flex-ai-c" id="form" action="https://www.freecodecamp.com/email-submit">
              <input name="email" id="email" type="email" placeholder="Enter your email address" required="">
      <input id="submit" type="submit" value="Request Invite" class="button hero__cta btn">     
      
    </form> -->
        </div>
      </div>
    </section>

    <section class="feature" id="feature">
      <div class="container container--px">
        <h2>Why choose Finitybank?</h2>
        <p>
          We leverage Open Banking to turn your bank account into your financial
          hub. Control your finances like never before.
        </p>

        <div class="feature__grid">
          <div class="feature__item">
            <div class="feature__icon">
              <img src="https://res.cloudinary.com/db8ufjm93/image/upload/v1611002758/easybank/icon-online_nez0wk.svg" alt="icon" />
            </div>
            <h3 class="feature__title">Online Banking</h3>
            <div class="feature__description">
              Our modern web and mobile applications allow you to keep track of
              your finances wherever you are in the world.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon">
              <img src="https://res.cloudinary.com/db8ufjm93/image/upload/v1611002757/easybank/icon-budgeting_zvhgyw.svg" alt="icon" />
            </div>
            <h3 class="feature__title">Simple Budgeting</h3>
            <div class="feature__description">
              See exactly where your money goes each month. Receive
              notifications when you’re close to hitting your limits.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon">
              <img src="https://res.cloudinary.com/db8ufjm93/image/upload/v1611002758/easybank/icon-onboarding_ryk8jo.svg" alt="icon" />
            </div>
            <h3 class="feature__title">Fast Onboarding</h3>
            <div class="feature__description">
              We don’t do branches. Open your account in minutes online and
              start taking control of your finances right away.
            </div>
          </div>

          <div class="feature__item">
            <div class="feature__icon">
              <img src="https://res.cloudinary.com/db8ufjm93/image/upload/v1611002756/easybank/icon-api_j8tssd.svg" alt="icon" />
            </div>
            <h3 class="feature__title">Open API</h3>
            <div class="feature__description">
              Manage your savings, investments, pension, and much more from one
              account. Tracking your money has never been easier.
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="articles" id="articles">
      <div class="article__content container container--px">
        <h2>Latest Articles</h2>

        <div class="article__grid">
          <a href="#" class="article__item">
            <div
              class="article__image"
              style="background-image: url('https://res.cloudinary.com/db8ufjm93/image/upload/v1611002762/easybank/image-currency_d9sl5f.jpg')"
            ></div>

            <div class="article__text">
              <div class="article__author">By Claire Robinson</div>
              <div class="article__title">
                Receive money in any currency with no fees
              </div>
              <div class="article__description">
                The world is getting smaller and we’re becoming more mobile. So
                why should you be forced to only receive money in a single …
              </div>
            </div>
          </a>

          <a href="#" class="article__item">
            <div
              class="article__image"
              style="background-image: url('https://res.cloudinary.com/db8ufjm93/image/upload/v1611002761/easybank/image-restaurant_fdp32f.jpg')"
            ></div>

            <div class="article__text">
              <div class="article__author">By Wilson Hutton</div>
              <div class="article__title">
                Treat yourself without worrying about money
              </div>
              <div class="article__description">
                Our simple budgeting feature allows you to separate out your
                spending and set realistic limits each month. That means you …
              </div>
            </div>
          </a>

          <a href="#" class="article__item">
            <div
              class="article__image"
              style="background-image: url('https://res.cloudinary.com/db8ufjm93/image/upload/v1611002761/easybank/image-plane_s3f1dn.jpg')"
            ></div>

            <div class="article__text">
              <div class="article__author">By Wilson Hutton</div>
              <div class="article__title">
                Take your Easybank card wherever you go
              </div>
              <div class="article__description">
                We want you to enjoy your travels. This is why we don’t charge
                any fees on purchases while you’re abroad. We’ll even show you …
              </div>
            </div>
          </a>

          <a href="#" class="article__item">
            <div
              class="article__image"
              style="background-image: url('https://res.cloudinary.com/db8ufjm93/image/upload/v1611002760/easybank/image-confetti_zhy9oe.jpg')"
            ></div>

            <div class="article__text">
              <div class="article__author">By Claire Robinson</div>
              <div class="article__title">
                Our invite-only Beta accounts are now live!
              </div>
              <div class="article__description">
                After a lot of hard work by the whole team, we’re excited to
                launch our closed beta. It’s easy to request an invite through
                the site ...
              </div>
            </div>
          </a>
        </div>
      </div>
    </section>
  
 

    
   
  
  <script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>
  </body>


</html>

<!-- <script>const burger = document.querySelector(".header__burger");
const header = document.querySelector(".header");
const overlay = document.querySelector('.overlay');
const menu = document.querySelector(".burger-menu");
const menuLink = menu.childNodes;

const burgerClick = () => {
  header.classList.toggle("menu-clicked");
    if (!overlay.classList.contains('fade-in')) {
      overlay.classList.add('fade-in')
      overlay.classList.remove('fade-out')
      menu.classList.add('fade-in')
      menu.classList.remove('fade-out')
    } else {
      overlay.classList.add('fade-out')
      overlay.classList.remove('fade-in')
      menu.classList.add('fade-out')
      menu.classList.remove('fade-in')
    }
}

const menuClick = () => {
  if (header.classList.contains('menu-clicked')) {
    burgerClick()
  }
}

burger.addEventListener("click",() => burgerClick(), false);

menuLink.forEach(link => {
  link.addEventListener('click', ()=> menuClick())
})</script> -->