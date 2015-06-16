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
    <h1> Catalogo Prodotti</h1>
    <h:form>
        <table>
            <tr>
                <th>Nome  </th>
                <th>Prezzo  </th>
                <th>Quantità  </th>
            </tr>
            <c:forEach var="product" items="#{productController.products}" >
                <tr>
                    <td><h:commandLink action="#{productController.findProduct(product.id)}" value="#{product.name}" ></h:commandLink></td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td><h:commandLink action="#{productController.deleteProductFromCatalog(product.id)}"
                                       value="Cancella Prodotto"
                                       rendered="#{adminController.admin!=null and customerController.customer==null}">
                    </h:commandLink></td>
                    <td><h:commandLink action="#{productController.addProduct(product)}"
                                       value="Aggiungi Prodotto a ordine"
                                       rendered="#{orderController.order!=null and adminController.admin==null and orderController.order.closeTime==null and customerController.customer!=null}">
                    </h:commandLink></td>
                    <td><h:commandLink action="#{productController.goModify(product)}"
                                value="Modifica dati Prodotto"
                                rendered="#{adminController.admin!=null and customerController.customer==null}">
                    </h:commandLink></td>
                </tr>
            </c:forEach>
        </table>
        
        <h:commandLink action="homePageAdmin"
                                value="HomePage"
                                rendered="#{adminController.admin!=null}">
                    </h:commandLink>
                    
                    <h:commandLink action="homePageNoChart"
                                value="HomePage"
                                rendered="#{customerController.customer!=null and orderController.order.aperto != 0}">
                    </h:commandLink>
                    
                    <h:commandLink action="index"
                                value="HomePage"
                                rendered="#{customerController.customer ==null and adminController.admin == null}">
                    </h:commandLink>
     
       

    </h:form>
</f:view>
</body>
</html>