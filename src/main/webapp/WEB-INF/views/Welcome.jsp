<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecom - Spring boot</title>
<link href="/css/output.css" rel="stylesheet">
</head>
<body class="bg-gray-900 text-white">
    <div class="min-h-screen flex flex-col items-center justify-center">
        <!-- Header Section -->
        <header class="text-center">
            <h1 class="text-4xl font-bold mb-4">Welcome to Our E-Commerce Store</h1>
            <p class="text-lg mb-8">Find the best products at unbeatable prices!</p>
        </header>

        <!-- Main Section -->
        <main class="w-full max-w-4xl mx-auto p-4 bg-gray-800 rounded-lg shadow-lg glass-effect">
            <div class="flex justify-between items-center mb-6">
                <div>
                    <h2 class="text-2xl font-semibold">Hello</h2>
                    <p class="text-gray-400">We're glad to have you here.</p>
                </div>
                <a href="/login" class="text-red-500 hover:text-red-700">Login</a>
            </div>

            <!-- Featured Products Section -->
            <section>
                <h3 class="text-xl font-semibold mb-4">Featured Products</h3>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="bg-gray-700 p-4 rounded-lg shadow">
                        <img src="https://images.unsplash.com/photo-1593642532973-d31b6557fa68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fHByb2R1Y3RzfGVufDB8fHx8MTYyODI4MTQ4Mg&ixlib=rb-1.2.1&q=80&w=400" alt="Product 1" class="w-full h-40 object-cover rounded mb-4">
                        <h4 class="text-lg font-semibold">Product 1</h4>
                        <p class="text-gray-400">₹50,000.00</p>
                    </div>
                    <div class="bg-gray-700 p-4 rounded-lg shadow">
                        <img src="https://images.unsplash.com/photo-1593642532973-d31b6557fa68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fHByb2R1Y3RzfGVufDB8fHx8MTYyODI4MTQ4Mg&ixlib=rb-1.2.1&q=80&w=400" alt="Product 1" class="w-full h-40 object-cover rounded mb-4">
                        <h4 class="text-lg font-semibold">Product 2</h4>
                        <p class="text-gray-400">₹64,999.00</p>
                    </div>
                    <div class="bg-gray-700 p-4 rounded-lg shadow">
                        <img src="https://images.unsplash.com/photo-1593642532973-d31b6557fa68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fHByb2R1Y3RzfGVufDB8fHx8MTYyODI4MTQ4Mg&ixlib=rb-1.2.1&q=80&w=400" alt="Product 1" class="w-full h-40 object-cover rounded mb-4">
                        <h4 class="text-lg font-semibold">Product 3</h4>
                        <p class="text-gray-400">₹98,999.00</p>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer Section -->
        <footer class="mt-8 text-center">
            <p class="text-gray-500">&copy; 2024 Our E-Commerce Store. All rights reserved.</p>
        </footer>
    </div>

    <!-- Tailwind CSS Glass Effect -->
    <style>
        .glass-effect {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
        }
    </style>
</body>
</html>