```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopKart - Online Shopping</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f3f3f3;
    color:#111;
}

/* HEADER */
.header{
    background:#131921;
    color:white;
    display:flex;
    align-items:center;
    gap:18px;
    padding:10px 20px;
    position:sticky;
    top:0;
    z-index:1000;
}

.logo{
    font-size:27px;
    font-weight:bold;
    color:#ff9900;
    cursor:pointer;
    white-space:nowrap;
}

.location{
    font-size:12px;
    white-space:nowrap;
}

.location b{
    display:block;
    font-size:14px;
}

.search{
    display:flex;
    flex:1;
    height:42px;
}

.search select{
    width:65px;
    border:0;
    background:#eee;
}

.search input{
    flex:1;
    border:0;
    padding:0 15px;
    font-size:15px;
    outline:none;
}

.search button{
    width:55px;
    border:0;
    background:#ff9900;
    font-size:20px;
    cursor:pointer;
}

.header-link{
    font-size:12px;
    white-space:nowrap;
}

.header-link b{
    display:block;
    font-size:15px;
}

.cart{
    font-size:16px;
    cursor:pointer;
    position:relative;
    white-space:nowrap;
}

.cart span{
    position:absolute;
    top:-12px;
    left:15px;
    background:#ff9900;
    color:#111;
    border-radius:50%;
    padding:2px 7px;
    font-weight:bold;
}

/* NAVIGATION */
.nav{
    background:#232f3e;
    color:white;
    padding:12px 20px;
    display:flex;
    gap:25px;
    overflow:auto;
}

.nav a{
    color:white;
    text-decoration:none;
    white-space:nowrap;
    cursor:pointer;
}

/* HERO */
.hero{
    height:330px;
    background:
    linear-gradient(90deg,rgba(0,0,0,.7),rgba(0,0,0,.05)),
    url("https://images.unsplash.com/photo-1607082349566-187342175e2f?auto=format&fit=crop&w=1600&q=80");
    background-size:cover;
    background-position:center;
    display:flex;
    align-items:center;
    padding:40px;
    color:white;
}

.hero-content{
    max-width:500px;
}

.hero h1{
    font-size:42px;
    margin-bottom:15px;
}

.hero p{
    font-size:18px;
    margin-bottom:20px;
}

.hero button{
    padding:13px 25px;
    background:#ff9900;
    border:0;
    font-weight:bold;
    cursor:pointer;
}

/* CATEGORIES */
.section{
    padding:25px;
}

.section-title{
    font-size:25px;
    margin-bottom:18px;
}

.categories{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
    gap:15px;
}

.category{
    background:white;
    padding:20px;
    text-align:center;
    cursor:pointer;
    transition:.2s;
    border-radius:5px;
}

.category:hover{
    transform:translateY(-5px);
    box-shadow:0 5px 15px #bbb;
}

.category img{
    width:100%;
    height:120px;
    object-fit:contain;
}

.category h3{
    margin-top:10px;
}

/* PRODUCTS */
.products{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:18px;
}

.product{
    background:white;
    padding:15px;
    border-radius:5px;
    position:relative;
    transition:.2s;
}

.product:hover{
    box-shadow:0 5px 20px #bbb;
}

.product img{
    width:100%;
    height:220px;
    object-fit:contain;
}

.product h3{
    font-size:17px;
    margin:10px 0;
    min-height:40px;
}

.rating{
    color:#f5a623;
    margin-bottom:7px;
}

.price{
    font-size:23px;
    font-weight:bold;
}

.mrp{
    color:#777;
    text-decoration:line-through;
    margin-left:8px;
    font-size:14px;
}

.discount{
    color:#007600;
    font-size:14px;
    margin:6px 0;
}

.add{
    width:100%;
    padding:11px;
    border:0;
    border-radius:20px;
    background:#ffd814;
    cursor:pointer;
    font-weight:bold;
    margin-top:8px;
}

.buy{
    width:100%;
    padding:11px;
    border:0;
    border-radius:20px;
    background:#ffa41c;
    cursor:pointer;
    font-weight:bold;
    margin-top:8px;
}

.wishlist{
    position:absolute;
    right:15px;
    top:15px;
    font-size:22px;
    cursor:pointer;
}

/* CART */
.cart-panel{
    position:fixed;
    right:-420px;
    top:0;
    width:400px;
    max-width:100%;
    height:100%;
    background:white;
    z-index:2000;
    box-shadow:-5px 0 20px #777;
    padding:20px;
    transition:.3s;
    overflow:auto;
}

.cart-panel.active{
    right:0;
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    border-bottom:1px solid #ddd;
    padding-bottom:15px;
}

.close{
    font-size:28px;
    cursor:pointer;
}

.cart-item{
    display:flex;
    gap:10px;
    padding:15px 0;
    border-bottom:1px solid #ddd;
}

.cart-item img{
    width:80px;
    height:80px;
    object-fit:contain;
}

.cart-item-info{
    flex:1;
}

.quantity{
    display:flex;
    gap:10px;
    align-items:center;
    margin-top:8px;
}

.quantity button{
    width:25px;
    height:25px;
    cursor:pointer;
}

.total{
    font-size:22px;
    font-weight:bold;
    margin:20px 0;
}

.checkout{
    width:100%;
    padding:14px;
    border:0;
    background:#ff9900;
    font-size:17px;
    font-weight:bold;
    cursor:pointer;
}

/* FOOTER */
footer{
    background:#131921;
    color:white;
    margin-top:30px;
    padding:40px 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
    gap:30px;
}

footer h3{
    margin-bottom:15px;
}

footer p{
    color:#ddd;
    margin:8px 0;
}

/* MOBILE */
@media(max-width:700px){

    .header{
        flex-wrap:wrap;
        gap:10px;
    }

    .logo{
        font-size:22px;
    }

    .location,
    .header-link{
        display:none;
    }

    .search{
        order:3;
        flex-basis:100%;
    }

    .hero{
        height:280px;
        padding:25px;
    }

    .hero h1{
        font-size:30px;
    }

    .section{
        padding:15px;
    }

    .cart-panel{
        width:100%;
    }
}
</style>
</head>

<body>

<!-- HEADER -->
<header class="header">

    <div class="logo" onclick="location.reload()">
        ShopKart
    </div>

    <div class="location">
        Deliver to
        <b>📍 India</b>
    </div>

    <div class="search">
        <select>
            <option>All</option>
            <option>Electronics</option>
            <option>Fashion</option>
            <option>Home</option>
        </select>

        <input
            type="text"
            id="searchInput"
            placeholder="Search products..."
            onkeyup="searchProducts()"
        >

        <button onclick="searchProducts()">🔍</button>
    </div>

    <div class="header-link">
        Hello, Sign in
        <b>Account & Lists</b>
    </div>

    <div class="header-link">
        Returns
        <b>& Orders</b>
    </div>

    <div class="cart" onclick="openCart()">
        🛒 Cart
        <span id="cartCount">0</span>
    </div>

</header>

<!-- NAV -->
<nav class="nav">
    <a onclick="filterProducts('all')">☰ All</a>
    <a onclick="filterProducts('electronics')">Electronics</a>
    <a onclick="filterProducts('fashion')">Fashion</a>
    <a onclick="filterProducts('home')">Home & Kitchen</a>
    <a onclick="filterProducts('beauty')">Beauty</a>
    <a onclick="filterProducts('sports')">Sports</a>
    <a>Today's Deals</a>
    <a>Customer Service</a>
</nav>

<!-- HERO -->
<section class="hero">
    <div class="hero-content">
        <h1>Everything You Love. All in One Place.</h1>
        <p>Discover amazing products at incredible prices.</p>
        <button onclick="document.getElementById('products').scrollIntoView()">
            Shop Now →
        </button>
    </div>
</section>

<!-- CATEGORIES -->
<section class="section">

    <h2 class="section-title">Shop by Category</h2>

    <div class="categories">

        <div class="category" onclick="filterProducts('electronics')">
            <img src="https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=500&q=80">
            <h3>Electronics</h3>
        </div>

        <div class="category" onclick="filterProducts('fashion')">
            <img src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=500&q=80">
            <h3>Fashion</h3>
        </div>

        <div class="category" onclick="filterProducts('home')">
            <img src="https://images.unsplash.com/photo-1556911220-e15b29be8c8f?auto=format&fit=crop&w=500&q=80">
            <h3>Home & Kitchen</h3>
        </div>

        <div class="category" onclick="filterProducts('beauty')">
            <img src="https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=500&q=80">
            <h3>Beauty</h3>
        </div>

        <div class="category" onclick="filterProducts('sports')">
            <img src="https://images.unsplash.com/photo-1461896836934-ffe607ba8211?auto=format&fit=crop&w=500&q=80">
            <h3>Sports</h3>
        </div>

    </div>

</section>

<!-- PRODUCTS -->
<section class="section" id="products">

    <h2 class="section-title">Featured Products</h2>

    <div class="products" id="productContainer"></div>

</section>

<!-- CART -->
<div class="cart-panel" id="cartPanel">

    <div class="cart-header">
        <h2>Shopping Cart</h2>
        <span class="close" onclick="closeCart()">×</span>
    </div>

    <div id="cartItems"></div>

    <div class="total">
        Total: ₹<span id="cartTotal">0</span>
    </div>

    <button class="checkout" onclick="checkout()">
        Proceed to Checkout
    </button>

</div>

<!-- FOOTER -->
<footer>

    <div class="footer-grid">

        <div>
            <h3>Get to Know Us</h3>
            <p>About ShopKart</p>
            <p>Careers</p>
            <p>Our Technology</p>
        </div>

        <div>
            <h3>Make Money With Us</h3>
            <p>Sell on ShopKart</p>
            <p>Become an Affiliate</p>
            <p>Advertise Products</p>
        </div>

        <div>
            <h3>Customer Support</h3>
            <p>Your Account</p>
            <p>Returns & Refunds</p>
            <p>Help Center</p>
        </div>

        <div>
            <h3>Connect With Us</h3>
            <p>Facebook</p>
            <p>Instagram</p>
            <p>YouTube</p>
        </div>

    </div>

    <br>
    <hr>
    <br>

    <center>
        © 2026 ShopKart. All Rights Reserved.
    </center>

</footer>

<script>

const products = [

{
id:1,
name:"Wireless Bluetooth Headphones",
category:"electronics",
price:1499,
mrp:2999,
rating:4.5,
image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
},

{
id:2,
name:"Smart Watch Series 9",
category:"electronics",
price:2499,
mrp:4999,
rating:4.4,
image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80"
},

{
id:3,
name:"Premium Running Shoes",
category:"fashion",
price:1799,
mrp:3499,
rating:4.6,
image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80"
},

{
id:4,
name:"Classic Men's Watch",
category:"fashion",
price:1999,
mrp:3999,
rating:4.3,
image:"https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80"
},

{
id:5,
name:"Modern Coffee Maker",
category:"home",
price:2299,
mrp:4299,
rating:4.5,
image:"https://images.unsplash.com/photo-1517668808822-9ebb02f2a0e6?auto=format&fit=crop&w=600&q=80"
},

{
id:6,
name:"Ceramic Dinner Set",
category:"home",
price:1299,
mrp:2499,
rating:4.2,
image:"https://images.unsplash.com/photo-1603199506016-b9a594b593c0?auto=format&fit=crop&w=600&q=80"
},

{
id:7,
name:"Vitamin C Face Serum",
category:"beauty",
price:699,
mrp:999,
rating:4.6,
image:"https://images.unsplash.com/photo-1620916566398-39f1143ab7be?auto=format&fit=crop&w=600&q=80"
},

{
id:8,
name:"Professional Makeup Kit",
category:"beauty",
price:1199,
mrp:1999,
rating:4.4,
image:"https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=600&q=80"
},

{
id:9,
name:"Football Training Ball",
category:"sports",
price:599,
mrp:999,
rating:4.5,
image:"https://images.unsplash.com/photo-1579952363873-27f3bade9f55?auto=format&fit=crop&w=600&q=80"
},

{
id:10,
name:"Fitness Dumbbell Set",
category:"sports",
price:1599,
mrp:2499,
rating:4.7,
image:"https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=600&q=80"
}

];

let cart = JSON.parse(localStorage.getItem("shopkartCart")) || [];

function displayProducts(list = products){

    const container = document.getElementById("productContainer");

    container.innerHTML = "";

    list.forEach(product => {

        const discount =
        Math.round(((product.mrp-product.price)/product.mrp)*100);

        container.innerHTML += `

        <div class="product">

            <div class="wishlist" onclick="wishlist(this)">
                ♡
            </div>

            <img src="${product.image}">

            <h3>${product.name}</h3>

            <div class="rating">
                ⭐ ${product.rating}
            </div>

            <div>
                <span class="price">
                    ₹${product.price}
                </span>

                <span class="mrp">
                    ₹${product.mrp}
                </span>
            </div>

            <div class="discount">
                ${discount}% off
            </div>

            <button class="add"
                onclick="addToCart(${product.id})">
                Add to Cart
            </button>

            <button class="buy"
                onclick="buyNow(${product.id})">
                Buy Now
            </button>

        </div>

        `;

    });

}

function addToCart(id){

    const product = products.find(p => p.id === id);

    const existing = cart.find(p => p.id === id);

    if(existing){
        existing.quantity++;
    }else{
        cart.push({
            ...product,
            quantity:1
        });
    }

    saveCart();

    alert(product.name + " added to cart!");

}

function buyNow(id){

    addToCart(id);

    openCart();

}

function removeFromCart(id){

    cart = cart.filter(p => p.id !== id);

    saveCart();

}

function changeQuantity(id, amount){

    const item = cart.find(p => p.id === id);

    if(!item) return;

    item.quantity += amount;

    if(item.quantity <= 0){
        removeFromCart(id);
    }

    saveCart();

}

function saveCart(){

    localStorage.setItem(
        "shopkartCart",
        JSON.stringify(cart)
    );

    updateCart();

}

function updateCart(){

    document.getElementById("cartCount").innerText =
    cart.reduce((sum,item)=>sum+item.quantity,0);

    const container =
    document.getElementById("cartItems");

    container.innerHTML = "";

    let total = 0;

    cart.forEach(item => {

        total += item.price * item.quantity;

        container.innerHTML += `

        <div class="cart-item">

            <img src="${item.image}">

            <div class="cart-item-info">

                <b>${item.name}</b>

                <p>₹${item.price}</p>

                <div class="quantity">

                    <button onclick="changeQuantity(${item.id},-1)">
                        -
                    </button>

                    ${item.quantity}

                    <button onclick="changeQuantity(${item.id},1)">
                        +
                    </button>

                    <button onclick="removeFromCart(${item.id})">
                        🗑
                    </button>

                </div>

            </div>

        </div>

        `;

    });

    document.getElementById("cartTotal").innerText =
    total.toLocaleString("en-IN");

}

function openCart(){

    document.getElementById("cartPanel")
    .classList.add("active");

    updateCart();

}

function closeCart(){

    document.getElementById("cartPanel")
    .classList.remove("active");

}

function searchProducts(){

    const value =
    document.getElementById("searchInput")
    .value
    .toLowerCase();

    const result = products.filter(product =>
        product.name.toLowerCase().includes(value)
    );

    displayProducts(result);

}

function filterProducts(category){

    if(category === "all"){
        displayProducts(products);
    }else{
        displayProducts(
            products.filter(p => p.category === category)
        );
    }

    document.getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

}

function wishlist(element){

    if(element.innerText === "♡"){
        element.innerText = "♥";
        alert("Added to wishlist ❤️");
    }else{
        element.innerText = "♡";
    }

}

function checkout(){

    if(cart.length === 0){
        alert("Your cart is empty!");
        return;
    }

    alert(
        "Checkout page opened!\n\n" +
        "This demo is ready for connecting to a real payment gateway."
    );

}

/* INITIAL LOAD */
displayProducts();
updateCart();

</script>

</body>
</html>
```
