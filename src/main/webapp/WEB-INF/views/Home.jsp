<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<title>Home</title>
</head>
<body class="bg-gray-900 text-white">
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900">
        <div class="bg-white bg-opacity-10 backdrop-blur-lg border border-gray-300 rounded-lg shadow-lg p-8 text-center max-w-md w-full">
            <h2 class="text-3xl font-bold text-blue-500 mb-4">Welcome</h2>
            <p class="text-gray-400 mb-4">Hello, ${name}</p>
            <a href="/logout" class="inline-block px-4 py-2 bg-red-600 hover:bg-red-700 rounded-lg shadow-md text-white transition duration-300 ease-in-out">Logout</a>
        </div>
    </div>
</body>
</html>