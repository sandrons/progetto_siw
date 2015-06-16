<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
    <h1>Dettagli Cliente:</h1>
    <div><strong>Nome</strong>: ${customerController.customer.firstName}</div>
    <div><strong>Cognome</strong>: ${customerController.customer.lastName}</div>
    <div><strong>Data di Nascita</strong>: ${customerController.customer.dateOfBirth}</div>
    <div><strong>Data di registrazione</strong>: ${customerController.customer.registrationDate}</div>
    <div><strong>Email</strong>: ${customerController.customer.email}</div>
    <h:form>
        <div><h:commandLink action="#{customerController.customerAddress(customerController.customer.id)}" value="Indirizzo di residenza"></h:commandLink></div>
        <div><h:commandLink action="#{customerController.customerOrders(customerController.customer)}" value="Consulta i suoi ordini"></h:commandLink></div>
    </h:form>
</f:view>
</body>
</html>