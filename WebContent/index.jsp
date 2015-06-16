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
		<h1>HomePage</h1>
		<ul>
			
			<li><h:form>
					<h:commandLink action="#{productController.catalogProducts}"
					value="Guarda il catalogo" />
				</h:form></li>
			<li><a href='<c:url value="/faces/newCustomer.jsp" />'>Registrati</a></li>	
			<li><a href='<c:url value="/faces/loginUser.jsp" />'>Login Utente</a></li>		
			<li><a href='<c:url value="/faces/loginAdmin.jsp" />'>Login Admin</a></li>	
		</ul>
	</f:view>
</body>
</html>

