<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html xmlns:f="http://java.sun.com/jsf/core" >
<h:head>
<title>siw-jsf-ex</title>
</h:head>
<h:body>
	<h1>SIW-JSF-EX</h1>
	<ul>
		<li><h:link value="Add a new product" outcome="newProduct.jsf" /></li>
		<li><h:form>
			<h:commandLink action="#{productController.name}"
						value="List all Products" />
			</h:form></li>
	</ul>
</h:body>
</html>