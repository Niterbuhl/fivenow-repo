<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>User List page</title>
</head>
	<body>
	<h1>User List page</h1>
	<table style="text-align: center;" border="1px" cellpadding="0" cellspacing="0" >
		<thead>
			<tr>
			<th width="25px">id</th><th width="150px">nom</th><th width="25px">prenom</th><th width="50px">actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${userList}">
			<tr>
				<td>${user.id}</td>
				<td>${user.nom}</td>
				<td>${user.prenom}</td>
				<td>
					<a href="/FiveNow/edit/${user.id}.html">Edit</a><br/>
					<a href="/FiveNow/delete/${user.id}.html">Delete</a><br/>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/FiveNow">Home page</a>
	</body>
</html>