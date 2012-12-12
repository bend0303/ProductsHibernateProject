<%@page import="com.hibernate.bend.model.ProductDelegate"%>
<%@page import="com.hibernate.bend.model.ProductsDAO"%>
<%@page import="com.hibernate.bend.model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/tableCSS.css" />
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Products page</title>
</head>
<%
	ProductDelegate delegate = new ProductDelegate();
	ArrayList<Product> products = delegate.getProducts();
	pageContext.setAttribute("products", products);
%>
<script>
	function cbChange() {
		checkboxes = document.getElementsByName('delCheckbox');
		if (document.getElementById('checkAll').checked == true) {
			for ( var i in checkboxes)
				checkboxes[i].checked = true;
		} else {
			for (var i in checkboxes)
				checkboxes[i].checked = false;
		}

	}
</script>
<body>
	<form action="ProductsServlet" method="get">
	<table class="mytable" cellspacing="0" summary="Product List Table">
		<caption>Product Table</caption>
		<tr>
			<th class="nobg"><input type="checkbox" name="checkAll"  id="checkAll" onchange="cbChange()"></th>
			<th scope="col" abbr="Product ID" class="nobg">Product ID</th>
			<th scope="col" abbr="Product Name">Product Name</th>
			<th scope="col" abbr="Price">Price</th>
			<th scope="col" abbr="Description">Description</th>
		</tr>
		
		<c:forEach var="p" items="${products}">
			<tr>
				<td width="5%"><input type="checkbox" value="${p.productId}" name="delCheckbox"></td>
				<th scope="row" class="spec"><c:out value="${p.productId}" />
				</th>
				<td width="25%"><a href="http://localhost:8080/HibernateStudying/Product/<c:out value="${p.productId}"></c:out>"> <c:out value="${p.productName}" /></a></td>
				<td width="25%"><c:out value="${p.productPrice}" /></td>
				<td width="25%"><c:out value="${p.productDesc}" /></td>
				<td width="10%"><input type="image" src="images/garbage-bin-icon.jpg" style="width: 30px; height: 30px;" alt="Delete Product" name="singleDelete" value="${p.productId}"> </td>
			</tr>
			
		</c:forEach>
	</table>
	<a href="addProduct.jsp"><button class="buttonCss">Add Another Product</button></a>
	<button type="submit" class="buttonCss">Delete All</button>
	</form>
</body>
</html>