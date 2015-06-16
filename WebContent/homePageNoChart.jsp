<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<f:view>
        <h2>${customerController.customer.firstName} ${customerController.customer.lastName}</h2>
        <h:form> <ul>
            <li><h:commandLink action="#{productController.catalogProducts}"  value="Guarda il catalogo" />
				</li>            
            <li><h:commandLink action="#{orderController.createOrder(customerController.customer)}" 
            						value="Nuovo ordine"/></li>
                                    
            <li><h:commandLink action="#{customerController.customerOrders(customerController.customer)}" 
            value="Consulta i tuoi ordini"></h:commandLink></li>
           
            <li><h:commandLink value="Effettua Logout" action="#{customerController.customerLogout}" />
           </li>
            
        </ul></h:form>
    
</f:view>
</body>
</html>