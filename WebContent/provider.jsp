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
    <h1>Dettagli fornitore:</h1>
    <div><strong>Nome</strong>: ${providerController.provider.name}</div>
    <div><strong>Numero di Telefono</strong>: ${providerController.provider.phoneNumber}</div>
    <div><strong>Email</strong>: ${providerController.provider.email}</div>
    <div><strong>P.IVA</strong>: ${providerController.provider.vatin}</div>
    
    <div><h:commandLink action="providers"
                                value="Torna indietro"
                                >
                    </h:commandLink> </div>
    
</f:view>

</body>
</html>