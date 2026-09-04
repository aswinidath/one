/* =========================================
   BHARATHI SYPIREDDY SHOP
   AMAZON / FLIPKART STYLE FRONTEND
========================================= */


/* PRODUCTS */

const products = [

    {
        id: 1,
        name: "Fresh Sugarcane Juice - 150 ml",
        category: "juice",
        price: 10,
        oldPrice: 15,
        rating: 4.8,
        reviews: 124,
        image:
        "https://images.unsplash.com/photo-1546173159-315724a31696?auto=format&fit=crop&w=700&q=80",
        description:
        "Freshly prepared sugarcane juice. Perfect refreshing drink for a quick break."
    },

    {
        id: 2,
        name: "Fresh Sugarcane Juice - 250 ml",
        category: "juice",
        price: 20,
        oldPrice: 25,
        rating: 4.9,
        reviews: 198,
        image:
        "https://images.unsplash.com/photo-1546173159-315724a31696?auto=format&fit=crop&w=700&q=80",
        description:
        "Refreshing 250 ml sugarcane juice prepared fresh for every order."
    },

    {
        id: 3,
        name: "Fresh Sugarcane Juice Bottle - 500 ml",
        category: "juice",
        price: 40,
        oldPrice: 50,
        rating: 4.9,
        reviews: 245,
        image:
        "https://images.unsplash.com/photo-1546173159-315724a31696?auto=format&fit=crop&w=700&q=80",
        description:
        "500 ml bottle of refreshing sugarcane juice."
    },

    {
        id: 4,
        name: "Fresh Sugarcane Juice Bottle - 1 Litre",
        category: "juice",
        price: 70,
        oldPrice: 90,
        rating: 5.0,
        reviews: 312,
        image:
        "https://images.unsplash.com/photo-1546173159-315724a31696?auto=format&fit=crop&w=700&q=80",
        description:
        "1 litre fresh sugarcane juice bottle. Great for sharing."
    },

    {
        id: 5,
        name: "Refreshing Fruit Drink",
        category: "drinks",
        price: 30,
        oldPrice: 40,
        rating: 4.5,
        reviews: 82,
        image:
        "https://images.unsplash.com/photo-1629203851122-3726ecdf080e?auto=format&fit=crop&w=700&q=80",
        description:
        "A refreshing chilled drink for your everyday break."
    },

    {
        id: 6,
        name: "Premium Chocolate Bar",
        category: "chocolate",
        price: 50,
        oldPrice: 60,
        rating: 4.7,
        reviews: 145,
        image:
        "https://images.unsplash.com/photo-1575377427642-087cf684f04d?auto=format&fit=crop&w=700&q=80",
        description:
        "Delicious chocolate treat for chocolate lovers."
    },

    {
        id: 7,
        name: "Chocolate Cream Biscuits",
        category: "biscuits",
        price: 30,
        oldPrice: 35,
        rating: 4.6,
        reviews: 109,
        image:
        "https://images.unsplash.com/photo-1558961363-fa8fdf82db35?auto=format&fit=crop&w=700&q=80",
        description:
        "Crispy biscuits with delicious cream filling."
    },

    {
        id: 8,
        name: "Crunchy Snack Pack",
        category: "snacks",
        price: 40,
        oldPrice: 50,
        rating: 4.5,
        reviews: 76,
        image:
        "https://images.unsplash.com/photo-1621939514649-280e2aa6b9d9?auto=format&fit=crop&w=700&q=80",
        description:
        "Crunchy and tasty snack pack for quick bites."
    },

    {
        id: 9,
        name: "Cold Refreshing Drink",
        category: "drinks",
        price: 40,
        oldPrice: 50,
        rating: 4.6,
        reviews: 65,
        image:
        "https://images.unsplash.com/photo-1544145945-f90425340c7e?auto=format&fit=crop&w=700&q=80",
        description:
        "Chilled refreshing drink."
    },

    {
        id: 10,
        name: "Classic Biscuits Pack",
        category: "biscuits",
        price: 25,
        oldPrice: 30,
        rating: 4.5,
        reviews: 88,
        image:
        "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?auto=format&fit=crop&w=700&q=80",
        description:
        "Crispy classic biscuits perfect with tea or coffee."
    },

    {
        id: 11,
        name: "Milk Chocolate",
        category: "chocolate",
        price: 60,
        oldPrice: 70,
        rating: 4.8,
        reviews: 121,
        image:
        "https://images.unsplash.com/photo-1606312619070-d48b4c652a52?auto=format&fit=crop&w=700&q=80",
        description:
        "Smooth and delicious milk chocolate."
    },

    {
        id: 12,
        name: "Mixed Snacks Pack",
        category: "snacks",
        price: 80,
        oldPrice: 100,
        rating: 4.7,
        reviews: 91,
        image:
        "https://images.unsplash.com/photo-1599599810769-bcde5a160d32?auto=format&fit=crop&w=700&q=80",
        description:
        "A tasty assortment of snacks."
    }

];


/* STATE */

let cart = JSON.parse(localStorage.getItem("bharathiCart")) || [];

let filteredProducts = [...products];


/* START */

document.addEventListener("DOMContentLoaded", () => {

    renderProducts();

    updateCart();

    setupSearch();

});


/* RENDER PRODUCTS */

function renderProducts(list = filteredProducts) {

    const grid = document.getElementById("productGrid");

    if (!list.length) {

        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                background:white;
                padding:60px;
                text-align:center;
                border-radius:10px;
            ">

                <i class="fa-solid fa-box-open"
                   style="font-size:45px;color:#ccc">
                </i>

                <h2 style="margin-top:15px">
                    No products found
                </h2>

                <p style="color:#777;margin-top:8px">
                    Try another search or category.
                </p>

            </div>
        `;

        return;
    }


    grid.innerHTML = list.map(product => `

        <article class="product-card">

            <div class="product-image">

                <span class="discount">
                    ${discount(product)}% OFF
                </span>

                <button
                    class="wishlist"
                    onclick="toggleWishlist(${product.id})"
                >
                    <i class="fa-regular fa-heart"></i>
                </button>

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy"
                >

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${categoryName(product.category)}
                </div>

                <h3 class="product-name">
                    ${product.name}
                </h3>


                <div class="rating">

                    <span class="rating-box">
                        ${product.rating} ★
                    </span>

                    <span class="review-count">
                        ${product.reviews} ratings
                    </span>

                </div>


                <div class="price-row">

                    <div>

                        <span class="price">
                            ₹${product.price}
                        </span>

                        <span class="old-price">
                            ₹${product.oldPrice}
                        </span>

                    </div>

                </div>


                <button
                    class="add-btn"
                    onclick="addToCart(${product.id})"
                >
                    <i class="fa-solid fa-cart-plus"></i>
                    Add to Cart
                </button>


                <button
                    onclick="openProduct(${product.id})"
                    style="
                        width:100%;
                        border:none;
                        background:transparent;
                        color:#087f3e;
                        margin-top:10px;
                        font-size:12px;
                    "
                >
                    View Product
                </button>

            </div>

        </article>

    `).join("");
}


/* CATEGORY NAME */

function categoryName(category) {

    const names = {

        juice: "Sugarcane Juice",
        drinks: "Drinks",
        chocolate: "Chocolates",
        biscuits: "Biscuits",
        snacks: "Snacks"

    };

    return names[category] || category;
}


/* DISCOUNT */

function discount(product) {

    return Math.round(
        ((product.oldPrice - product.price) /
        product.oldPrice) * 100
    );

}


/* ADD TO CART */

function addToCart(id, quantity = 1) {

    const product = products.find(
        product => product.id === id
    );

    if (!product) return;


    const existing = cart.find(
        item => item.id === id
    );


    if (existing) {

        existing.quantity += quantity;

    } else {

        cart.push({
            ...product,
            quantity
        });

    }


    saveCart();

    updateCart();

    showToast(
        `${product.name} added to cart`
    );

}


/* SAVE CART */

function saveCart() {

    localStorage.setItem(
        "bharathiCart",
        JSON.stringify(cart)
    );

}


/* UPDATE CART */

function updateCart() {

    const count = cart.reduce(
        (total, item) => total + item.quantity,
        0
    );


    const total = cart.reduce(
        (sum, item) =>
        sum + item.price * item.quantity,
        0
    );


    document.getElementById("cartCount").textContent =
        count;

    document.getElementById("cartItemCount").textContent =
        count ? `(${count})` : "";


    document.getElementById("cartTotal").textContent =
        `₹${total}`;


    renderCart();

}


/* RENDER CART */

function renderCart() {

    const container =
        document.getElementById("cartItems");


    if (!cart.length) {

        container.innerHTML = `

            <div class="empty-cart">

                <i class="fa-solid fa-cart-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>
                    Add some products to get started.
                </p>

            </div>

        `;

        return;
    }


    container.innerHTML = cart.map(item => `

        <div class="cart-item">

            <img
                src="${item.image}"
                alt="${item.name}"
            >

            <div class="cart-item-info">

                <h4>${item.name}</h4>

                <div class="cart-price">
                    ₹${item.price}
                </div>


                <div class="quantity">

                    <button
                        onclick="changeQuantity(${item.id}, -1)"
                    >
                        −
                    </button>

                    <strong>
                        ${item.quantity}
                    </strong>

                    <button
                        onclick="changeQuantity(${item.id}, 1)"
                    >
                        +
                    </button>

                    <button
                        class="remove-item"
                        onclick="removeFromCart(${item.id})"
                    >
                        Remove
                    </button>

                </div>

            </div>

        </div>

    `).join("");

}


/* CHANGE QUANTITY */

function changeQuantity(id, change) {

    const item = cart.find(
        product => product.id === id
    );

    if (!item) return;


    item.quantity += change;


    if (item.quantity <= 0) {

        cart = cart.filter(
            product => product.id !== id
        );

    }


    saveCart();

    updateCart();

}


/* REMOVE */

function removeFromCart(id) {

    cart = cart.filter(
        product => product.id !== id
    );

    saveCart();

    updateCart();

    showToast("Product removed from cart");

}


/* OPEN CART */

function openCart() {

    document.getElementById("cartDrawer")
        .classList.add("active");

    document.getElementById("overlay")
        .classList.add("active");

}


/* CLOSE CART */

function closeCart() {

    document.getElementById("cartDrawer")
        .classList.remove("active");

    document.getElementById("overlay")
        .classList.remove("active");

}


/* PRODUCT DETAILS */

function openProduct(id) {

    const product = products.find(
        item => item.id === id
    );

    if (!product) return;


    document.getElementById("productDetails").innerHTML = `

        <div class="product-detail">

            <div class="detail-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                >

            </div>


            <div class="detail-info">

                <div class="product-category">
                    ${categoryName(product.category)}
                </div>

                <h2>${product.name}</h2>


                <div class="detail-rating">
                    ${product.rating} ★
                    &nbsp;
                    ${product.reviews} ratings
                </div>


                <div class="detail-price">
                    ₹${product.price}
                </div>


                <p class="detail-description">
                    ${product.description}
                </p>


                <div class="detail-actions">

                    <button
                        onclick="addToCart(${product.id})"
                    >
                        <i class="fa-solid fa-cart-plus"></i>
                        Add to Cart
                    </button>

                    <button
                        class="buy-now"
                        onclick="buyNow(${product.id})"
                    >
                        Buy Now
                    </button>

                </div>

            </div>

        </div>

    `;


    document.getElementById("productModal")
        .classList.add("active");

    document.getElementById("overlay")
        .classList.add("active");

}


/* CLOSE PRODUCT */

function closeProductModal() {

    document.getElementById("productModal")
        .classList.remove("active");

    document.getElementById("overlay")
        .classList.remove("active");

}


/* BUY NOW */

function buyNow(id) {

    addToCart(id);

    closeProductModal();

    setTimeout(() => {

        openCheckout();

    }, 250);

}


/* SEARCH */

function setupSearch() {

    const input =
        document.getElementById("searchInput");

    input.addEventListener(
        "keyup",
        event => {

            if (event.key === "Enter") {

                searchProducts();

            }

        }
    );

}


function searchProducts() {

    const query =
        document.getElementById("searchInput")
        .value
        .toLowerCase()
        .trim();


    const category =
        document.getElementById("searchCategory")
        .value;


    filteredProducts = products.filter(product => {

        const matchesText =
            product.name
            .toLowerCase()
            .includes(query);


        const matchesCategory =
            category === "all" ||
            product.category === category;


        return matchesText && matchesCategory;

    });


    renderProducts();

    document.getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* CATEGORY FILTER */

function filterCategory(category) {

    filteredProducts =
        products.filter(
            product => product.category === category
        );


    renderProducts();

    document.getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* SHOW ALL */

function showAllProducts() {

    filteredProducts = [...products];

    document.getElementById("searchInput")
        .value = "";

    document.getElementById("searchCategory")
        .value = "all";

    renderProducts();

}


/* SORT */

function sortProducts() {

    const value =
        document.getElementById("sortProducts")
        .value;


    if (value === "low") {

        filteredProducts.sort(
            (a, b) => a.price - b.price
        );

    }


    if (value === "high") {

        filteredProducts.sort(
            (a, b) => b.price - a.price
        );

    }


    if (value === "rating") {

        filteredProducts.sort(
            (a, b) => b.rating - a.rating
        );

    }


    renderProducts();

}


/* FILTER */

function applyFilters() {

    const categories =
        [...document.querySelectorAll(
            '.filter-group input[type="checkbox"]:checked'
        )]
        .map(input => input.value);


    const price =
        document.querySelector(
            'input[name="price"]:checked'
        );


    filteredProducts = products.filter(product => {

        let categoryMatch =
            categories.length === 0 ||
            categories.includes(product.category);


        let priceMatch =
            !price ||
            product.price <= Number(price.value);


        return categoryMatch && priceMatch;

    });


    renderProducts();

}


/* CLEAR FILTER */

function clearFilters() {

    document.querySelectorAll(
        '.filter-sidebar input'
    ).forEach(input => {

        input.checked = false;

    });


    showAllProducts();

}


/* WISHLIST */

function toggleWishlist(id) {

    const button =
        event.currentTarget;


    button.classList.toggle("active");


    const icon =
        button.querySelector("i");


    if (button.classList.contains("active")) {

        icon.classList.remove("fa-regular");

        icon.classList.add("fa-solid");

        button.style.color = "#e63946";

        showToast("Added to wishlist");

    } else {

        icon.classList.remove("fa-solid");

        icon.classList.add("fa-regular");

        button.style.color = "#777";

        showToast("Removed from wishlist");

    }

}


/* LOGIN */

function openLogin() {

    document.getElementById("loginModal")
        .classList.add("active");

    document.getElementById("overlay")
        .classList.add("active");

}


function closeLogin() {

    document.getElementById("loginModal")
        .classList.remove("active");

    document.getElementById("overlay")
        .classList.remove("active");

}


function login() {

    const mobile =
        document.getElementById("loginMobile")
        .value.trim();


    if (mobile.length < 10) {

        showToast(
            "Please enter a valid mobile number"
        );

        return;

    }


    closeLogin();

    showToast(
        "Demo login successful"
    );

}


/* CHECKOUT */

function openCheckout() {

    if (!cart.length) {

        showToast("Your cart is empty");

        return;

    }


    closeCart();

    renderCheckout();


    document.getElementById("checkoutModal")
        .classList.add("active");

    document.getElementById("overlay")
        .classList.add("active");

}


function closeCheckout() {

    document.getElementById("checkoutModal")
        .classList.remove("active");

    document.getElementById("overlay")
        .classList.remove("active");

}


/* CHECKOUT ITEMS */

function renderCheckout() {

    const container =
        document.getElementById("checkoutItems");


    container.innerHTML = cart.map(item => `

        <div class="summary-item">

            <span>
                ${item.name}
                × ${item.quantity}
            </span>

            <strong>
                ₹${item.price * item.quantity}
            </strong>

        </div>

    `).join("");


    const total =
        cart.reduce(
            (sum, item) =>
            sum + item.price * item.quantity,
            0
        );


    document.getElementById("checkoutTotal")
        .textContent = `₹${total}`;

}


/* PLACE ORDER */

function placeOrder() {

    const name =
        document.getElementById("customerName")
        .value.trim();

    const phone =
        document.getElementById("customerPhone")
        .value.trim();

    const address =
        document.getElementById("customerAddress")
        .value.trim();


    if (!name || !phone || !address) {

        showToast(
            "Please fill all delivery details"
        );

        return;

    }


    if (phone.length < 10) {

        showToast(
            "Enter a valid mobile number"
        );

        return;

    }


    const orderId =
        "BS" +
        Math.floor(
            100000 + Math.random() * 900000
        );


    cart = [];

    saveCart();

    updateCart();

    closeCheckout();


    setTimeout(() => {

        alert(
            "Order placed successfully!\n\n" +
            "Order ID: " + orderId +
            "\n\nThank you for shopping with Bharathi Sypireddy Shop."
        );

    }, 200);

}


/* SCROLL */

function scrollToProducts() {

    document.getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* MOBILE MENU */

function toggleMenu() {

    const menu =
        document.getElementById("mobileMenu");

    menu.style.display =
        menu.style.display === "block"
        ? "none"
        : "block";

}


/* CLOSE EVERYTHING */

function closeAllModals() {

    closeCart();

    closeProductModal();

    closeLogin();

    closeCheckout();

}


/* TOAST */

function showToast(message) {

    const toast =
        document.getElementById("toast");

    document.getElementById("toastMessage")
        .textContent = message;


    toast.classList.add("active");


    setTimeout(() => {

        toast.classList.remove("active");

    }, 2500);

}


/* HERO SLIDER */

let slide = 0;


const heroMessages = [

    {
        title: "Fresh Sugarcane Juice Starting at ₹10",
        text: "Freshly prepared sugarcane juice, refreshing drinks, chocolates, biscuits and snacks."
    },

    {
        title: "250 ml Fresh Juice Only ₹20",
        text: "Order your favourite refreshing sugarcane juice today."
    },

    {
        title: "1 Litre Sugarcane Juice Only ₹70",
        text: "Perfect for sharing with friends and family."
    }

];


function updateHero() {

    const content =
        heroMessages[slide];


    document.querySelector(".hero h2")
        .innerHTML =
        content.title;


    document.querySelector(".hero p")
        .textContent =
        content.text;

}


function nextSlide() {

    slide++;

    if (slide >= heroMessages.length) {

        slide = 0;

    }

    updateHero();

}


function previousSlide() {

    slide--;

    if (slide < 0) {

        slide = heroMessages.length - 1;

    }

    updateHero();

}


/* AUTOMATIC SLIDER */

setInterval(
    nextSlide,
    5000
);
