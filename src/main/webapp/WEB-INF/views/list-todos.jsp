<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Todos for ${name}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class= "container">
	<H1>Your Todos</H1>
	<div>
		<table class ="table table-striped">

			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Completed</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<a type ="button"   class="btn btn-success" href="./add-todo">Add</a>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</div>
</body>
</html>