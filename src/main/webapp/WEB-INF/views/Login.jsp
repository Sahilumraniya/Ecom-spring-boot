<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<script defer src="/javascript/login.js"></script>
<title>Login</title>
</head>
<body class="bg-gray-900 text-white">
	<div class="min-h-screen flex items-center justify-center">
		<div class="bg-gray-800 p-8 rounded-lg shadow-lg w-full max-w-md">
			<form action="/authenticate" method="post" class="space-y-6">
				<h2 class="text-2xl font-bold">Login</h2>
				<div class="space-y-4">
					<div>
						<label for="email" class="block text-sm font-medium">Email</label>
						<input type="email" id="email" name="email" required
							class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
					</div>
					<div>
						<label for="password" class="block text-sm font-medium">Password</label>
						<input type="password" id="password" name="password" required
							class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
					</div>
				</div>
				<button type="submit"
					class="w-full py-2 px-4 bg-blue-600 hover:bg-blue-700 rounded-lg shadow-md text-white font-medium">Login</button>
				<p class="text-sm text-center">
					Don't have an account? <a href="/signup"
						class="text-blue-400 hover:underline">Sign up here</a>
				</p>
				<p class="text-sm text-center">
					Forget your password? <a href="/forgetpassword"
						class="text-blue-400 hover:underline">forgetpassword</a>
				</p>
			</form>
		</div>
		<!-- Error Dialog -->
		<c:if test="${not empty error}">
			<div id="error-dialog"
				class="hidden fixed bottom-4 left-4 z-50 p-4 bg-red-600 text-white rounded shadow-lg max-w-sm w-full">
				<div class="flex justify-between items-center">
					<p id="error-text">${error }</p>
					<button onclick="closeDialog()" class="text-white">
						<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6"
							fill="none" viewBox="0 0 24 24" stroke="currentColor"
							stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
								d="M6 18L18 6M6 6l12 12" />
                </svg>
					</button>
				</div>
			</div>
		</c:if>
	</div>
</body>
</html>