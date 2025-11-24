<%--
  Created by IntelliJ IDEA.
  User: Devon
  Date: 11/11/2024
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Personal Website</title>
</head>
<body>
<h2>Contact Me</h2>
<h3>My Contact Information:</h3>
<p>Phone: (715) 777-1111 <br>
Email: mpashibin@student.cvtc.edu</p>

<p>To connect with me, submit your information below. To learn more about me,
    click the link to my <a href="bio.jsp">bio</a> page. Click here to return to
    the <a href="index.jsp">home</a> page.</p>

<h2 style="color:red">${message}</h2>

<form action="connect" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" name="firstName" id="firstName"><br>

    <label for="lastName">Last Name:</label>
    <input type="text" name="lastName" id="lastName"><br>

    <label for="email">Email:</label>
    <input type="text" name="email" id="email"><br>

    <input type="submit">
</form>
</body>
</html>
