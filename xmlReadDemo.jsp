ReadXMLFileUsinJsp
==================

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
	<head>
		<title>Phone List</title>
	</head>
	<body bgcolor="white">
		<c:import url="my.xml" var="myXml"/>
		<x:parse var="emplist" xml="${myXml}"/>
		
		
		<%--<x:set var="emp" select="$emplist/employees/employee[@id='456']"/>--%>
		<table border="1" style="border-collapse:collapse" align="center" cellspacing="10px">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Telephone</th>
			</tr>
		<x:forEach select="$emplist/employees/employee" var="emp">
			<tr>
				<td><x:out select="$emp/first-name" /></td>
				<td><x:out select="$emp/last-name" /></td>
				<td><x:out select="$emp/telephone" /> </td>
			</tr>
		</x:forEach>
		</table>
	</body>
</html>
<br/>
<br/>

put xalan.jar  in lib floder......
