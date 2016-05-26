<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edit Shop page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
	<body>
		<h1>Edit Shop page</h1>
		<sf:form method="POST" commandName="user" action="/edit/${user.id}.html" >
			<table>
				<tbody>
					<tr>
						<td>Nom :</td>
						<td><sf:input path="nom" /></td>
						<td><sf:errors path="nom" cssStyle="color: red;"/></td>
					</tr>
					<tr>
						<td>Prénom :</td>
						<td><sf:input path="prenom" /></td>
						<td><sf:errors path="prenom" cssStyle="color: red;"/></td>
					</tr>
					<tr>
						<td><input type="submit" value="Update" /></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</sf:form>
		<a href="/FiveNow">Home page</a>
	</body>
</html>