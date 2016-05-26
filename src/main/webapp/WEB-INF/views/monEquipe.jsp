<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edition User</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<div class="container-fluide">
	
	<body>
			<%@ include file="menu.jsp" %>
			<br/>	

			<sf:form method="post" modelAttribute="user" action="/create">
				<fieldset>
					<table>
						<tr>
							<td>Nom : </td>
							<td><sf:input path="nom" /></td>
						</tr>
						<tr>
							<td>Prénom : </td>
							<td><sf:input path="prenom" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="Ok, User créé"/></td>
						</tr>
					</table>
		        </fieldset>
		    </sf:form>
			
		</body>
</div>
</html>