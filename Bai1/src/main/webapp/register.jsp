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
      width: 800px;
      background-color: #b3e0ff;
      margin: 30px auto;
      padding: 20px 30px;
      border-radius: 10px;
      box-shadow: 2px 2px 10px #aaa;
    }
    .form-group {
      display: flex;
      align-items: center;
      margin-bottom: 25px;
    }
    .form-group label {
      width: 180px;
      font-weight: bold;
    }
    .form-group input[type="text"],
    .form-group input[type="email"],
    .form-group select,
    .form-group textarea {
      flex: 1;
      padding: 5px;
    }
    textarea {
      resize: none;
    }
    .gender-options,
    .hobbies-options {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .qualification-table {
      width: 100%;
      border: 1px solid #000;
      margin-top: 10px;
      border-collapse: collapse;
    }
    .qualification-table th, .qualification-table td {
      border: 1px solid #000;
      padding: 5px;
      text-align: center;
    }
    button {
      padding: 8px 20px;
      font-weight: bold;
      border-radius: 4px;
      border: 1px;
      cursor: pointer;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2 style="text-align: center;">Registration Form</h2>

  <form action="register" method="post">

    <div class="form-group">
      <label>First name:</label>
      <input type="text" name="firstName" maxlength="30" placeholder="(max 30 characters a-z and A-Z)" />
    </div>

    <div class="form-group">
      <label>Last name:</label>
      <input type="text" name="lastName" maxlength="30" placeholder="(max 30 characters a-z and A-Z)" />
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
      <label>Email:</label>
      <input type="email" name="email" />
    </div>

    <div class="form-group">
      <label>Mobile number:</label>
      <input type="text" name="number" maxlength="10" placeholder="10 digit number" />
    </div>

    <div class="form-group">
      <label>Gender:</label>
      <div class="gender-options">
        <input type="radio" name="gender" value="Male" /> Male
        <input type="radio" name="gender" value="Female" /> Female
      </div>
    </div>

    <div class="form-group">
      <label>Address:</label>
      <textarea name="address" rows="3" cols="30"></textarea>
    </div>

    <div class="form-group">
      <label>City:</label>
      <input type="text" name="city" maxlength="30" placeholder="(max 30 characters a-z and A-Z)" />
    </div>

    <div class="form-group">
      <label>Pin code:</label>
      <input type="text" name="code" maxlength="6" placeholder="6 digit number" />
    </div>

    <div class="form-group">
      <label>State:</label>
      <input type="text" name="state" maxlength="30" placeholder="(max 30 characters a-z and A-Z)" />
    </div>

    <div class="form-group">
      <label>Country:</label>
      <input type="text" name="country" value="India" readonly />
    </div>

    <div class="form-group">
      <label>Hobbies:</label>
      <div class="hobbies-options">
        <input type="checkbox" name="hobby" value="Drawing" /> Drawing
        <input type="checkbox" name="hobby" value="Singing" /> Singing
        <input type="checkbox" name="hobby" value="Dancing" /> Dancing
        <input type="checkbox" name="hobby" value="Sketching" /> Sketching
        <input type="checkbox" name="hobby" value="Others" /> Others
        <input type="text" name="hobbyOther" placeholder="Specify" />
      </div>
    </div>

    <h3>Qualification</h3>
    <table class="qualification-table">
      <tr>
        <th>Sl.No.</th>
        <th>Examination</th>
        <th>Board</th>
        <th>Percentage</th>
        <th>Year of Passing</th>
      </tr>
      <tr>
        <td>1</td><td>Class X</td>
        <td><input type="text" name="board1" /></td>
        <td><input type="text" name="percent1" /></td>
        <td><input type="text" name="year1" /></td>
      </tr>
      <tr>
        <td>2</td><td>Class XII</td>
        <td><input type="text" name="board2" /></td>
        <td><input type="text" name="percent2" /></td>
        <td><input type="text" name="year2" /></td>
      </tr>
      <tr>
        <td>3</td><td>Graduation</td>
        <td><input type="text" name="board3" /></td>
        <td><input type="text" name="percent3" /></td>
        <td><input type="text" name="year3" /></td>
      </tr>
      <tr>
        <td>4</td><td>Masters</td>
        <td><input type="text" name="board4" /></td>
        <td><input type="text" name="percent4" /></td>
        <td><input type="text" name="year4" /></td>
      </tr>
    </table>

    <div style="margin-top: 28px; display: flex; align-items: center; justify-content: center; gap: 30px">
      <button type="submit">Submit</button>
      <button type="reset">Reset</button>
    </div>

  </form>
</div>

</body>
</html>
