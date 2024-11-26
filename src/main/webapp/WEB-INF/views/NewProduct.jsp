<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<title>New Product</title>
</head>
<body class="bg-gray-900 flex items-center justify-center min-h-screen py-12">
	<jsp:include page="Navbar.jsp" />
    <div class="w-full max-w-2xl px-8 mt-12">
        <h2 class="text-3xl font-bold mb-8 text-white text-center">Add New Product</h2>
        <form action="saveProduct" method="post" enctype="multipart/form-data" class="space-y-8">
            <div>
                <label for="productName" class="block text-lg font-medium text-gray-300">Product Name</label>
                <input type="text" name="productName" id="productName" class="mt-2 block w-full p-4 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required />
            </div>
            <div>
                <label for="category" class="block text-lg font-medium text-gray-300">Category</label>
                <input type="text" name="category" id="category" class="mt-2 block w-full p-4 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required />
            </div>
            <div class="flex space-x-4">
                <div class="flex-1">
                    <label for="price" class="block text-lg font-medium text-gray-300">Price</label>
                    <input type="text" name="price" id="price" class="mt-2 block w-full p-4 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required />
                </div>
                <div class="flex-1">
                    <label for="qty" class="block text-lg font-medium text-gray-300">Quantity</label>
                    <input type="text" name="qty" id="qty" class="mt-2 block w-full p-4 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" required />
                </div>
            </div>
            <div>
                <label for="productImage" class="block text-lg font-medium text-gray-300">Product Image</label>
                <input type="file" name="productImage" id="productImage" class="mt-2 block w-full text-white focus:outline-none" required />
            </div>
            <div>
                <button type="submit" class="w-full bg-blue-600 text-white p-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">Add Product</button>
            </div>
        </form>
    </div>
</body>
</html>s