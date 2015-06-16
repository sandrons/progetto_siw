<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>HomePage</title>
</head>
<body>
	<f:view>
	
		<h1>Complimenti la tua registrazione e' stata effettuata!</h1>
		<ul>
			<br><a href='<c:url value="/faces/loginUser.jsp" />'>Accedi</a>
			 
			<br><a href='<c:url value="/faces/index.jsp" />'>Home Page</a>
		
		</ul>
		
	</f:view>
</body>
</html>

