<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
</head>
<body>
<f:view>
<h:form>
<h1>${productController.product.name}</h1>
<h2>Details</h2>
<div>Code: ${productController.product.code}</div>
<div>Price: ${productController.product.price}</div>
<div>Description: ${productController.product.description}</div>
<div>Quantity: ${productController.product.quantity}</div>
<h:commandLink action="#{productController.catalogProducts}" value="List all Products" />
</h:form>
</f:view>
</body> 
</html>