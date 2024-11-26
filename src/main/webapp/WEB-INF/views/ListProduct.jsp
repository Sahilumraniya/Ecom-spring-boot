<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ecom.bean.ProductBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>All Product</title>
</head>
<body class="bg-gray-900 text-white ">
	<jsp:include page="Navbar.jsp" />
	<div class="container mx-auto mt-16">
		<h2 class="text-3xl font-bold mb-8 text-center">All Products</h2>
		<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
			<c:forEach items="${products}" var="product">
				<div class="bg-gray-800 p-6 rounded-lg shadow-md">
					<div class="flex items-center">
						<!-- Product Image -->
						<div class="flex-shrink-0">
							<img src="${product.getProductImagePath()}" alt="Product Image"
								class="w-24 h-24 object-cover rounded-md">
						</div>

						<!-- Product Details -->
						<div class="ml-4 flex-1">
							<h3 class="text-xl font-bold mb-2">${product.getProductName()}</h3>
							<p class="text-gray-400 mb-2">Category:
								${product.getCategory()}</p>
							<p class="text-lg font-semibold mb-4">₹ ${product.getPrice()}</p>

							<!-- Action Buttons -->
							<div class="flex">
								<!-- View Product Button -->
								<a href="viewProduct?productId=${product.getProductId()}"
									class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 mr-2">View
									Product</a>

								<!-- Delete Product Button (shown if user is admin) -->
								<c:if test="${sessionScope.isAdmin eq true}">
									<form action="deleteProduct" method="POST">
										<input type="hidden" name="productId"
											value="${product.getProductId()}">
										<button type="submit"
											class="bg-red-600 text-white py-2 px-4 rounded-md hover:bg-red-700">Delete
											Product</button>
									</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>


			</c:forEach>
			<!-- Repeat product card ends -->
		</div>
	</div>
</body>
</html>