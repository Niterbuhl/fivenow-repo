<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
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
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-header">
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Home</a></li>
	      <li><a href="#">Page 1</a></li>
	      <li><a href="#">Page 2</a></li> 
	      <li><a href="#">Page 3</a></li> 
	    </ul>
		
	</nav>	
	<body>
			<%@ include file="menu.jsp" %>
			<br/>	
			<i>${message}</i>
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