<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Riepilogo</title>
</head>
<body>
<f:view>
    <h:form>
    <h1>Riepilogo ordine</h1>
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
                </tr> 
            </c:forEach>
        </table>
        <div>Totale ordine : ${orderController.calculateTotal()}</div>
		<div><a href='<c:url value="/faces/homePageNoChart.jsp" />'>HomePage</a></div>
    </h:form>
</f:view>
</body>
</html>