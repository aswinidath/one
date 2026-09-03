<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEasy - E-Commerce</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <div class="logo">ShopEasy</div>

    <div class="search-box">
        <input type="text" id="searchInput" placeholder="Search products...">
        <button onclick="searchProducts()">Search</button>
    </div>

    <button class="cart-btn" onclick="openCart()">
        🛒 Cart (<span id="cartCount">0</span>)
    </button>
</header>

<nav>
    <a href="#" onclick="filterProducts('All')">Home</a>
    <a href="#" onclick="filterProducts('Electronics')">Electronics</a>
    <a href="#" onclick="filterProducts('Fashion')">Fashion</a>
    <a href="#" onclick="filterProducts('Shoes')">Shoes</a>
    <a href="#" onclick="filterProducts('Beauty')">Beauty</a>
</nav>

<section class="hero">
    <div>
        <h1>Big Shopping, Better Prices!</h1>
        <p>Discover amazing products at the best prices.</p>
        <button onclick="scrollToProducts()">Shop Now</button>
    </div>
</section>

<section class="products-section" id="productsSection">
    <h2>Featured Products</h2>

    <div class="category-buttons">
        <button onclick="filterProducts('All')">All</button>
        <button onclick="filterProducts('Electronics')">Electronics</button>
        <button onclick="filterProducts('Fashion')">Fashion</button>
        <button onclick="filterProducts('Shoes')">Shoes</button>
        <button onclick="filterProducts('Beauty')">Beauty</button>
    </div>

    <div class="products" id="products"></div>
</section>

<!-- Cart -->
<div class="cart-overlay" id="cartOverlay">
    <div class="cart">
        <button class="close-btn" onclick="closeCart()">✕</button>

        <h2>Your Cart</h2>

        <div id="cartItems"></div>

        <div class="cart-total">
            <h3>Total: ₹<span id="cartTotal">0</span></h3>
            <button onclick="checkout()">Checkout</button>
        </div>
    </div>
</div>

<footer>
    <h3>ShopEasy</h3>
    <p>© 2026 ShopEasy. All Rights Reserved.</p>
</footer>

<script src="script.js"></script>

</body>
</html>
