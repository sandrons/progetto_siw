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
    <h1>Dettagli:</h1>
    <div><strong>Indirizzo</strong>: ${providerController.address.street}</div>
    <div><strong>Città</strong>: ${providerController.address.city}</div>
    <div><strong>CAP</strong>: ${providerController.address.zipcode}</div>
    <div><strong>Stato</strong>: ${providerController.address.country}</div>
     <h:form>
     <div><h:commandLink action="provider"
                                value="Torna indietro"
                                rendered="#{adminController.admin !=null}">
                    </h:commandLink> </div>
                    </h:form>
</f:view>
</body>
</html>