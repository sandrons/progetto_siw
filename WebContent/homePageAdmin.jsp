<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage Amministratore</title>
</head>
<body>

<h1>HOME PAGE AMMINISTRATORE</h1>
<f:view>
    <h:form>
        <h2>${adminController.admin.firstName} ${adminController.admin.lastName}</h2>
        <ul>
            <li><div><h:commandLink action="#{productController.catalogProducts}" value="Visita il catalogo "></h:commandLink></div></li>
			<li><a href='<c:url value="/faces/newProduct.jsp" />'>Inserisci un nuovo prodotto</a></li>	
            <li><div><h:commandLink action="#{customerController.allCustomer}" value="Tutti i customer"></h:commandLink></div></li>
            <li><div><h:commandLink action="#{orderController.allOrders}" value="Tutti gli ordini"></h:commandLink></div></li>
            <li><div><h:commandLink value="Effettua Logout" action="#{adminController.adminLogout}" /></div></li>
        </ul>
    </h:form>
</f:view>
</body>
</html>