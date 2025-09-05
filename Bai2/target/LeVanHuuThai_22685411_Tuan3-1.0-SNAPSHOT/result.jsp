<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/5/2025
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="fit.iuh.edu.levanhuuthai_22685411_tuan3.model.User" %>
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
<p><strong>Gender:</strong> <%= user.getGender() %></p>
<p><strong>Hobbies:</strong>
</body>
</html>

