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
        <h1>Modifica Prodotto: ${productController.product.name} </h1>
        <div><strong>Prezzo:</strong> <h:inputText value="#{productController.price}"
                                 required="true"
                                 requiredMessage="Price is mandatory"
                                 converterMessage="Price must be a number" id="price"/> <h:message for="price" />
        </div>
        <div><strong>Quantità:</strong> <h:inputText value="#{productController.quantity}"
                                    required="true"
                                    requiredMessage="Quantity is mandatory"
                                    converterMessage="Quantity must be a number" id="quantity"/> <h:message for="quantity" />
        </div>
        <div><strong>Descrizione:</strong> <h:inputTextarea value="#{productController.description}"
                                           required="false"
                                           cols="20" rows="5" /></div>
        <div>
            <h:commandButton value="Submit"  action="#{productController.modifyProduct}"/>
        </div>
    </h:form>
</f:view>
</body>
</html>