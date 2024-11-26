<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - E-Commerce App</title>
    <link href="/css/output.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-gray-100">

	<jsp:include page="Navbar.jsp" />

    <!-- Main About Section -->
    <main class="py-16 bg-gray-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center">
                <h1 class="text-4xl font-extrabold text-white">About Us</h1>
                <p class="mt-4 text-lg text-gray-300">Welcome to E-Commerce App, your one-stop shop for all things amazing!</p>
            </div>

            <!-- Company Info Section -->
            <section class="mt-12 grid grid-cols-1 md:grid-cols-2 gap-12">
                <div class="text-center md:text-left">
                    <h2 class="text-3xl font-semibold text-white">Our Mission</h2>
                    <p class="mt-4 text-gray-300">We aim to provide an unparalleled shopping experience, offering the latest products with excellent customer service. Our platform strives to make online shopping easy, fast, and convenient for everyone.</p>
                </div>
                <div class="text-center md:text-left">
                    <h2 class="text-3xl font-semibold text-white">Our Vision</h2>
                    <p class="mt-4 text-gray-300">To become the leading e-commerce platform by prioritizing customer satisfaction, fostering trust, and delivering high-quality products at affordable prices.</p>
                </div>
            </section>

            <!-- Team Section -->
            <section class="mt-16">
                <h2 class="text-3xl font-semibold text-center text-white">Meet Our Team</h2>
                <div class="mt-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                    <div class="bg-gray-700 p-6 rounded-lg shadow-lg">
                        <img src="https://via.placeholder.com/150" alt="Team Member 1" class="w-32 h-32 rounded-full mx-auto">
                        <h3 class="mt-4 text-xl font-semibold text-white">John Doe</h3>
                        <p class="mt-2 text-gray-300">CEO & Founder</p>
                    </div>
                    <div class="bg-gray-700 p-6 rounded-lg shadow-lg">
                        <img src="https://via.placeholder.com/150" alt="Team Member 2" class="w-32 h-32 rounded-full mx-auto">
                        <h3 class="mt-4 text-xl font-semibold text-white">Jane Smith</h3>
                        <p class="mt-2 text-gray-300">Chief Marketing Officer</p>
                    </div>
                    <div class="bg-gray-700 p-6 rounded-lg shadow-lg">
                        <img src="https://via.placeholder.com/150" alt="Team Member 3" class="w-32 h-32 rounded-full mx-auto">
                        <h3 class="mt-4 text-xl font-semibold text-white">Tom Brown</h3>
                        <p class="mt-2 text-gray-300">Head of Product Development</p>
                    </div>
                </div>
            </section>

            <!-- Contact Section -->
            <section class="mt-16 bg-gray-800 p-8 rounded-lg">
                <h2 class="text-3xl font-semibold text-center text-blue-400">Contact Us</h2>
                <p class="mt-4 text-center text-lg text-gray-300">Have any questions or need assistance? Reach out to us!</p>
                <div class="mt-8 text-center">
                    <p class="text-white">Email: <a href="mailto:support@ecommerceapp.com" class="text-blue-400">support@ecommerceapp.com</a></p>
                    <p class="mt-2 text-gray-200">Phone: <span class="text-blue-400">+91 1800-500-200</span></p>
                </div>
            </section>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-6">
        <div class="max-w-7xl mx-auto text-center">
            <p>&copy; 2024 E-Commerce App. All Rights Reserved.</p>
        </div>
    </footer>

</body>
</html>
