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
    <h1> Anagrafica Clienti </h1>
    <h:form>
        <table>
            <tr>
                <th>Nome  </th>
                <th>Cognome  </th>
                <th>Email  </th>
            </tr>
            <c:forEach var="customer" items="#{customerController.customers}" >
                <tr>
                    <td><h:commandLink action="#{customerController.findCustomer(customer.id)}" value="#{customer.firstName}"></h:commandLink></td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td><h:commandLink action="#{customerController.deleteCustomer(customer.id)}" value="Cancella cliente"></h:commandLink></td>
                </tr>
            </c:forEach>
        </table>
        <h:commandLink action="homePageAdmin"
                                value="HomePage">
                    </h:commandLink>
    </h:form>
</f:view>
</body>
</html>