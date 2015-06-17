<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
</head>
<body>
<f:view>
	<h1>Inserisci i tuoi dati:</h1>
    <h:form>
        <div>Nome: <h:inputText value="#{customerController.firstName}"
                                required="true"
                                requiredMessage="Name is mandatory" id="firstName"/> <strong><h:message for="firstName" /></strong>
        </div>
        <div>Cognome: <h:inputText value="#{customerController.lastName}"
                                required="true"
                                requiredMessage="Code is mandatory"  id="lastName"/> <h:message for="lastName" />
        </div>
        <div>Email: <h:inputText value="#{customerController.email}"
                                 required="true"
                                 requiredMessage="Email is mandatory" id="email"/> <h:message for="email" />
        </div>
        <div>Data di nascita: <h:inputText value="#{customerController.dateOfBirth}"
                                    required="true"
                                    requiredMessage="Birthday date is mandatory"
                                    converterMessage="Birthday date must be a date" id="dateOfBirth"><f:convertDateTime pattern="dd-mm-yyyy" />
            <h:message for="dateOfBirth" /></h:inputText>
        </div>
        <div>Password: <h:inputText value="#{customerController.password}"
                                 required="true"
                                 requiredMessage="Password is mandatory" id="password"/> <h:message for="password" />
        </div>
        <div><h1>-----------------------------------------</h1></div>
        <div>Indirizzo: <h:inputText value="#{customerController.street}"
                                 required="true"
                                 requiredMessage="Street is mandatory" id="street"/> <h:message for="street" />
        </div>
        <div>Città: <h:inputText value="#{customerController.city}"
                                 required="true"
                                 requiredMessage="City is mandatory" id="city"/> <h:message for="city" />
        </div>
        <div>CAP: <h:inputText value="#{customerController.zipcode}"
                                 required="true"
                                 requiredMessage="Zipcode is mandatory" id="zipcode"/> <h:message for="zipcode" />
        </div>
        <div>Paese: <h:inputText value="#{customerController.country}"
                                 required="true"
                                 requiredMessage="Country is mandatory" id="coutry"/> <h:message for="coutry" />
        </div>
        <div>
            <h:commandButton value="Submit"  action="#{customerController.createCustomer}"/>
        </div>
            <a href='<c:url value="/faces/index.jsp" />'>Home Page</a>
        
    </h:form>
</f:view>
</body>
</html>