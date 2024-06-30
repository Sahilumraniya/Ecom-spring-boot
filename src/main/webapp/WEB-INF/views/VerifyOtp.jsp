<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/css/output.css" rel="stylesheet">
<title>VerifyOtp</title>
</head>
<body class="bg-gray-900 text-white">
	<div
		class="min-h-screen flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900">
		<div
			class="bg-white bg-opacity-10 backdrop-blur-lg border border-gray-300 rounded-lg shadow-lg p-8 max-w-md w-full">
			<h2 class="text-3xl font-bold text-blue-500 mb-6 text-center">Update
				Password</h2>
			<form action="/update-password" method="post" class="space-y-6">
				<div>
					<label for="email" class="block text-sm font-medium">Email</label>
					<input type="email" id="email" name="email" required value="${email }" disabled="disabled"
						class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
				</div>
				<div>
					<label for="new-password" class="block text-sm font-medium">New
						Password</label> <input type="password" id="new-password"
						name="new-password" required
						class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
				</div>
				<div>
					<label for="otp" class="block text-sm font-medium">OTP</label> <input
						type="text" id="otp" name="otp" required
						class="w-full mt-1 p-2 bg-gray-700 rounded border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
				</div>
				<button type="submit"
					class="w-full py-2 px-4 bg-blue-600 hover:bg-blue-700 rounded-lg shadow-md text-white transition duration-300 ease-in-out">Update
					Password</button>
			</form>
		</div>
	</div>
</body>
</html>