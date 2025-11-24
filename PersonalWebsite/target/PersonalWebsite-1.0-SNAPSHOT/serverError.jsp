<%--
  Created by IntelliJ IDEA.
  User: Devon
  Date: 11/11/2024
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Internal Server Error</title>
</head>
<body>
<h1>Houston, we've had a problem.</h1>
<h2>Error details:</h2>
<p>Type: ${pageContext.exception["class"]}</p>
<p>Message: ${pageContext.exception.toString()}</p>
</body>
</html>
