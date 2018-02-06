<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Yahoo from JSP</title>
</head>
<body>
<form action="/spring-mvc/login" method="post">
Enter Name  <input type ="text" name ="name"/>
Enter Password  <input type ="text" name ="password"/>
<input type="submit" value = "Submit">
<p><font color="red">${error}</p>
</form>
</body>
</html>