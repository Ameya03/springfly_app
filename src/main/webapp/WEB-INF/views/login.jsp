
<!DOCTYPE>
<html>
<head>

<title>Yahoo from JSP</title>
</head>
<body>
<form action="/login" method="post">
Enter Name  <input type ="text" name ="name"/>
Enter Password  <input type ="text" name ="password"/>
<input type="submit" value = "Submit">
<p><font color="red">${error}</p>
</form>
</body>
</html>