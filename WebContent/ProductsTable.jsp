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
	ProductsDAO dao = ProductsDAO.getInstance();
	ArrayList<Product> products = dao.getProdcts();
	pageContext.setAttribute("products", products);
%>
<body>
	<table id="mytable" cellspacing="0" summary="Product List Table">
		<caption>Product Table</caption>
		<tr>
			<th scope="col" abbr="Product ID" class="nobg">Product ID</th>
			<th scope="col" abbr="Product Name">Product Name</th>
			<th scope="col" abbr="Price">Price</th>
			<th scope="col" abbr="Description">Description</th>
		</tr>

		<c:forEach var="p" items="${products}">
			<tr>
				<th scope="row" class="spec"><c:out value="${p.productId}" />
				</th>
				<td><c:out value="${p.productName}" /></td>
				<td><c:out value="${p.productPrice}" /></td>
				<td><c:out value="${p.productDesc}" /></td>
			</tr>
		</c:forEach>
	</table>
	<a href="addProduct.jsp"><button id="addbutton">Add Another Product</button></a>
</body>
</html>