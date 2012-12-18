<%@page import="com.hibernate.bend.fe.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/tableCSS.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	Product p = (Product) request.getAttribute("productView");
	Integer id = (Integer) request.getAttribute("idToView");
%>
</head>
<body>
	<% if (p != null) { %>
	<table class="mytable">
	<tr>
		<td width="20%">ID:</td>
		<td><%=p.getProductId() %></td>
	</tr>
	<tr>
		<td width="20%">Name:</td>
		<td><%=p.getProductName() %></td>
	</tr>
	<tr>
		<td width="20%">Description:</td>
		<td><%=p.getProductDesc() %></td>
	</tr>	
	
	</table>
	<%} else { %>
	<H1 color=red>Product with id <%=id%> does not exist in the records </H1>
	<%} %>
</body>
</html>