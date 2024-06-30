<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<script defer src="/javascript/Signup.js"></script>
<title>Forget Password</title>
</head>
<body class="bg-gray-900 text-white">
	<div
		class="min-h-screen flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900">
		<div
			class="bg-white bg-opacity-10 backdrop-blur-lg border border-gray-300 rounded-lg shadow-lg p-8 text-center max-w-md w-full">
			<h2 class="text-3xl font-bold text-blue-500 mb-4">Forgot
				Password</h2>
			<p class="text-gray-400 mb-4">Enter your email to reset your
				password</p>
			<form action="/sendOTP" method="post" class="space-y-6">
				<div>
					<label for="email" class="block text-sm font-medium">Email</label>
					<input type="email" id="email" name="email" required
						class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
				</div>
				<button type="submit"
					class="w-full py-2 px-4 bg-blue-600 hover:bg-blue-700 rounded-lg shadow-md text-white transition duration-300 ease-in-out">Submit</button>
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