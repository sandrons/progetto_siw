<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
    <h1> Storico Ordini </h1>
    <h:form>
        <table>
            <tr>
                <th>Id Ordine </th>
                <th>Cliente </th>
                <th>Stato</th>
            </tr>
            <c:forEach var="order" items="#{orderController.orders}" >
                <tr>
                    <td><h:commandLink action="#{orderController.findOrder(order.id)}" value="#{order.id}"></h:commandLink></td>
                    <td>${order.customer_id.firstName}</td>
                    <td>${order.status}</td>
                    <td>
                        <h:commandLink action="#{orderController.evadeOrder(order)}"
                                       value="Evadi Ordine"
                                       rendered="#{order.checkDispatched() and orderController.checkEvade(order)}">
                        </h:commandLink>
                        
                    </td>
                    <td>
                        <h:outputText value="Impossibile evadere l'ordine!"
                                      rendered="#{!orderController.checkEvade(order) and order.checkDispatched()}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
         
        
        <div><a href='<c:url value="/faces/homePageAdmin.jsp" />'>HomePage</a></div>
    </h:form>
    </f:view>
</body>
</html>