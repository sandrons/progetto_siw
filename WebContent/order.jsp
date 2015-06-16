<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ordine</title>
</head>
<body>
<f:view>
    <h:form>
        <h1>Riepilogo ordine:</h1>
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
        <div>Stato Ordine : ${orderController.order.status}</div>
        <div><h:commandLink action="homePageNoChart" 
            						value="HomePage"
            						rendered="#{customerController.customer!=null and orderController.order.aperto != 0}"
                                    /></div>
        <div><h:commandLink action="homePageAdmin" 
            						value="HomePage"
            						rendered="#{customerController.customer==null and adminController.admin != null}"
                                    /></div>
        
        
        
        <div><h:commandLink action="#{orderController.createOrder(customerController.customer)}" 
            						value="Nuovo ordine"
            						rendered="#{adminController.admin == null}"
                                    /></div>
        <div><h:commandLink action="#{orderController.allOrders}"
                            value="Lista ordini"
                rendered="#{adminController.admin!=null}"></h:commandLink></div>
    </h:form>
</f:view>
</body>
</html>