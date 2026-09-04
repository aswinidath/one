/* ==========================================
   BHARATHI SYPIREDDY SUGARCANE SHOP
   E-COMMERCE JAVASCRIPT
========================================== */


/* ================= PRODUCTS ================= */

const products = [

    {
        id: 1,
        name: "Sugarcane Juice 150ml",
        category: "juice",
        price: 10,
        icon: "🥤",
        description: "Fresh sugarcane juice - 150ml"
    },

    {
        id: 2,
        name: "Sugarcane Juice 250ml",
        category: "juice",
        price: 20,
        icon: "🥤",
        description: "Fresh sugarcane juice - 250ml"
    },

    {
        id: 3,
        name: "Sugarcane Juice 500ml",
        category: "juice",
        price: 40,
        icon: "🧃",
        description: "Fresh sugarcane juice - 500ml bottle"
    },

    {
        id: 4,
        name: "Sugarcane Juice 1 Litre",
        category: "juice",
        price: 70,
        icon: "🧃",
        description: "Fresh sugarcane juice - 1 litre bottle"
    },


    {
        id: 5,
        name: "Dairy Milk",
        category: "chocolate",
        price: 40,
        icon: "🍫",
        description: "Delicious milk chocolate"
    },

    {
        id: 6,
        name: "KitKat",
        category: "chocolate",
        price: 30,
        icon: "🍫",
        description: "Crispy chocolate wafer"
    },

    {
        id: 7,
        name: "5 Star",
        category: "chocolate",
        price: 20,
        icon: "🍫",
        description: "Rich caramel chocolate"
    },

    {
        id: 8,
        name: "Perk",
        category: "chocolate",
        price: 10,
        icon: "🍫",
        description: "Crispy chocolate snack"
    },


    {
        id: 9,
        name: "Parle-G",
        category: "biscuit",
        price: 10,
        icon: "🍪",
        description: "Classic glucose biscuits"
    },

    {
        id: 10,
        name: "Good Day",
        category: "biscuit",
        price: 20,
        icon: "🍪",
        description: "Crunchy tasty biscuits"
    },

    {
        id: 11,
        name: "Hide & Seek",
        category: "biscuit",
        price: 30,
        icon: "🍪",
        description: "Chocolate chip biscuits"
    },


    {
        id: 12,
        name: "Coca-Cola",
        category: "drink",
        price: 40,
        icon: "🥤",
        description: "Refreshing soft drink"
    },

    {
        id: 13,
        name: "Sprite",
        category: "drink",
        price: 40,
        icon: "🧃",
        description: "Refreshing lemon-lime drink"
    },

    {
        id: 14,
        name: "Frooti",
        category: "drink",
        price: 20,
        icon: "🧃",
        description: "Refreshing mango drink"
    }

];


/* ================= CART ================= */

let cart = JSON.parse(
    localStorage.getItem("bharathiCart")
) || [];


/* ================= DISPLAY PRODUCTS ================= */

function displayProducts(list) {

    const container =
        document.getElementById("productContainer");

    container.innerHTML = "";


    if (list.length === 0) {

        container.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px;
            ">

                <h2>No products found</h2>

                <p style="margin-top:10px;color:#777;">
                    Try searching for another product.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(product => {

        container.innerHTML += `

            <div class="product-card">

                <div class="product-image">

                    ${product.icon}

                </div>


                <div class="product-details">

                    <span class="product-type">

                        ${product.category}

                    </span>


                    <h3>

                        ${product.name}

                    </h3>


                    <p>

                        ${product.description}

                    </p>


                    <div class="product-bottom">

                        <span class="product-price">

                            ₹${product.price}

                        </span>


                        <button
                            class="add"
                            onclick="addToCart(${product.id})"
                        >

                            + Add

                        </button>

                    </div>

                </div>

            </div>

        `;

    });

}


/* ================= ADD TO CART ================= */

function addToCart(id) {

    const product =
        products.find(item => item.id === id);


    const existing =
        cart.find(item => item.id === id);


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({

            ...product,

            quantity: 1

        });

    }


    saveCart();

    updateCart();

    openCart();

}


/* ================= SAVE CART ================= */

function saveCart() {

    localStorage.setItem(
        "bharathiCart",
        JSON.stringify(cart)
    );

}


/* ================= UPDATE CART ================= */

function updateCart() {

    const cartItems =
        document.getElementById("cartItems");

    const cartCount =
        document.getElementById("cartCount");

    const cartTotal =
        document.getElementById("cartTotal");


    let total = 0;

    let count = 0;


    if (cart.length === 0) {

        cartItems.innerHTML = `

            <div class="empty">

                🛒

                <h3>Your cart is empty</h3>

                <p>
                    Add products to your cart.
                </p>

            </div>

        `;

    } else {

        cartItems.innerHTML = "";


        cart.forEach(item => {

            total +=
                item.price * item.quantity;

            count += item.quantity;


            cartItems.innerHTML += `

                <div class="cart-item">

                    <div class="cart-item-image">

                        ${item.icon}

                    </div>


                    <div class="cart-item-info">

                        <h4>

                            ${item.name}

                        </h4>


                        <strong>

                            ₹${item.price * item.quantity}

                        </strong>


                        <div class="quantity">

                            <button
                                onclick="
                                changeQuantity(
                                    ${item.id},
                                    -1
                                )"
                            >

                                −

                            </button>


                            <span>

                                ${item.quantity}

                            </span>


                            <button
                                onclick="
                                changeQuantity(
                                    ${item.id},
                                    1
                                )"
                            >

                                +

                            </button>

                        </div>

                    </div>


                    <button
                        class="delete"
                        onclick="
                        removeItem(${item.id})
                        "
                    >

                        ✕

                    </button>

                </div>

            `;

        });

    }


    cartCount.textContent = count;

    cartTotal.textContent =
        "₹" + total;

}


/* ================= QUANTITY ================= */

function changeQuantity(id, amount) {

    const item =
        cart.find(product => product.id === id);


    if (!item) return;


    item.quantity += amount;


    if (item.quantity <= 0) {

        cart =
            cart.filter(
                product => product.id !== id
            );

    }


    saveCart();

    updateCart();

}


/* ================= REMOVE ================= */

function removeItem(id) {

    cart =
        cart.filter(
            product => product.id !== id
        );


    saveCart();

    updateCart();

}


/* ================= OPEN CART ================= */

function openCart() {

    document
        .getElementById("cartSidebar")
        .classList.add("open");

    document
        .getElementById("cartOverlay")
        .classList.add("show");

}


/* ================= CLOSE CART ================= */

function closeCart() {

    document
        .getElementById("cartSidebar")
        .classList.remove("open");

    document
        .getElementById("cartOverlay")
        .classList.remove("show");

}


/* ================= FILTER ================= */

function filterProducts(category) {

    document
        .querySelectorAll(".category")
        .forEach(button => {

            button.classList.remove("active");

        });


    event.currentTarget.classList.add("active");


    if (category === "all") {

        displayProducts(products);

        return;

    }


    const filtered =
        products.filter(
            product =>
                product.category === category
        );


    displayProducts(filtered);

}


/* ================= SEARCH ================= */

function searchProducts() {

    const value =
        document
            .getElementById("search")
            .value
            .toLowerCase();


    const result =
        products.filter(product =>

            product.name
                .toLowerCase()
                .includes(value)

            ||

            product.category
                .toLowerCase()
                .includes(value)

        );


    displayProducts(result);

}


/* ================= CHECKOUT ================= */

function checkout() {

    if (cart.length === 0) {

        alert(
            "Your cart is empty!"
        );

        return;

    }


    document
        .getElementById("checkoutModal")
        .classList.add("show");

}


/* ================= CLOSE CHECKOUT ================= */

function closeCheckout() {

    document
        .getElementById("checkoutModal")
        .classList.remove("show");

}


/* ================= PLACE ORDER ================= */

function placeOrder() {

    const name =
        document.getElementById("name").value.trim();

    const phone =
        document.getElementById("phone").value.trim();

    const address =
        document.getElementById("address").value.trim();

    const payment =
        document.getElementById("payment").value;


    if (
        name === "" ||
        phone === "" ||
        address === "" ||
        payment === ""
    ) {

        alert(
            "Please fill all the details."
        );

        return;

    }


    if (phone.length < 10) {

        alert(
            "Please enter a valid mobile number."
        );

        return;

    }


    let total = 0;

    cart.forEach(item => {

        total +=
            item.price * item.quantity;

    });


    const orderId =
        "BS" +
        Date.now().toString().slice(-6);


    alert(

        "ORDER PLACED SUCCESSFULLY!\n\n" +

        "Order ID: " +
        orderId +
        "\n\n" +

        "Customer: " +
        name +
        "\n" +

        "Total: ₹" +
        total +
        "\n\n" +

        "Payment: " +
        payment

    );


    cart = [];

    saveCart();

    updateCart();

    closeCheckout();

    closeCart();


    document.getElementById("name").value = "";

    document.getElementById("phone").value = "";

    document.getElementById("address").value = "";

    document.getElementById("payment").value = "";

}


/* ================= INITIALIZE ================= */

displayProducts(products);

updateCart();
