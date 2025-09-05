<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/5/2025
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="fit.iuh.edu.levanhuuthai_22685411_tuan3.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%
    User user = (User) request.getAttribute("user");
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Info</title>
</head>
<body>
<h2>Registration Successful!</h2>
<p><strong>Name:</strong> <%= user.getFirstName() %> <%= user.getLastName() %></p>
<p><strong>Date of Birth:</strong> <%= user.getDateOfBirth().format(formatter) %></p>
<p><strong>Email:</strong> <%= user.getEmail() %></p>
<p><strong>Mobile:</strong> <%= user.getNumber() %></p>
<p><strong>Gender:</strong> <%= user.getGender() %></p>
<p><strong>Address:</strong> <%= user.getAddress() %></p>
<p><strong>City:</strong> <%= user.getCity() %></p>
<p><strong>Pin Code:</strong> <%= user.getCode() %></p>
<p><strong>State:</strong> <%= user.getState() %></p>
<p><strong>Country:</strong> <%= user.getCountry() %></p>
<p><strong>Hobbies:</strong>
<ul>
    <% for (String h : user.getHobbies()) { %>
    <li><%= h %></li>
    <% } %>
</ul>
</p>
<p><strong>Course:</strong> <%= user.getCourse() %></p>
</body>
</html>

