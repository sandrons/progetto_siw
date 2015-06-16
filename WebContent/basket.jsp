<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carrello</title>
</head>
<body>
<f:view>
    <h:form>
    <h1>Il tuo carrello</h1>
        <table>
            <tr>
                <th>Nome Prodotto   </th>
                <th>Prezzo Unitario   </th>
                <th>Quantità   </th>
                <th>Prezzo   </th>
            </tr>
            <c:forEach var="orderLine" items="#{orderController.orderLines}" >
                <tr>
                    <td><h:commandLink action="#{productController.findProduct(orderLine.product.id)}" value="#{orderLine.product.name}"></h:commandLink></td>
                    <td>${orderLine.unitPrice}</td>
                    <td>${orderLine.quantity}</td>
                    <td>${orderLine.unitPrice * orderLine.quantity}</td>
                    <td><h:commandLink action="#{orderController.deleteOrderLineFromOrder(orderLine)}" value="Cancella Prodotto dall'ordine" ></h:commandLink></td>
                </tr> 
            </c:forEach>
        </table>
        <div>Totale ordine : ${orderController.calculateTotal()}</div>
		<div><a href='<c:url value="/faces/homePage.jsp" />'>HomePage</a></div>
        <div><h:commandLink action="#{productController.catalogProducts}" value="Aggiungi altri prodotti all'ordine" ></h:commandLink></div>
        <div><h:commandLink action="#{orderController.closeOrder}" value="Chiudi ordine"  rendered="#{oderController.order.aperto != 1}" ></h:commandLink></div>
    </h:form>
</f:view>
</body>
</html>