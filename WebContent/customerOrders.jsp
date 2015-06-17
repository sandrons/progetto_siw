<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Orders</title>
</head>
<body>
<f:view>
    <h1> Riepilogo dei tuoi ordini chiusi </h1>
    <h:form>
        <table>
            <tr>
                <th>Data di inzio ordine  </th>
                <th>Data di chiusura ordine </th>
                <th>Stato </th>
            </tr>
            <c:forEach var="order" items="#{customerController.orders}">
                <tr>
                    <td>${order.creationTime}</td>
                    <td>${order.closeTime}</td>
                    <td>${order.status}</td>
                    <td><h:commandLink action="#{orderController.findOrder(order.id)}" value="Dettagli"></h:commandLink></td>
                </tr>
            </c:forEach>
        </table>
        <div><h:commandLink action="customer"
                                value="Torna indietro"
                                rendered="#{adminController.admin !=null}">
                    </h:commandLink> </div>
                    
                    <div><h:commandLink action="homePageNoChart"
                                value="Torna indietro"
                                rendered="#{customerController.customer !=null and adminController.admin == null}">
                    </h:commandLink> </div>
    </h:form>
</f:view>
</body>
</html>