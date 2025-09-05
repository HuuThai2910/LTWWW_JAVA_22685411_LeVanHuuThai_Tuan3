<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .form-container {
      width: 500px;
      margin: 30px auto;
      padding: 20px 30px;
      border-radius: 10px;
      box-shadow: 2px 2px 10px #aaa;
    }
    .form-group {
      display: flex;
      align-items: center;
      gap: 30px;
      margin-bottom: 25px;
    }
    .form-group label {
      font-weight: bold;
    }
    .form-group input[type="text"],
    .form-group input[type="email"],
    .form-group input[type="password"] {
      flex: 1;
      padding: 5px;
    }
    textarea {
      resize: none;
    }
    .gender-options{
      display: flex;
      align-items: center;
      gap: 10px;
    }

    button {
      padding: 8px 20px;
      font-weight: bold;
      border-radius: 4px;
      border: 1px;
      cursor: pointer;
      width: 100%;
      color: white;
      background: darkslateblue;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2 style="text-align: center;">User Registration Form</h2>

  <form action="register" method="post">

    <div class="form-group">
      <input type="text" name="lastName" maxlength="30" placeholder="First Name" />
      <input type="text" name="firstName" maxlength="30" placeholder="Last Name" />
    </div>
    <div class="form-group">
      <input type="email" name="email" placeholder="Your Email" />
    </div>
    <div class="form-group">
      <input type="email"  placeholder="Re-enter Email" />
    </div>
    <div class="form-group">
      <input type="password" name="password"  placeholder="New password" />
    </div>

    <div class="form-group">
      <label>Date of Birth:</label>
      <div style="display: flex; align-items: center; gap: 10px;">
        <select name="dobDay" id="dobDay" >
          <option value="" disabled selected hidden>Day</option>
          <% for (int i = 1; i <= 31; i++) { %>
          <option><%= i %></option>
          <% } %>
        </select>

        <select name="dobMonth" id="dobMonth">
          <option value="" disabled selected hidden>Month</option>
          <option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option>
          <option>May</option><option>Jun</option><option>Jul</option><option>Aug</option>
          <option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option>
        </select>

        <select name="dobYear" id="dobYear">
          <option value="" disabled selected hidden>Year</option>
          <% for (int i = 1980; i <= 2020; i++) { %>
          <option><%= i %></option>
          <% } %>
        </select>
      </div>
    </div>




    <div class="form-group">
      <label>Gender:</label>
      <div class="gender-options">
        <input type="radio" name="gender" value="Male" /> Male
        <input type="radio" name="gender" value="Female" /> Female
      </div>
    </div>
    <button type="submit">Sign up</button>

  </form>
</div>

</body>
</html>
