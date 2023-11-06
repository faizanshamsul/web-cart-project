<%@page import="com.jsp.jcart_web_app.dto.Product"%>
<%@page import="com.jsp.jcart_web_app.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int productId = Integer.parseInt(request.getParameter("productid"));
		Product product = new ProductDao().getProductByIdDao(productId);
	%>
	<form action="">
	<jsp:include page="back-home.jsp"></jsp:include><br><br>
		<label>Product Name : </label>
		<input type="text" name="productName" placeholder="productName"><br><br>
		
		<label>Product Color : </label>
		<input type="text" name="productColor" placeholder="productColor"><br><br>
		
		<label>Product Size : </label>
		<input type="text" name="productSize" placeholder="productSize"><br><br>
		
		<label>Product Quantity : </label>
		<input type="text" name="productQuantity" placeholder="productQuantity"><br><br>
		
		<label>Address : </label>
		<input type="text" name="address" placeholder="address"><br><br>
		
		<label>Phone : </label>
		<input type="tel" name="phone" placeholder="phone"><br><br>
		
		<label>Product Price : </label>
		<input type="number" name="productPrice" placeholder="productPrice"><br><br>
		
		<input type="submit" value="Book Now">
		
	</form>
</body>
</html>