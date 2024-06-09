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
    <h1 id="title">freeCodeCamp Survey Form</h1>
    <p id="description">Thank you for taking the time to help us improve the platform</p>
    <form id="survey-form">
      <div class="form-group">
        <label id="name-label" for="name">Name
          <input type="text" id="name" placeholder="Enter your name" required>
        </label>
      </div>
      <div class="form-group">
        <label id="email-label" for="email">Email
          <input type="email" id="email" placeholder="Enter your Email" required>
        </label>
      </div>
      <div class="form-group">
        <label id="number-label" for="number">Age (optional)
          <input type="number" id="number" min="10" max="99" placeholder="Age">
        </label>
      </div>
      <div class="form-group">
        <p>Which option best describes your current role?</p>
        <select id="dropdown" name="role">
          <option value="">Select current role</option>
          <option value="1">Student</option>
          <option value="2">Full Time Job</option>
          <option value="3">Full Time Learner</option>
          <option value="4">Prefer not no say</option>
          <option value="5">Other</option>
        </select>
      </div>
      <div class="form-group">
        <p>Would you recommend freeCodeCamp to a friend?</p>
        <label><input type="radio" name="recommend" value="0"> Definitely</label>
        <label><input type="radio" name="recommend" value="1"> Maybe</label>
        <label><input type="radio" name="recommend" value="2"> Not sure</label>
      </div>
      <div class="form-group">
        <p>What is your favorite feature of freeCodeCamp?</p>
        <select>
          <option value="">Select an option</option>
          <option value="1">Challanges</option>
          <option value="2">Projects</option>
          <option value="3">Communities</option>
          <option value="4">Open Source</option>
        </select>
      </div>
      <div class="form-group">
        <p>What would you like to see improved? (Check all that apply)</p>
        <label>
          <input type="checkbox" value="0">Front-end Projects
        </label>
        <label>
          <input type="checkbox" value="1">Back-end Projects
        </label>
        <label>
          <input type="checkbox" value="2">Data Visualization
        </label>
        <label>
          <input type="checkbox" value="3">Challenges
        </label>
        <label>
          <input type="checkbox" value="4">Open Source Community
        </label>
        <label>
          <input type="checkbox" value="5">Gitter help rooms
        </label>
        <label>
          <input type="checkbox" value="6">Videos
        </label>
        <label>
          <input type="checkbox" value="7">City Meetups
        </label>
        <label>
          <input type="checkbox" value="8">Wiki
        </label>
        <label>
          <input type="checkbox" value="9">Forum
        </label>
        <label>
          <input type="checkbox" value="10">Additional Courses
        </label>
      </div>
      <div class="form-group">
        <p>Any comments or suggestions?</p>
        <textarea id="suggestions" name="suggestions" placeholder="Enter your comment here..."></textarea>
      </div>
      <div class="form-group">
        <input id="submit" type="submit" value="Submit">
      </div>
    </form>
  </body>
</html>