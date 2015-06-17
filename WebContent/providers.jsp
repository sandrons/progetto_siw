<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products</title>
</head>
<body><f:view>
    <h1> Catalogo Fornitori</h1>
    <h:form>
        <table>
            <tr>
                <th>Nome  </th>
                <th>Telefono  </th>
                <th>Email  </th>
                <th>P.IVA </th>
            </tr>
            <c:forEach var="provider" items="#{providerController.providers}" >
                <tr>
                    <td><h:commandLink action="#{providerController.findProvider(provider.id)}" value="#{provider.name}" ></h:commandLink></td>
                    <td>${provider.telefono}</td>
                    <td>${provider.email}</td>
                    <td>${provider.vatin}</td>
                    <td><h:commandLink action="#{providerController.deleteProviderFromCatalog(provider.id)}"
                                       value="Cancella Provider"
                                       rendered="#{adminController.admin!=null }">
                    </h:commandLink></td>
                    <td><h:commandLink action="#{providerController.addProvider(provider)}"
                                       value="Aggiungi un fornitore"
                                       rendered="#{adminController.admin!=null }">
                    </h:commandLink></td>
                    
                </tr>
            </c:forEach>
        </table>
        
        <h:commandLink action="homePageAdmin"
                                value="HomePage"
                                rendered="#{adminController.admin!=null}">
                    </h:commandLink>
                    
                    
       

    </h:form>
</f:view>
</body>
</html>