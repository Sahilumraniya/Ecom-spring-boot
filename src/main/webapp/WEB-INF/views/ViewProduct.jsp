<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<title>View Product</title>
</head>
<body class="bg-gray-900 text-white">
	<jsp:include page="Navbar.jsp" />
    <div class="container mx-auto mt-16 px-8">
        <div class="max-w-4xl mx-auto bg-gray-800 p-8 rounded-lg shadow-md">
            <img src="${product.getProductImagePath()}" alt="Product Image" class="w-full h-64 object-cover rounded-md mb-4">
            <h2 class="text-3xl font-bold mb-4">${product.getProductName() }</h2>
            <p class="text-gray-400 mb-4">Category: ${product.getCategory() }</p>
            <p class="text-lg font-semibold mb-4">₹ ${product.getPrice()}</p>
            <p class="mb-4">Quantity: ${product.getQty()}</p>
            <p class="mb-8">Product description goes here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.</p>
            <a href="/products" class="inline-block bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700">Back to Products</a>
        </div>
    </div>
</body>
</html>