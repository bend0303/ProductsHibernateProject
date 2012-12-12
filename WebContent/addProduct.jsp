<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/formCSS.css" />
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Add a New Product</title>
</head>
<body>
<div align="center">
	<table style="margin: auto;">
		<tr>
			<td>
				<form id="form1" action="/HibernateStudying/CreateProductAction" method="post">

					<fieldset>
						<legend>Add New Product</legend>
						<p class="first">
							<label for="productName">Product Name</label> <input type="text"
								name="productName" id="productName" value="Test Name" size="30" />
						</p>
						<p>
							<label for="productPrice">Product Price</label> <input
								type="text" name="productPrice" value="30" id="productPrice" size="30" />
						</p>
						<p>
							<label for="Description">Product Description</label>
							<textarea name="productDescription"  id="productDescription"
								cols="30" rows="10">Test Description</textarea>
						</p>

						<p align="left" class="submit">
							<button type="submit">Send</button>

							<a href="ProductsTable.jsp"><button id="addbutton">Go
									to Products Table</button></a>

						</p>

					</fieldset>
				</form>

			</td>
	</table>
	</div>
</body>
</html>