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
    <h:form>
        <h1>Inserisci la quantità desiderata</h1>
        <li><strong>Prodotto</strong>: ${productController.product.name}</li>
        <li><strong>Quantita</strong>: <h:inputText value="#{orderLineController.quantity}"
                                       required="true"
                                       requiredMessage="La quantita' e' obbligatorio"
                                       id="quantita"/> <h:message for="quantita"/></li>

        <h:commandButton value="Aggiungi ad ordine"
                         action="#{orderLineController.createOrderLine(orderController.order, productController.product)}"/>
    </h:form>
</f:view>
</body>
</html>