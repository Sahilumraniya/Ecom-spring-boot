<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="bg-gray-800 text-white p-4 fixed w-full top-0 z-10">
    <div class="container mx-auto flex justify-between items-center">
        <div>
            <a href="/" class="text-xl font-bold">Ecom App</a>
        </div>
        <ul class="flex space-x-4">
            <li>
                <a href="/" class="hover:text-gray-300">Home</a>
            </li>
            <li>
                <a href="/about" class="hover:text-gray-300">About</a>
            </li>
			<li>
			                <a href="/products" class="hover:text-gray-300">Products</a>
			            </li>
            <li>
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <a href="/logout" class="text-red-500 hover:text-red-700">Logout</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/login" class="text-red-500 hover:text-red-700">Login</a>
                    </c:otherwise>
                </c:choose>
            </li>
            <c:if test="${sessionScope.isAdmin eq true}">
                <li>
                    <a href="/newProduct" class="text-green-500 hover:text-green-700">Add Product</a>
                </li>
            </c:if>
        </ul>
    </div>
</nav>
