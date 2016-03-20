<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edition User</title>
</head>
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
</html>