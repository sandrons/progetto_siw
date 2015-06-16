<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address</title>
</head>
<body>
<f:view>
    <h1>Address details:</h1>
    <div><strong>Street</strong>: ${customerController.address.street}</div>
    <div><strong>City</strong>: ${customerController.address.city}</div>
    <div><strong>Zip Code</strong>: ${customerController.address.zipcode}</div>
    <div><strong>Country</strong>: ${customerController.address.country}</div>
     <h:form>
     <div><h:commandLink action="customer"
                                value="Torna indietro"
                                rendered="#{adminController.admin !=null}">
                    </h:commandLink> </div>
                    </h:form>
</f:view>
</body>
</html>