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
    <h:form>
        <div>Nome: <h:inputText value="#{providerController.name}"
                                required="true"
                                requiredMessage="Il nome è obbligatorio" id="name"/> <strong><h:message for="name" /></strong>
        </div>
        <div>Numero di Telefono: <h:inputText value="#{providerController.phoneNumber}"
                                   required="true"
                                   requiredMessage="Il numero di telefono è obbligatorio"  id="phoneNumber"/> <h:message for="phoneNumber" />
        </div>
        <div>Email: <h:inputText value="#{providerController.email}"
                                 required="true"
                                 requiredMessage="L'email è obbligatoria" id="email"/> <h:message for="email" />
        </div>
        <div>Partita IVA: <h:inputText value="#{providerController.vatin}"
                                         required="true"
                                         requiredMessage="Campo obbligatorio!" id="vatin"/><h:message for="vatin" />
        </div>

        <div><h1>Inserisci i dati sull'indirizzo del fornitore:</h1></div>
        <div>Via: <h:inputText value="#{providerController.street}"
                                  required="true"
                                  requiredMessage="Campo obbligatorio!" id="street"/> <h:message for="street" />
        </div>
        <div>Città: <h:inputText value="#{providerController.city}"
                                required="true"
                                requiredMessage="Campo obbligatorio!" id="city"/> <h:message for="city" />
        </div>
        <div>CAP: <h:inputText value="#{providerController.zipcode}"
                                     required="true"
                                     requiredMessage="Campo obbligatorio!" id="zipcode"/> <h:message for="zipcode" />
        </div>
        <div>Stato: <h:inputText value="#{providerController.country}"
                                   required="true"
                                   requiredMessage="Campo obbligatorio!" id="coutry"/> <h:message for="coutry" />
        </div>
        <div>
            <h:commandButton value="Submit"  action="#{providerController.createProvider}"/>
        </div>
    </h:form>
</f:view>
</body>
</html>