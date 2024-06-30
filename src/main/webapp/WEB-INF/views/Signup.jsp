<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<title>Signup</title>
<script defer src="/javascript/Signup.js"></script>
</head>
<body class="bg-gray-900 flex items-center justify-center h-screen">
	<div class="bg-gray-800 p-8 rounded-lg shadow-md w-full max-w-md">
		<h2 class="text-2xl font-bold mb-6 text-white text-center">Sign
			Up</h2>
		<form method="post" action="signup" class="space-y-6">
			<div>
				<label for="firstName"
					class="block text-sm font-medium text-gray-400">First Name</label>
				<input type="text" name="firstName" id="firstName"
					class="mt-1 block w-full p-2 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
					required />
			</div>
			<div>
				<span class="block text-sm font-medium text-gray-400">Gender</span>
				<div class="mt-1 flex items-center space-x-4">
					<label class="inline-flex items-center"> <input
						type="radio" name="gender" value="male"
						class="form-radio text-blue-600" required> <span
						class="ml-2 text-gray-400">Male</span>
					</label> <label class="inline-flex items-center"> <input
						type="radio" name="gender" value="female"
						class="form-radio text-blue-600" required> <span
						class="ml-2 text-gray-400">Female</span>
					</label>
				</div>
			</div>
			<div>
				<label for="email" class="block text-sm font-medium text-gray-400">Email</label>
				<input type="email" name="email" id="email"
					class="mt-1 block w-full p-2 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
					required />
			</div>
			<div>
				<label for="password"
					class="block text-sm font-medium text-gray-400">Password</label> <input
					type="password" name="password" id="password"
					class="mt-1 block w-full p-2 border border-gray-600 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
					required />
			</div>
			<div>
				<button type="submit"
					class="w-full bg-blue-600 text-white p-2 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">Sign
					Up</button>
				<p class="text-sm text-center text-white mt-6">
					Already have an account? <a href="/login"
						class="text-blue-400 hover:underline">Login here</a>
				</p>
			</div>
		</form>
	</div>
	<!-- Error Dialog -->
	<c:if test="${not empty error}">
		<div id="error-dialog"
			class="hidden fixed bottom-4 left-4 z-50 p-4 bg-red-600 text-white rounded shadow-lg max-w-sm w-full">
			<div class="flex justify-between items-center">
				<p id="error-text">${error }</p>
				<button onclick="closeDialog()" class="text-white">
					<svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
						viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
							d="M6 18L18 6M6 6l12 12" />
                </svg>
				</button>
			</div>
		</div>
	</c:if>
</body>
</html>
