<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NovaCart - E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Inter,sans-serif;
    background:#f5f7fb;
    color:#171717;
}

button{
    font-family:inherit;
    cursor:pointer;
}

header{
    background:#fff;
    position:sticky;
    top:0;
    z-index:100;
    box-shadow:0 2px 15px rgba(0,0,0,.06);
}

.navbar{
    max-width:1200px;
    margin:auto;
    height:72px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 20px;
    gap:25px;
}

.logo{
    font-size:25px;
    font-weight:800;
    color:#6c35de;
}

.logo span{
    color:#111;
}

.search{
    flex:1;
    max-width:500px;
    position:relative;
}

.search input{
    width:100%;
    padding:13px 45px 13px 18px;
    border:1px solid #ddd;
    border-radius:30px;
    outline:none;
    font-size:14px;
}

.search button{
    position:absolute;
    right:5px;
    top:5px;
    width:36px;
    height:36px;
    border:none;
    border-radius:50%;
    background:#6c35de;
    color:white;
}

.nav-icons{
    display:flex;
    align-items:center;
    gap:20px;
}

.nav-icons button{
    border:none;
    background:none;
    font-size:21px;
}

.cart{
    position:relative;
}

.cart-count{
    position:absolute;
    top:-10px;
    right:-10px;
    background:#ff3b5c;
    color:#fff;
    width:19px;
    height:19px;
    border-radius:50%;
    font-size:11px;
    display:flex;
    align-items:center;
    justify-content:center;
}

.hero{
    max-width:1200px;
    margin:25px auto;
    padding:70px 50px;
    border-radius:25px;
    background:linear-gradient(120deg,#6c35de,#a65bea);
    color:white;
    display:flex;
    align-items:center;
    justify-content:space-between;
    overflow:hidden;
}

.hero-content{
    max-width:600px;
}

.hero h1{
    font-size:48px;
    line-height:1.1;
    margin-bottom:18px;
}

.hero p{
    font-size:17px;
    opacity:.9;
    margin-bottom:28px;
}

.hero button{
    padding:14px 25px;
    border:none;
    border-radius:30px;
    background:white;
    color:#6c35de;
    font-weight:700;
}

.hero-offer{
    font-size:100px;
    font-weight:800;
    opacity:.15;
}

.container{
    max-width:1200px;
    margin:auto;
    padding:0 20px;
}

.section{
    margin:45px auto;
}

.section-title{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:22px;
}

.section-title h2{
    font-size:27px;
}

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:15px;
}

.category{
    background:white;
    padding:25px 10px;
    border-radius:15px;
    text-align:center;
    transition:.2s;
    cursor:pointer;
}

.category:hover{
    transform:translateY(-5px);
    box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.category-icon{
    font-size:32px;
    margin-bottom:10px;
}

.category h3{
    font-size:14px;
}

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.product{
    background:white;
    border-radius:18px;
    overflow:hidden;
    position:relative;
    transition:.25s;
}

.product:hover{
    transform:translateY(-5px);
    box-shadow:0 12px 30px rgba(0,0,0,.1);
}

.product-image{
    height:230px;
    position:relative;
    background:#f1f2f6;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.wishlist{
    position:absolute;
    top:12px;
    right:12px;
    width:38px;
    height:38px;
    border-radius:50%;
    border:none;
    background:white;
    font-size:18px;
}

.badge{
    position:absolute;
    top:12px;
    left:12px;
    background:#ff3b5c;
    color:white;
    padding:5px 9px;
    border-radius:6px;
    font-size:11px;
    font-weight:700;
}

.product-info{
    padding:16px;
}

.product-info small{
    color:#888;
}

.product-info h3{
    margin:7px 0;
    font-size:16px;
}

.rating{
    color:#ffb400;
    font-size:13px;
}

.price{
    margin-top:10px;
    font-size:19px;
    font-weight:800;
}

.old-price{
    color:#999;
    text-decoration:line-through;
    font-size:13px;
    margin-left:6px;
}

.add-cart{
    width:100%;
    margin-top:14px;
    padding:11px;
    border:none;
    border-radius:9px;
    background:#6c35de;
    color:white;
    font-weight:700;
}

.add-cart:hover{
    background:#5424bd;
}

.deal{
    background:#171717;
    color:white;
    border-radius:20px;
    padding:35px;
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.deal h2{
    font-size:32px;
    margin-bottom:10px;
}

.deal p{
    color:#bbb;
    margin-bottom:20px;
}

.deal button{
    border:none;
    padding:13px 25px;
    border-radius:25px;
    background:#ff3b5c;
    color:white;
    font-weight:700;
}

.timer{
    display:flex;
    gap:10px;
    margin-bottom:20px;
}

.time{
    background:#292929;
    padding:10px 15px;
    border-radius:8px;
    text-align:center;
}

.time strong{
    display:block;
    font-size:20px;
}

.newsletter{
    background:#eee7ff;
    padding:45px;
    text-align:center;
    border-radius:20px;
}

.newsletter h2{
    font-size:28px;
    margin-bottom:10px;
}

.newsletter p{
    color:#666;
    margin-bottom:20px;
}

.newsletter input{
    width:300px;
    max-width:80%;
    padding:13px 18px;
    border:none;
    border-radius:25px;
    outline:none;
}

.newsletter button{
    padding:13px 22px;
    border:none;
    border-radius:25px;
    background:#6c35de;
    color:white;
    font-weight:700;
}

footer{
    background:#171717;
    color:white;
    padding:40px 20px;
    margin-top:50px;
}

.footer-content{
    max-width:1200px;
    margin:auto;
    display:flex;
    justify-content:space-between;
    gap:30px;
}

.footer-content p{
    color:#aaa;
    margin-top:10px;
}

.cart-panel{
    position:fixed;
    right:-400px;
    top:0;
    width:380px;
    max-width:100%;
    height:100vh;
    background:white;
    z-index:200;
    padding:25px;
    box-shadow:-5px 0 25px rgba(0,0,0,.15);
    transition:.3s;
}

.cart-panel.active{
    right:0;
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.cart-header button{
    border:none;
    background:none;
    font-size:25px;
}

.cart-items{
    height:65%;
    overflow-y:auto;
}

.cart-item{
    display:flex;
    gap:12px;
    margin-bottom:15px;
    padding-bottom:15px;
    border-bottom:1px solid #eee;
}

.cart-item img{
    width:70px;
    height:70px;
    object-fit:cover;
    border-radius:10px;
}

.cart-item h4{
    font-size:14px;
}

.remove{
    border:none;
    background:none;
    color:#ff3b5c;
    font-size:12px;
    margin-top:5px;
}

.cart-total{
    border-top:1px solid #ddd;
    padding-top:20px;
}

.checkout{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    background:#6c35de;
    color:white;
    font-weight:700;
    margin-top:15px;
}

@media(max-width:900px){

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .hero h1{
        font-size:38px;
    }

    .hero-offer{
        display:none;
    }
}

@media(max-width:600px){

    .navbar{
        gap:10px;
    }

    .logo{
        font-size:20px;
    }

    .search{
        display:none;
    }

    .hero{
        margin:15px;
        padding:45px 25px;
    }

    .hero h1{
        font-size:32px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:1fr;
    }

    .deal{
        padding:25px;
    }

    .newsletter input{
        width:100%;
        max-width:100%;
        margin-bottom:10px;
    }

    .footer-content{
        flex-direction:column;
    }
}
</style>
</head>

<body>

<header>
<div class="navbar">

    <div class="logo">Nova<span>Cart</span></div>

    <div class="search">
        <input type="text" id="searchInput" placeholder="Search products...">
        <button onclick="searchProducts()">⌕</button>
    </div>

    <div class="nav-icons">
        <button>♡</button>
        <button>♙</button>

        <button class="cart" onclick="openCart()">
            🛒
            <span class="cart-count" id="cartCount">0</span>
        </button>
    </div>

</div>
</header>


<section class="hero">

    <div class="hero-content">
        <h1>Everything You Love. In One Place.</h1>

        <p>
            Discover amazing products, exclusive deals and
            the latest trends at NovaCart.
        </p>

        <button onclick="scrollToProducts()">
            Shop Now →
        </button>
    </div>

    <div class="hero-offer">
        50%
    </div>

</section>


<div class="container">

<section class="section">

    <div class="section-title">
        <h2>Shop by Category</h2>
    </div>

    <div class="categories">

        <div class="category" onclick="filterCategory('Electronics')">
            <div class="category-icon">📱</div>
            <h3>Electronics</h3>
        </div>

        <div class="category" onclick="filterCategory('Fashion')">
            <div class="category-icon">👕</div>
            <h3>Fashion</h3>
        </div>

        <div class="category" onclick="filterCategory('Shoes')">
            <div class="category-icon">👟</div>
            <h3>Shoes</h3>
        </div>

        <div class="category" onclick="filterCategory('Beauty')">
            <div class="category-icon">💄</div>
            <h3>Beauty</h3>
        </div>

        <div class="category" onclick="filterCategory('Gaming')">
            <div class="category-icon">🎮</div>
            <h3>Gaming</h3>
        </div>

        <div class="category" onclick="filterCategory('Accessories')">
            <div class="category-icon">⌚</div>
            <h3>Accessories</h3>
        </div>

    </div>

</section>


<section class="section" id="productsSection">

    <div class="section-title">
        <h2>Trending Products</h2>
    </div>

    <div class="products" id="products"></div>

</section>


<section class="section">

    <div class="deal">

        <div>
            <h2>🔥 Mega Flash Sale</h2>

            <p>Get up to 50% OFF on selected products.</p>

            <div class="timer">

                <div class="time">
                    <strong id="hours">12</strong>
                    Hours
                </div>

                <div class="time">
                    <strong id="minutes">30</strong>
                    Minutes
                </div>

                <div class="time">
                    <strong id="seconds">00</strong>
                    Seconds
                </div>

            </div>

            <button onclick="scrollToProducts()">
                Shop Deals
            </button>
        </div>

    </div>

</section>


<section class="newsletter">

    <h2>Get Exclusive Offers</h2>

    <p>
        Subscribe to our newsletter and receive special discounts.
    </p>

    <input type="email" id="email" placeholder="Enter your email">

    <button onclick="subscribe()">
        Subscribe
    </button>

</section>

</div>


<footer>

<div class="footer-content">

    <div>
        <h2>NovaCart</h2>
        <p>Your modern online shopping destination.</p>
    </div>

    <div>
        <h3>Customer Support</h3>
        <p>Help Center</p>
        <p>Shipping</p>
        <p>Returns</p>
    </div>

    <div>
        <h3>Follow Us</h3>
        <p>Instagram</p>
        <p>Facebook</p>
        <p>Twitter</p>
    </div>

</div>

</footer>


<!-- CART -->

<div class="cart-panel" id="cartPanel">

    <div class="cart-header">
        <h2>Your Cart</h2>
        <button onclick="closeCart()">×</button>
    </div>

    <div class="cart-items" id="cartItems">
        Your cart is empty.
    </div>

    <div class="cart-total">

        <h3>
            Total: ₹<span id="cartTotal">0</span>
        </h3>

        <button class="checkout" onclick="checkout()">
            Proceed to Checkout
        </button>

    </div>

</div>


<script>

const products = [

{
    id:1,
    name:"iPhone 15 Pro",
    category:"Electronics",
    price:99999,
    oldPrice:119999,
    rating:5,
    image:"https://images.unsplash.com/photo-1696446701796-da61225697cc?w=600"
},

{
    id:2,
    name:"Premium Headphones",
    category:"Electronics",
    price:4999,
    oldPrice:6999,
    rating:5,
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600"
},

{
    id:3,
    name:"Classic Oversized T-Shirt",
    category:"Fashion",
    price:999,
    oldPrice:1499,
    rating:4,
    image:"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=600"
},

{
    id:4,
    name:"Air Running Shoes",
    category:"Shoes",
    price:3999,
    oldPrice:5999,
    rating:5,
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600"
},

{
    id:5,
    name:"Luxury Beauty Set",
    category:"Beauty",
    price:2499,
    oldPrice:3499,
    rating:4,
    image:"https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=600"
},

{
    id:6,
    name:"Gaming Controller",
    category:"Gaming",
    price:2999,
    oldPrice:4499,
    rating:5,
    image:"https://images.unsplash.com/photo-1600080972464-8e5f35f63d08?w=600"
},

{
    id:7,
    name:"Smart Watch",
    category:"Accessories",
    price:5999,
    oldPrice:7999,
    rating:5,
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600"
},

{
    id:8,
    name:"Leather Backpack",
    category:"Accessories",
    price:1999,
    oldPrice:2999,
    rating:4,
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600"
}

];

let cart = [];


function displayProducts(list=products){

    const container=document.getElementById("products");

    container.innerHTML="";

    if(list.length===0){

        container.innerHTML=
        "<p>No products found.</p>";

        return;
    }

    list.forEach(product=>{

        container.innerHTML += `

        <div class="product">

            <div class="product-image">

                <span class="badge">SALE</span>

                <button class="wishlist">
                    ♡
                </button>

                <img src="${product.image}"
                     alt="${product.name}">

            </div>

            <div class="product-info">

                <small>${product.category}</small>

                <h3>${product.name}</h3>

                <div class="rating">
                    ${"★".repeat(product.rating)}
                    <span style="color:#999">
                    (${product.rating}.0)
                    </span>
                </div>

                <div class="price">
                    ₹${product.price.toLocaleString()}
                    <span class="old-price">
                    ₹${product.oldPrice.toLocaleString()}
                    </span>
                </div>

                <button
                    class="add-cart"
                    onclick="addToCart(${product.id})">

                    Add to Cart

                </button>

            </div>

        </div>

        `;

    });

}


function addToCart(id){

    const product=products.find(p=>p.id===id);

    cart.push(product);

    updateCart();

    openCart();

}


function updateCart(){

    document.getElementById("cartCount").textContent=cart.length;

    const items=document.getElementById("cartItems");

    if(cart.length===0){

        items.innerHTML="Your cart is empty.";

        document.getElementById("cartTotal").textContent="0";

        return;
    }

    let total=0;

    items.innerHTML="";

    cart.forEach((product,index)=>{

        total+=product.price;

        items.innerHTML += `

        <div class="cart-item">

            <img src="${product.image}">

            <div>

                <h4>${product.name}</h4>

                <strong>
                    ₹${product.price.toLocaleString()}
                </strong>

                <br>

                <button
                    class="remove"
                    onclick="removeCart(${index})">

                    Remove

                </button>

            </div>

        </div>

        `;

    });

    document.getElementById("cartTotal")
        .textContent=total.toLocaleString();

}


function removeCart(index){

    cart.splice(index,1);

    updateCart();

}


function openCart(){

    document
        .getElementById("cartPanel")
        .classList.add("active");

}


function closeCart(){

    document
        .getElementById("cartPanel")
        .classList.remove("active");

}


function searchProducts(){

    const query=
        document
        .getElementById("searchInput")
        .value
        .toLowerCase();

    const result=products.filter(product=>
        product.name.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)
    );

    displayProducts(result);

}


function filterCategory(category){

    const result=
        products.filter(product=>
            product.category===category
        );

    displayProducts(result);

    scrollToProducts();

}


function scrollToProducts(){

    document
        .getElementById("productsSection")
        .scrollIntoView({
            behavior:"smooth"
        });

}


function subscribe(){

    const email=
        document.getElementById("email").value;

    if(!email || !email.includes("@")){

        alert("Please enter a valid email.");

        return;
    }

    alert("Successfully subscribed!");

    document.getElementById("email").value="";

}


function checkout(){

    if(cart.length===0){

        alert("Your cart is empty!");

        return;
    }

    alert(
        "Checkout successful! Thank you for shopping with NovaCart."
    );

    cart=[];

    updateCart();

    closeCart();

}


/* Search on Enter */

document
.getElementById("searchInput")
.addEventListener("keydown",function(e){

    if(e.key==="Enter"){

        searchProducts();

    }

});


/* Flash Sale Timer */

let totalSeconds=12*60*60+30*60;

setInterval(()=>{

    if(totalSeconds<=0) return;

    totalSeconds--;

    const hours=
        Math.floor(totalSeconds/3600);

    const minutes=
        Math.floor((totalSeconds%3600)/60);

    const seconds=
        totalSeconds%60;

    document.getElementById("hours")
        .textContent=String(hours).padStart(2,"0");

    document.getElementById("minutes")
        .textContent=String(minutes).padStart(2,"0");

    document.getElementById("seconds")
        .textContent=String(seconds).padStart(2,"0");

},1000);


/* Load Products */

displayProducts();

</script>

</body>
</html>
