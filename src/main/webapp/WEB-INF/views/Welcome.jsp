<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecom - Spring boot</title>
<link href="/css/output.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white">
	<jsp:include page="Navbar.jsp" />
	<div class="min-h-screen flex flex-col items-center justify-center">
		<!-- Header Section -->
		<header class="text-center">
			<h1 class="text-4xl font-bold mb-4">Welcome to Our E-Commerce
				Store</h1>
			<p class="text-lg mb-8">Find the best products at unbeatable
				prices!</p>
		</header>

		<!-- Main Section -->
		<main
			class="w-full max-w-4xl mx-auto p-4 bg-gray-800 rounded-lg shadow-lg glass-effect">
			<div class="flex justify-between items-center mb-6">
				<div>
					<h2 class="text-2xl font-semibold">Hello</h2>
					<p class="text-gray-400">We're glad to have you here.</p>
				</div>
				<c:choose>
					<c:when test="${not empty sessionScope.user}">
						<a href="/logout" class="text-red-500 hover:text-red-700">Logout</a>
					</c:when>
					<c:otherwise>
						<a href="/login" class="text-red-500 hover:text-red-700">Login</a>
					</c:otherwise>
				</c:choose>
			</div>
</body>
</html>