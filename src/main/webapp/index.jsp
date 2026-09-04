<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bharathi Sypireddy Sugarcane Shop</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- TOP BAR -->
<div class="top-bar">
    <div>Fresh • Hygienic • Affordable</div>

    <div class="top-links">
        <span>Customer Service</span>
        <span>Track Order</span>
        <span>Offers</span>
    </div>
</div>


<!-- HEADER -->
<header class="header">

    <div class="logo">
        <div class="logo-icon">
            <i class="fa-solid fa-leaf"></i>
        </div>

        <div>
            <h1>Bharathi</h1>
            <small>Sypireddy Shop</small>
        </div>
    </div>


    <div class="location">
        <i class="fa-solid fa-location-dot"></i>

        <div>
            <small>Deliver to</small>
            <strong>Select Location</strong>
        </div>
    </div>


    <div class="search-box">

        <select id="searchCategory">
            <option value="all">All</option>
            <option value="juice">Sugarcane Juice</option>
            <option value="drinks">Drinks</option>
            <option value="chocolate">Chocolates</option>
            <option value="biscuits">Biscuits</option>
            <option value="snacks">Snacks</option>
        </select>

        <input
            type="text"
            id="searchInput"
            placeholder="Search for products, drinks, chocolates and more..."
        >

        <button onclick="searchProducts()">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>

    </div>


    <div class="header-actions">

        <button class="account-btn" onclick="openLogin()">
            <i class="fa-regular fa-user"></i>
            <span>
                <small>Hello, Sign in</small>
                <strong>Account</strong>
            </span>
        </button>

        <button class="orders-btn">
            <i class="fa-solid fa-box"></i>
            <span>
                <small>Returns</small>
                <strong>& Orders</strong>
            </span>
        </button>

        <button class="cart-btn" onclick="openCart()">
            <i class="fa-solid fa-cart-shopping"></i>
            <span>Cart</span>
            <b id="cartCount">0</b>
        </button>

    </div>

</header>


<!-- NAVIGATION -->
<nav class="navigation">

    <button class="menu-btn" onclick="toggleMenu()">
        <i class="fa-solid fa-bars"></i>
        All
    </button>

    <a href="#products">Best Sellers</a>
    <a href="#juice">Sugarcane Juice</a>
    <a href="#drinks">Drinks</a>
    <a href="#chocolates">Chocolates</a>
    <a href="#biscuits">Biscuits</a>
    <a href="#offers">Today's Offers</a>

</nav>


<!-- MOBILE MENU -->
<div class="mobile-menu" id="mobileMenu">

    <a href="#products">All Products</a>
    <a href="#juice">Sugarcane Juice</a>
    <a href="#drinks">Drinks</a>
    <a href="#chocolates">Chocolates</a>
    <a href="#biscuits">Biscuits</a>
    <a href="#offers">Offers</a>

</div>


<!-- HERO -->
<section class="hero">

    <div class="hero-content">

        <div class="hero-text">

            <span class="offer-label">
                SPECIAL OFFER
            </span>

            <h2>
                Fresh Sugarcane Juice
                <br>
                Starting at just
                <strong>₹10</strong>
            </h2>

            <p>
                Freshly prepared sugarcane juice,
                refreshing drinks, chocolates,
                biscuits and snacks.
            </p>

            <button onclick="scrollToProducts()">
                Shop Now
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

        <div class="hero-image">
            <div class="juice-circle">
                <i class="fa-solid fa-glass-water"></i>
            </div>
        </div>

    </div>


    <button class="slider-button left" onclick="previousSlide()">
        <i class="fa-solid fa-chevron-left"></i>
    </button>

    <button class="slider-button right" onclick="nextSlide()">
        <i class="fa-solid fa-chevron-right"></i>
    </button>

</section>


<!-- CATEGORY SECTION -->
<section class="category-section">

    <div class="section-heading">

        <div>
            <span>SHOP BY CATEGORY</span>
            <h2>What are you looking for?</h2>
        </div>

        <button onclick="showAllProducts()">
            View All
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>


    <div class="categories">

        <div class="category-card" onclick="filterCategory('juice')">

            <div class="category-image juice-bg">
                <i class="fa-solid fa-glass-water"></i>
            </div>

            <h3>Sugarcane Juice</h3>
            <p>Fresh & Natural</p>

        </div>


        <div class="category-card" onclick="filterCategory('drinks')">

            <div class="category-image drink-bg">
                <i class="fa-solid fa-bottle-water"></i>
            </div>

            <h3>Drinks</h3>
            <p>Refreshing Drinks</p>

        </div>


        <div class="category-card" onclick="filterCategory('chocolate')">

            <div class="category-image chocolate-bg">
                <i class="fa-solid fa-cookie-bite"></i>
            </div>

            <h3>Chocolates</h3>
            <p>Sweet Treats</p>

        </div>


        <div class="category-card" onclick="filterCategory('biscuits')">

            <div class="category-image biscuit-bg">
                <i class="fa-solid fa-cookie"></i>
            </div>

            <h3>Biscuits</h3>
            <p>Crispy & Tasty</p>

        </div>


        <div class="category-card" onclick="filterCategory('snacks')">

            <div class="category-image snack-bg">
                <i class="fa-solid fa-bowl-food"></i>
            </div>

            <h3>Snacks</h3>
            <p>Quick Bites</p>

        </div>

    </div>

</section>


<!-- OFFER BANNER -->
<section class="offer-section" id="offers">

    <div class="offer-left">

        <span>LIMITED TIME OFFER</span>

        <h2>
            Refresh yourself
            <br>
            with fresh sugarcane juice
        </h2>

        <p>
            Choose your favourite size and order now.
        </p>

    </div>


    <div class="offer-prices">

        <div>
            <strong>150 ML</strong>
            <b>₹10</b>
        </div>

        <div>
            <strong>250 ML</strong>
            <b>₹20</b>
        </div>

        <div>
            <strong>500 ML</strong>
            <b>₹40</b>
        </div>

        <div>
            <strong>1 LITRE</strong>
            <b>₹70</b>
        </div>

    </div>

</section>


<!-- PRODUCTS -->
<section class="products-section" id="products">

    <div class="products-heading">

        <div>
            <span>OUR PRODUCTS</span>
            <h2>Popular Products</h2>
        </div>

        <slect id="sortProducts" onchange="sortProducts()">

            <option value="default">
                Sort: Featured
            </option>

            <option value="low">
                Price: Low to High
            </option>

            <option value="high">
                Price: High to Low
            </option>

            <option value="rating">
                Customer Rating
            </option>

        </select>

    </div>


    <div class="shop-layout">


        <!-- FILTER -->
        <aside class="filter-sidebar">

            <h3>Filter Products</h3>

            <div class="filter-group">

                <h4>Category</h4>

                <label>
                    <input type="checkbox"
                           value="juice"
                           onchange="applyFilters()">
                    Sugarcane Juice
                </label>

                <label>
                    <input type="checkbox"
                           value="drinks"
                           onchange="applyFilters()">
                    Drinks
                </label>

                <label>
                    <input type="checkbox"
                           value="chocolate"
                           onchange="applyFilters()">
                    Chocolates
                </label>

                <label>
                    <input type="checkbox"
                           value="biscuits"
                           onchange="applyFilters()">
                    Biscuits
                </label>

                <label>
                    <input type="checkbox"
                           value="snacks"
                           onchange="applyFilters()">
                    Snacks
                </label>

            </div>


            <div class="filter-group">

                <h4>Price</h4>

                <label>
                    <input type="radio"
                           name="price"
                           value="50"
                           onchange="applyFilters()">
                    Under ₹50
                </label>

                <label>
                    <input type="radio"
                           name="price"
                           value="100"
                           onchange="applyFilters()">
                    Under ₹100
                </label>

                <label>
                    <input type="radio"
                           name="price"
                           value="500"
                           onchange="applyFilters()">
                    Under ₹500
                </label>

            </div>


            <button class="clear-filter" onclick="clearFilters()">
                Clear Filters
            </button>

        </aside>


        <!-- PRODUCT GRID -->
        <div class="products-grid" id="productGrid"></div>

    </div>

</section>


<!-- FEATURES -->
<section class="features">

    <div class="feature">

        <i class="fa-solid fa-truck-fast"></i>

        <div>
            <h3>Fast Delivery</h3>
            <p>Quick delivery to your location</p>
        </div>

    </div>


    <div class="feature">

        <i class="fa-solid fa-shield-halved"></i>

        <div>
            <h3>Quality Products</h3>
            <p>Fresh and carefully selected</p>
        </div>

    </div>


    <div class="feature">

        <i class="fa-solid fa-indian-rupee-sign"></i>

        <div>
            <h3>Best Prices</h3>
            <p>Affordable prices every day</p>
        </div>

    </div>


    <div class="feature">

        <i class="fa-solid fa-headset"></i>

        <div>
            <h3>Customer Support</h3>
            <p>We're here to help</p>
        </div>

    </div>

</section>


<!-- FOOTER -->
<footer>

    <div class="footer-main">

        <div class="footer-about">

            <div class="footer-logo">
                <i class="fa-solid fa-leaf"></i>
                Bharathi Sypireddy
            </div>

            <p>
                Fresh sugarcane juice, drinks,
                chocolates, biscuits and snacks
                at affordable prices.
            </p>

        </div>


        <div>

            <h3>Get to Know Us</h3>

            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
            <a href="#">Our Shop</a>
            <a href="#">Careers</a>

        </div>


        <div>

            <h3>Customer Service</h3>

            <a href="#">Help Center</a>
            <a href="#">Track Order</a>
            <a href="#">Returns</a>
            <a href="#">Terms & Conditions</a>

        </div>


        <div>

            <h3>Connect With Us</h3>

            <div class="social-icons">

                <a href="#">
                    <i class="fa-brands fa-instagram"></i>
                </a>

                <a href="#">
                    <i class="fa-brands fa-facebook"></i>
                </a>

                <a href="#">
                    <i class="fa-brands fa-whatsapp"></i>
                </a>

            </div>

        </div>

    </div>


    <div class="footer-bottom">

        <p>
            © 2026 Bharathi Sypireddy Sugarcane Shop.
            All Rights Reserved.
        </p>

    </div>

</footer>


<!-- CART DRAWER -->
<div class="overlay" id="overlay" onclick="closeAllModals()"></div>


<div class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h2>
            Shopping Cart
            <span id="cartItemCount"></span>
        </h2>

        <button onclick="closeCart()">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems"></div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Subtotal:</span>

            <strong id="cartTotal">
                ₹0
            </strong>

        </div>

        <button class="checkout-btn" onclick="openCheckout()">
            Proceed to Checkout
        </button>

    </div>

</div>


<!-- PRODUCT MODAL -->
<div class="modal" id="productModal">

    <button class="modal-close" onclick="closeProductModal()">
        <i class="fa-solid fa-xmark"></i>
    </button>

    <div id="productDetails"></div>

</div>


<!-- LOGIN -->
<div class="modal small-modal" id="loginModal">

    <button class="modal-close" onclick="closeLogin()">
        <i class="fa-solid fa-xmark"></i>
    </button>

    <h2>Sign in</h2>

    <p class="modal-subtitle">
        Sign in to manage your orders
    </p>

    <label>Mobile Number</label>

    <input
        type="tel"
        id="loginMobile"
        placeholder="Enter mobile number"
    >

    <button class="primary-btn" onclick="login()">
        Continue
    </button>

    <p class="terms">
        By continuing, you agree to our
        Terms & Conditions.
    </p>

</div>


<!-- CHECKOUT -->
<div class="modal checkout-modal" id="checkoutModal">

    <button class="modal-close" onclick="closeCheckout()">
        <i class="fa-solid fa-xmark"></i>
    </button>

    <h2>Checkout</h2>

    <div class="checkout-layout">

        <div>

            <h3>Delivery Address</h3>

            <input
                type="text"
                id="customerName"
                placeholder="Full Name"
            >

            <input
                type="tel"
                id="customerPhone"
                placeholder="Mobile Number"
            >

            <textarea
                id="customerAddress"
                placeholder="Complete Delivery Address"
            ></textarea>


            <h3>Payment Method</h3>

            <label class="payment-option">

                <input
                    type="radio"
                    name="payment"
                    value="cod"
                    checked
                >

                Cash on Delivery

            </label>


            <label class="payment-option">

                <input
                    type="radio"
                    name="payment"
                    value="upi"
                >

                UPI / Online Payment

            </label>

        </div>


        <div class="order-summary">

            <h3>Order Summary</h3>

            <div id="checkoutItems"></div>

            <hr>

            <div class="summary-total">

                <span>Total</span>

                <strong id="checkoutTotal">
                    ₹0
                </strong>

            </div>

            <button
                class="primary-btn"
                onclick="placeOrder()"
            >
                Place Order
            </button>

        </div>

    </div>

</div>


<!-- TOAST -->
<div class="toast" id="toast">
    <i class="fa-solid fa-circle-check"></i>
    <span id="toastMessage">Added to cart</span>
</div>


<script src="script.js"></script>

</body>
</html>
