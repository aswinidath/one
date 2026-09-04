<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bharathi Sypireddy Sugarcane Shop</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">

    <div class="logo">
        <div class="logo-symbol">🌿</div>

        <div>
            <h1>Bharathi</h1>
            <p>Sypireddy Sugarcane Shop</p>
        </div>
    </div>

    <nav>
        <a href="#home">Home</a>
        <a href="#products">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>

    <button class="cart-btn" onclick="openCart()">
        🛒 Cart
        <span id="cartCount">0</span>
    </button>

</header>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

    <div class="hero-text">

        <span class="tag">FRESH • NATURAL • REFRESHING</span>

        <h2>
            Fresh Sugarcane Juice
            <span>Made With Love</span>
        </h2>

        <p>
            Fresh sugarcane juice, chocolates, biscuits and
            refreshing drinks — all available at Bharathi
            Sypireddy Sugarcane Shop.
        </p>

        <div class="hero-buttons">

            <a href="#products" class="shop-btn">
                Shop Now →
            </a>

            <a href="#about" class="learn-btn">
                About Us
            </a>

        </div>

    </div>


    <div class="hero-visual">

        <div class="circle">

            <div class="juice-glass">
                🥤
            </div>

            <h3>Fresh Sugarcane Juice</h3>

            <p>Starting from</p>

            <strong>₹10</strong>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="categories">

    <button onclick="filterProducts('all')" class="category active">
        <span>🛍️</span>
        All
    </button>

    <button onclick="filterProducts('juice')" class="category">
        <span>🥤</span>
        Sugarcane
    </button>

    <button onclick="filterProducts('chocolate')" class="category">
        <span>🍫</span>
        Chocolates
    </button>

    <button onclick="filterProducts('biscuit')" class="category">
        <span>🍪</span>
        Biscuits
    </button>

    <button onclick="filterProducts('drink')" class="category">
        <span>🧃</span>
        Drinks
    </button>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="products" id="products">

    <div class="section-top">

        <div>
            <span class="section-tag">OUR PRODUCTS</span>

            <h2>Shop Your Favourites</h2>

            <p>
                Fresh products at affordable prices.
            </p>
        </div>

        <div class="search">

            🔍

            <input
                type="text"
                id="search"
                placeholder="Search products..."
                oninput="searchProducts()"
            >

        </div>

    </div>


    <div id="productContainer" class="product-container"></div>

</section>


<!-- ================= OFFER ================= -->

<section class="offer">

    <div>
        <span>SPECIAL OFFER</span>

        <h2>Refresh Your Day With Fresh Sugarcane Juice</h2>

        <p>
            Freshly prepared and served with care.
        </p>
    </div>

    <div class="offer-price">
        <small>Starting from</small>
        <strong>₹10</strong>
    </div>

</section>


<!-- ================= ABOUT ================= -->

<section class="about" id="about">

    <div class="about-picture">
        🌱
    </div>

    <div class="about-text">

        <span class="section-tag">ABOUT US</span>

        <h2>Freshness You Can Taste</h2>

        <p>
            Welcome to Bharathi Sypireddy Sugarcane Shop.
            We provide freshly prepared sugarcane juice along
            with chocolates, biscuits and refreshing drinks.
        </p>

        <div class="advantages">

            <div>
                <b>✓</b>
                <span>Fresh Products</span>
            </div>

            <div>
                <b>✓</b>
                <span>Affordable Prices</span>
            </div>

            <div>
                <b>✓</b>
                <span>Quality Products</span>
            </div>

            <div>
                <b>✓</b>
                <span>Fast Service</span>
            </div>

        </div>

    </div>

</section>


<!-- ================= CONTACT ================= -->

<section class="contact" id="contact">

    <div>
        <span class="section-tag">CONTACT US</span>

        <h2>Visit Bharathi Sypireddy Shop</h2>

        <p>
            Have a question or want to place an order?
            Contact us today.
        </p>
    </div>

    <div class="contact-info">

        <p>📞 <strong>Phone:</strong> +91 XXXXX XXXXX</p>

        <p>📍 <strong>Location:</strong> Your Shop Location</p>

        <p>🕐 <strong>Opening:</strong> 9:00 AM – 9:00 PM</p>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="footer-content">

        <div>
            <h2>🌿 Bharathi Sypireddy</h2>

            <p>
                Fresh sugarcane juice and tasty snacks
                for everyone.
            </p>
        </div>

        <div>
            <h3>Quick Links</h3>

            <a href="#home">Home</a>
            <a href="#products">Products</a>
            <a href="#about">About</a>
        </div>

        <div>
            <h3>Products</h3>

            <a href="#products">Sugarcane Juice</a>
            <a href="#products">Chocolates</a>
            <a href="#products">Biscuits</a>
            <a href="#products">Drinks</a>
        </div>

    </div>

    <div class="copyright">
        © 2026 Bharathi Sypireddy Sugarcane Shop. All Rights Reserved.
    </div>

</footer>


<!-- ================= CART SIDEBAR ================= -->

<div id="cartOverlay" class="cart-overlay" onclick="closeCart()"></div>

<div id="cartSidebar" class="cart-sidebar">

    <div class="cart-header">

        <h2>Shopping Cart</h2>

        <button onclick="closeCart()">✕</button>

    </div>


    <div id="cartItems" class="cart-items">

        <div class="empty">
            🛒
            <h3>Your cart is empty</h3>
            <p>Add products to your cart.</p>
        </div>

    </div>


    <div class="cart-bottom">

        <div class="total">

            <span>Total</span>

            <strong id="cartTotal">
                ₹0
            </strong>

        </div>

        <button onclick="checkout()" class="checkout">
            Checkout →
        </button>

    </div>

</div>


<!-- ================= CHECKOUT ================= -->

<div id="checkoutModal" class="modal">

    <div class="checkout-box">

        <button
            class="close-modal"
            onclick="closeCheckout()">
            ✕
        </button>

        <h2>Complete Your Order</h2>

        <p>Enter your details below.</p>

        <input
            id="name"
            type="text"
            placeholder="Full Name"
        >

        <input
            id="phone"
            type="tel"
            placeholder="Mobile Number"
        >

        <textarea
            id="address"
            placeholder="Delivery Address"
        ></textarea>

        <select id="payment">

            <option value="">
                Select Payment Method
            </option>

            <option value="Cash on Delivery">
                Cash on Delivery
            </option>

            <option value="UPI">
                UPI
            </option>

        </select>

        <button
            class="place-order"
            onclick="placeOrder()">

            Place Order

        </button>

    </div>

</div>


<script src="script.js"></script>

</body>
</html>
