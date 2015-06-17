<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginUser</title>
</head>
<body>
<f:view>
<h1>Accesso utente</h1>
    <h:form>
        <div><strong>Email</strong>: <h:inputText value="#{customerController.email}"
                                                  required="true"
                                                  requiredMessage="Email is mandatory" id="email"/> <strong><h:message for="email" /></strong>
        </div>
        <div><strong>Password</strong>: <h:inputSecret value="#{customerController.password}"
                                                     required="true"
                                                     requiredMessage="Password is mandatory" id="password"/> <strong><h:message for="password" /></strong>
        </div>
        <div><h:commandButton value="Effettua Login" action="#{customerController.customerLogin}" /></div>
		<a href='<c:url value="/faces/newCustomer.jsp" />'>Registrati</a>
    </h:form>
</f:view>
</body>
</html>