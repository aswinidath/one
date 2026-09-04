<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bharathi Sypireddy | Sugarcane Shop</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- ================= HEADER ================= -->

<header class="header">

    <div class="logo-area">
        <div class="logo-icon">🌿</div>

        <div>
            <h1>Bharathi</h1>
            <span>Sypireddy Sugarcane Shop</span>
        </div>
    </div>

    <nav>
        <a href="#home">Home</a>
        <a href="#products">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>

    <button class="cart-button" onclick="openCart()">
        🛒
        <span id="cartCount">0</span>
    </button>

</header>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <span class="small-title">FRESH • NATURAL • REFRESHING</span>

        <h2>
            Fresh Sugarcane Juice
            <br>
            <span>Made Fresh For You</span>
        </h2>

        <p>
            Enjoy freshly prepared sugarcane juice along with
            your favourite chocolates, biscuits and refreshing drinks.
        </p>

        <div class="hero-buttons">
            <a href="#products" class="primary-btn">
                Shop Now →
            </a>

            <a href="#about" class="secondary-btn">
                Learn More
            </a>
        </div>

    </div>

    <div class="hero-image">
        <div class="juice-card">

            <div class="juice-icon">🥤</div>

            <h3>Fresh Sugarcane Juice</h3>

            <p>100% Fresh • Served Chilled</p>

            <strong>From ₹10</strong>

        </div>
    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="categories">

    <div class="category active" onclick="filterProducts('all')">
        <span>🛍️</span>
        <p>All Products</p>
    </div>

    <div class="category" onclick="filterProducts('juice')">
        <span>🥤</span>
        <p>Sugarcane Juice</p>
    </div>

    <div class="category" onclick="filterProducts('chocolate')">
        <span>🍫</span>
        <p>Chocolates</p>
    </div>

    <div class="category" onclick="filterProducts('biscuit')">
        <span>🍪</span>
        <p>Biscuits</p>
    </div>

    <div class="category" onclick="filterProducts('drink')">
        <span>🧃</span>
        <p>Drinks</p>
    </div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="products-section" id="products">

    <div class="section-heading">

        <div>
            <span class="section-label">OUR PRODUCTS</span>

            <h2>Shop Your Favourites</h2>

            <p>
                Fresh drinks and tasty snacks at affordable prices.
            </p>
        </div>

        <div class="search-box">
            🔍
            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                onkeyup="searchProducts()"
            >
        </div>

    </div>


    <div class="product-grid" id="productGrid">

        <!-- Products loaded by JavaScript -->

    </div>

</section>


<!-- ================= SPECIAL OFFER ================= -->

<section class="offer">

    <div>

        <span>SPECIAL OFFER</span>

        <h2>
            Refresh Yourself
            <br>
            With Fresh Sugarcane Juice
        </h2>

        <p>
            Freshly prepared whenever you order.
        </p>

    </div>

    <div class="offer-price">
        <small>Starting at</small>
        <strong>₹10</strong>
    </div>

</section>


<!-- ================= ABOUT ================= -->

<section class="about" id="about">

    <div class="about-image">
        🌱
    </div>

    <div class="about-content">

        <span class="section-label">ABOUT OUR SHOP</span>

        <h2>Freshness You Can Taste</h2>

        <p>
            Bharathi Sypireddy Sugarcane Shop brings you refreshing
            sugarcane juice and a variety of chocolates, biscuits
            and drinks.
        </p>

        <div class="features">

            <div>
                <span>✓</span>
                <p>Freshly Prepared</p>
            </div>

            <div>
                <span>✓</span>
                <p>Affordable Prices</p>
            </div>

            <div>
                <span>✓</span>
                <p>Quality Products</p>
            </div>

            <div>
                <span>✓</span>
                <p>Quick Service</p>
            </div>

        </div>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer id="contact">

    <div class="footer-main">

        <div>

            <div class="footer-logo">
                🌿 Bharathi Sypireddy
            </div>

            <p>
                Fresh sugarcane juice, drinks and snacks
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

            <h3>Contact</h3>

            <p>📞 +91 XXXXX XXXXX</p>
            <p>📍 Your Shop Location</p>

        </div>

    </div>


    <div class="copyright">

        © 2026 Bharathi Sypireddy Sugarcane Shop.
        All Rights Reserved.

    </div>

</footer>


<!-- ================= CART ================= -->

<div class="cart-overlay" id="cartOverlay" onclick="closeCart()"></div>

<aside class="cart" id="cart">

    <div class="cart-header">

        <h2>Your Cart</h2>

        <button onclick="closeCart()">✕</button>

    </div>

    <div id="cartItems" class="cart-items">

        <div class="empty-cart">
            🛒
            <h3>Your cart is empty</h3>
            <p>Add something delicious!</p>
        </div>

    </div>


    <div class="cart-footer">

        <div class="total-row">
            <span>Total</span>
            <strong id="cartTotal">₹0</strong>
        </div>

        <button class="checkout-btn" onclick="checkout()">
            Proceed to Checkout →
        </button>

    </div>

</aside>


<!-- ================= CHECKOUT MODAL ================= -->

<div class="modal-overlay" id="checkoutModal">

    <div class="checkout-modal">

        <button class="modal-close" onclick="closeCheckout()">✕</button>

        <h2>Checkout</h2>

        <p>Enter your details to place your order.</p>

        <input
            type="text"
            id="customerName"
            placeholder="Your Name"
        >

        <input
            type="tel"
            id="customerPhone"
            placeholder="Mobile Number"
        >

        <textarea
            id="customerAddress"
            placeholder="Delivery Address"
        ></textarea>

        <select id="paymentMethod">

            <option value="">Select Payment Method</option>
            <option>Cash on Delivery</option>
            <option>UPI</option>

        </select>

        <button class="place-order" onclick="placeOrder()">
            Place Order
        </button>

    </div>

</div>


<script src="script.js"></script>

</body>
</html>
