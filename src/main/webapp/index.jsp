```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>VELORA — Premium Store</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --bg:#f7f5f2;
    --card:#ffffff;
    --text:#181818;
    --muted:#777;
    --accent:#111;
    --border:#e5e2de;
}

body{
    font-family:Arial, Helvetica, sans-serif;
    background:var(--bg);
    color:var(--text);
    transition:.3s;
}

body.dark{
    --bg:#111;
    --card:#1c1c1c;
    --text:#fff;
    --muted:#aaa;
    --accent:#fff;
    --border:#333;
}

/* HEADER */

header{
    background:var(--card);
    border-bottom:1px solid var(--border);
    position:sticky;
    top:0;
    z-index:100;
}

.nav{
    max-width:1250px;
    height:75px;
    margin:auto;
    padding:0 20px;
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    font-size:26px;
    font-weight:900;
    letter-spacing:3px;
}

.nav-links{
    display:flex;
    gap:28px;
}

.nav-links a{
    color:var(--text);
    text-decoration:none;
    font-size:14px;
    font-weight:600;
}

.nav-actions{
    display:flex;
    gap:10px;
}

.nav-actions button{
    width:40px;
    height:40px;
    border:1px solid var(--border);
    border-radius:50%;
    background:var(--card);
    color:var(--text);
    cursor:pointer;
}

/* HERO */

.hero{
    max-width:1250px;
    margin:25px auto;
    padding:70px 60px;
    min-height:450px;
    border-radius:25px;

    background:
    linear-gradient(90deg,rgba(0,0,0,.75),rgba(0,0,0,.15)),
    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=1500")
    center/cover;

    color:white;
    display:flex;
    align-items:center;
}

.hero-content{
    max-width:570px;
}

.hero h1{
    font-size:56px;
    line-height:1.05;
    margin-bottom:20px;
}

.hero p{
    font-size:17px;
    line-height:1.7;
    margin-bottom:30px;
}

.hero button{
    background:white;
    color:#111;
    border:none;
    padding:15px 28px;
    border-radius:30px;
    font-weight:bold;
}

/* MAIN */

.main{
    max-width:1250px;
    margin:50px auto;
    padding:0 20px;
}

/* TOOLBAR */

.toolbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.toolbar h2{
    font-size:30px;
}

.toolbar-right{
    display:flex;
    gap:10px;
}

select{
    padding:11px 15px;
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    border-radius:8px;
}

/* PRODUCTS */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:22px;
}

.product{
    background:var(--card);
    border-radius:16px;
    overflow:hidden;
    border:1px solid var(--border);
    transition:.25s;
}

.product:hover{
    transform:translateY(-6px);
    box-shadow:0 15px 35px rgba(0,0,0,.1);
}

.product-image{
    height:290px;
    position:relative;
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.4s;
}

.product:hover img{
    transform:scale(1.06);
}

.tag{
    position:absolute;
    top:12px;
    left:12px;
    background:#111;
    color:#fff;
    padding:6px 10px;
    font-size:11px;
    border-radius:5px;
}

.heart{
    position:absolute;
    right:12px;
    top:12px;
    width:36px;
    height:36px;
    border:none;
    border-radius:50%;
    background:white;
    cursor:pointer;
    font-size:18px;
}

.product-info{
    padding:17px;
}

.product-info small{
    color:var(--muted);
}

.product-info h3{
    font-size:16px;
    margin:7px 0;
}

.stars{
    color:#e5a800;
    font-size:13px;
}

.price{
    margin-top:12px;
    font-size:19px;
    font-weight:bold;
}

.old{
    color:#999;
    text-decoration:line-through;
    font-size:13px;
    margin-left:5px;
}

.add{
    width:100%;
    padding:12px;
    margin-top:15px;
    border:none;
    background:var(--accent);
    color:var(--card);
    border-radius:8px;
    font-weight:bold;
    cursor:pointer;
}

/* BANNER */

.offer{
    margin:70px 0;
    padding:50px;
    border-radius:20px;

    background:
    linear-gradient(100deg,rgba(0,0,0,.75),rgba(0,0,0,.25)),
    url("https://images.unsplash.com/photo-1445205170230-053b83016050?w=1400")
    center/cover;

    color:white;
}

.offer h2{
    font-size:38px;
    margin-bottom:12px;
}

.offer p{
    margin-bottom:20px;
}

.offer button{
    padding:12px 25px;
    border:none;
    border-radius:25px;
    font-weight:bold;
}

/* FEATURES */

.features{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
    margin-bottom:70px;
}

.feature{
    background:var(--card);
    border:1px solid var(--border);
    padding:25px;
    border-radius:15px;
}

.feature-icon{
    font-size:28px;
    margin-bottom:12px;
}

.feature h3{
    font-size:15px;
    margin-bottom:7px;
}

.feature p{
    color:var(--muted);
    font-size:13px;
}

/* FOOTER */

footer{
    background:#111;
    color:white;
    padding:55px 20px;
}

.footer{
    max-width:1250px;
    margin:auto;
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer h2{
    letter-spacing:3px;
}

.footer h3{
    margin-bottom:15px;
}

.footer p{
    color:#aaa;
    line-height:2;
    font-size:14px;
}

/* CART */

.cart{
    position:fixed;
    right:-420px;
    top:0;
    width:400px;
    max-width:100%;
    height:100vh;
    background:var(--card);
    z-index:500;
    box-shadow:-10px 0 30px rgba(0,0,0,.2);
    padding:25px;
    transition:.35s;
}

.cart.open{
    right:0;
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding-bottom:20px;
    border-bottom:1px solid var(--border);
}

.cart-header button{
    border:none;
    background:none;
    color:var(--text);
    font-size:28px;
}

.cart-items{
    height:65%;
    overflow:auto;
    padding-top:20px;
}

.cart-item{
    display:flex;
    gap:12px;
    margin-bottom:18px;
    padding-bottom:18px;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:70px;
    height:80px;
    object-fit:cover;
    border-radius:8px;
}

.cart-item h4{
    font-size:14px;
    margin-bottom:8px;
}

.cart-item button{
    background:none;
    border:none;
    color:#e63946;
    font-size:12px;
    margin-top:5px;
}

.cart-bottom{
    border-top:1px solid var(--border);
    padding-top:20px;
}

.checkout{
    width:100%;
    padding:14px;
    margin-top:15px;
    border:none;
    border-radius:8px;
    background:var(--accent);
    color:var(--card);
    font-weight:bold;
}

/* MOBILE */

@media(max-width:950px){

    .nav-links{
        display:none;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .features{
        grid-template-columns:repeat(2,1fr);
    }

    .footer{
        grid-template-columns:1fr 1fr;
    }

}

@media(max-width:600px){

    .hero{
        margin:12px;
        padding:40px 25px;
    }

    .hero h1{
        font-size:38px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .features{
        grid-template-columns:1fr;
    }

    .toolbar{
        flex-direction:column;
        align-items:flex-start;
        gap:15px;
    }

    .footer{
        grid-template-columns:1fr;
    }

}

</style>
</head>


<body>

<!-- HEADER -->

<header>

<div class="nav">

    <div class="logo">
        VELORA
    </div>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#shop">Shop</a>
        <a href="#offers">Offers</a>
        <a href="#about">About</a>
    </div>

    <div class="nav-actions">

        <button onclick="toggleDark()">
            ☾
        </button>

        <button onclick="openCart()">
            🛒
            <span id="count">0</span>
        </button>

    </div>

</div>

</header>


<!-- HERO -->

<section class="hero">

<div class="hero-content">

    <h1>
        Discover Your
        Signature Style.
    </h1>

    <p>
        Explore our carefully selected collection of
        fashion, accessories and lifestyle essentials
        designed for modern living.
    </p>

    <button onclick="goShop()">
        SHOP COLLECTION →
    </button>

</div>

</section>


<!-- SHOP -->

<main class="main" id="shop">

<div class="toolbar">

    <h2>New Arrivals</h2>

    <div class="toolbar-right">

        <select id="category" onchange="filterProducts()">

            <option value="All">All Products</option>
            <option value="Fashion">Fashion</option>
            <option value="Shoes">Shoes</option>
            <option value="Accessories">Accessories</option>
            <option value="Beauty">Beauty</option>

        </select>

        <select id="sort" onchange="filterProducts()">

            <option value="default">
                Sort By
            </option>

            <option value="low">
                Price: Low to High
            </option>

            <option value="high">
                Price: High to Low
            </option>

        </select>

    </div>

</div>


<div class="products" id="products"></div>


<!-- OFFER -->

<section class="offer" id="offers">

    <h2>
        Mid Season Sale
    </h2>

    <p>
        Up to 50% off on selected collections.
    </p>

    <button onclick="goShop()">
        SHOP SALE
    </button>

</section>


<!-- FEATURES -->

<div class="features">

    <div class="feature">
        <div class="feature-icon">🚚</div>
        <h3>Free Shipping</h3>
        <p>
            Free delivery on orders above ₹999.
        </p>
    </div>

    <div class="feature">
        <div class="feature-icon">↩️</div>
        <h3>Easy Returns</h3>
        <p>
            Simple 7-day return policy.
        </p>
    </div>

    <div class="feature">
        <div class="feature-icon">🔒</div>
        <h3>Secure Payment</h3>
        <p>
            Your payments are completely secure.
        </p>
    </div>

    <div class="feature">
        <div class="feature-icon">💬</div>
        <h3>24/7 Support</h3>
        <p>
            We're always here to help you.
        </p>
    </div>

</div>

</main>


<!-- FOOTER -->

<footer id="about">

<div class="footer">

    <div>
        <h2>VELORA</h2>

        <p>
            Premium fashion and lifestyle products
            for people who love simple,
            timeless design.
        </p>
    </div>

    <div>
        <h3>Shop</h3>

        <p>New Arrivals</p>
        <p>Best Sellers</p>
        <p>Sale</p>
        <p>Collections</p>
    </div>

    <div>
        <h3>Help</h3>

        <p>Contact Us</p>
        <p>Shipping</p>
        <p>Returns</p>
        <p>FAQ</p>
    </div>

    <div>
        <h3>Follow</h3>

        <p>Instagram</p>
        <p>Facebook</p>
        <p>YouTube</p>
        <p>Pinterest</p>
    </div>

</div>

</footer>


<!-- CART -->

<div class="cart" id="cart">

<div class="cart-header">

    <h2>Your Cart</h2>

    <button onclick="closeCart()">
        ×
    </button>

</div>


<div class="cart-items" id="cartItems">

    <p style="color:#777">
        Your cart is empty.
    </p>

</div>


<div class="cart-bottom">

    <h3>
        Total:
        ₹<span id="total">0</span>
    </h3>

    <button class="checkout" onclick="checkout()">
        CHECKOUT
    </button>

</div>

</div>


<script>

/* PRODUCTS */

const products = [

{
    id:1,
    name:"Minimal Oversized Shirt",
    category:"Fashion",
    price:1499,
    old:1999,
    rating:5,
    image:"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=600"
},

{
    id:2,
    name:"Classic White Sneakers",
    category:"Shoes",
    price:2999,
    old:3999,
    rating:5,
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600"
},

{
    id:3,
    name:"Premium Leather Bag",
    category:"Accessories",
    price:3499,
    old:4999,
    rating:4,
    image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600"
},

{
    id:4,
    name:"Elegant Wrist Watch",
    category:"Accessories",
    price:4499,
    old:5999,
    rating:5,
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600"
},

{
    id:5,
    name:"Luxury Perfume",
    category:"Beauty",
    price:2499,
    old:3499,
    rating:4,
    image:"https://images.unsplash.com/photo-1541643600914-78b084683601?w=600"
},

{
    id:6,
    name:"Premium Sunglasses",
    category:"Accessories",
    price:1799,
    old:2499,
    rating:5,
    image:"https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600"
},

{
    id:7,
    name:"Classic Denim Jacket",
    category:"Fashion",
    price:2199,
    old:2999,
    rating:4,
    image:"https://images.unsplash.com/photo-1551028719-00167b16eac5?w=600"
},

{
    id:8,
    name:"Running Sneakers",
    category:"Shoes",
    price:3299,
    old:4499,
    rating:5,
    image:"https://images.unsplash.com/photo-1552346154-21d32810aba3?w=600"
}

];


let cart=[];


/* DISPLAY PRODUCTS */

function displayProducts(list){

    const box=document.getElementById("products");

    box.innerHTML="";

    list.forEach(product=>{

        box.innerHTML+=`

        <div class="product">

            <div class="product-image">

                <span class="tag">
                    NEW
                </span>

                <button
                    class="heart"
                    onclick="like(this)">
                    ♡
                </button>

                <img
                    src="${product.image}"
                    alt="${product.name}">

            </div>

            <div class="product-info">

                <small>
                    ${product.category}
                </small>

                <h3>
                    ${product.name}
                </h3>

                <div class="stars">
                    ${"★".repeat(product.rating)}
                </div>

                <div class="price">

                    ₹${product.price.toLocaleString()}

                    <span class="old">
                        ₹${product.old.toLocaleString()}
                    </span>

                </div>

                <button
                    class="add"
                    onclick="addCart(${product.id})">

                    ADD TO CART

                </button>

            </div>

        </div>

        `;

    });

}


/* ADD CART */

function addCart(id){

    const product=
        products.find(p=>p.id===id);

    cart.push(product);

    updateCart();

    openCart();

}


/* UPDATE CART */

function updateCart(){

    document.getElementById("count")
        .textContent=cart.length;

    const box=
        document.getElementById("cartItems");

    if(cart.length===0){

        box.innerHTML=
        `<p style="color:#777">
            Your cart is empty.
        </p>`;

        document.getElementById("total")
            .textContent="0";

        return;
    }

    let total=0;

    box.innerHTML="";

    cart.forEach((product,index)=>{

        total+=product.price;

        box.innerHTML+=`

        <div class="cart-item">

            <img src="${product.image}">

            <div>

                <h4>
                    ${product.name}
                </h4>

                <strong>
                    ₹${product.price.toLocaleString()}
                </strong>

                <br>

                <button
                    onclick="removeCart(${index})">

                    Remove

                </button>

            </div>

        </div>

        `;

    });

    document.getElementById("total")
        .textContent=
        total.toLocaleString();

}


/* REMOVE */

function removeCart(index){

    cart.splice(index,1);

    updateCart();

}


/* OPEN CART */

function openCart(){

    document
        .getElementById("cart")
        .classList.add("open");

}


/* CLOSE CART */

function closeCart(){

    document
        .getElementById("cart")
        .classList.remove("open");

}


/* CATEGORY FILTER */

function filterProducts(){

    const category=
        document.getElementById("category").value;

    const sort=
        document.getElementById("sort").value;

    let result=[...products];

    if(category!=="All"){

        result=result.filter(
            p=>p.category===category
        );

    }

    if(sort==="low"){

        result.sort(
            (a,b)=>a.price-b.price
        );

    }

    if(sort==="high"){

        result.sort(
            (a,b)=>b.price-a.price
        );

    }

    displayProducts(result);

}


/* DARK MODE */

function toggleDark(){

    document.body.classList.toggle("dark");

}


/* WISHLIST */

function like(button){

    if(button.textContent==="♡"){

        button.textContent="♥";

    }else{

        button.textContent="♡";

    }

}


/* SHOP BUTTON */

function goShop(){

    document
        .getElementById("shop")
        .scrollIntoView({
            behavior:"smooth"
        });

}


/* CHECKOUT */

function checkout(){

    if(cart.length===0){

        alert("Your cart is empty!");

        return;

    }

    alert(
        "Order placed successfully! 🎉"
    );

    cart=[];

    updateCart();

    closeCart();

}


/* INITIAL LOAD */

displayProducts(products);

</script>

</body>
</html>
```
