<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="beans.*" %>

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
				<td><input class="s" autofocus type="text" name="x" value="<jsp:getProperty property="x" name="resl"/>" ></td>
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
				<td><input class="s" type="text" name="y" value="<jsp:getProperty property="y" name="resl"/>"></td>
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
			<td> <jsp:getProperty property="resultat" name="resl"/>
	</td>
		</tr>
	</table>
</div>

</body>
</html>