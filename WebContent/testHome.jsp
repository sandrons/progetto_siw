<%@ page contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
<title>La Cantina della Birra</title>
<link href="stile.css" rel="stylesheet" type="text/css" />
</head>

<body>
<f:view>
<h:form>
<div> Nome: <h:inputText value="#{productController.name}"/></div>
<div> Tipo: <h:inputText value="#{productController.tipo}"/></div>
<div> Descrizione: <h:inputText value="#{productController.description}"/></div>
<div> Prezzo: <h:inputText value="#{productController.price}"/></div>
<div> <h:commandButton value="Submit" action="#{productController.createProduct}"/></div>
</h:form>
</f:view>

</body>
</html>