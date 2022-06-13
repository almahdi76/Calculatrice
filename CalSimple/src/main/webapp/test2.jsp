<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculatrice Simple</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<jsp:useBean id="resl" class="beans.Calcul" scope="request"/>

<h1>calculatrice simple</h1>

<div class="contaner">
	<form action="ContServlet" method="post">
		<table>
			<tr>
				<td>first number: </td>
				<td><input class="s" autofocus type="text" name="x" value="<c:out value="${x}"/>" ></td> 
				
			</tr>
			
			<tr>
				<td>operation: </td>
				<td>
					<select name="opr" class="ss">
						<option value="+"> Addition</option>
						<option value="/"> Division</option>
						<option value="*"> Multiplication</option>
						<option value="-"> Subtraction</option>
						<option value="**"> Expo</option>
						<option value="%"> Moudls</option>
					</select>
			</tr>
			
			<tr>
				<td>second number: </td>
				
			  	<td><input class="s" autofocus type="text" name="y" value="<c:out value="${y}"/>" ></td>  
			</tr>
			
			<tr>
				<td></td>
				<td><input  id="btn"class="ss" type="submit" value="Calcul"></td>
			</tr>
		</table>
	</form>
</div>
<div class="cont2">
	<table>
		<tr>
			<td>resultat : </td>
			
	<td><jsp:getProperty property="resultat" name="resl"/></td>
	</td>
		</tr>
	</table>
</div>

</body>
</html>