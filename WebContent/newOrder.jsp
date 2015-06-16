<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuovo Ordine</title>
</head>
<body>
<f:view>
    <h1> Questo è l'ordine di:</h1>
    <div><strong>Nome</strong>: ${orderController.customer_id.firstName}</div>
    <div><strong>Data di creazione</strong> : ${orderController.creationTime}</div>
    <div>
			 <h:form><h:commandLink action="#{productController.catalogProducts}"
					value="Aggiungi prodotto" />	
        </h:form>
    </div>
</f:view>
</body>
</html>