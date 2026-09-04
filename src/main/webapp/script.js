* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Inter", sans-serif;
    background: #f8faf7;
    color: #18251b;
}


/* ================= HEADER ================= */

.header {
    height: 78px;
    background: white;

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 0 6%;

    position: sticky;
    top: 0;

    z-index: 1000;

    border-bottom: 1px solid #e9eee8;
}

.logo-area {
    display: flex;
    align-items: center;
    gap: 12px;
}

.logo-icon {
    width: 45px;
    height: 45px;

    background: #dff2d7;

    border-radius: 13px;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 24px;
}

.logo-area h1 {
    font-size: 19px;
}

.logo-area span {
    font-size: 10px;
    color: #6c786e;
}

nav {
    display: flex;
    gap: 35px;
}

nav a {
    color: #344238;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
}

nav a:hover {
    color: #3f8f38;
}

.cart-button {
    position: relative;

    border: none;
    background: #183d1d;

    color: white;

    width: 45px;
    height: 45px;

    border-radius: 12px;

    cursor: pointer;

    font-size: 18px;
}

#cartCount {
    position: absolute;

    top: -7px;
    right: -7px;

    background: #e9a227;

    width: 20px;
    height: 20px;

    border-radius: 50%;

    font-size: 11px;

    display: flex;
    align-items: center;
    justify-content: center;
}


/* ================= HERO ================= */

.hero {
    min-height: 570px;

    padding: 80px 8%;

    display: flex;
    align-items: center;
    justify-content: space-between;

    background:
        linear-gradient(
            120deg,
            #eef8e9,
            #ffffff
        );
}

.hero-content {
    max-width: 600px;
}

.small-title,
.section-label {
    color: #4b913f;

    font-size: 12px;

    font-weight: 800;

    letter-spacing: 2px;
}

.hero h2 {
    font-size: clamp(40px, 5vw, 67px);

    line-height: 1.05;

    margin: 18px 0;
}

.hero h2 span {
    color: #4b913f;
}

.hero p {
    color: #657066;

    line-height: 1.8;

    max-width: 500px;

    margin-bottom: 30px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
}

.primary-btn,
.secondary-btn {
    padding: 15px 25px;

    border-radius: 10px;

    text-decoration: none;

    font-weight: 700;

    font-size: 14px;
}

.primary-btn {
    background: #244d28;
    color: white;
}

.secondary-btn {
    background: white;
    color: #244d28;

    border: 1px solid #dce4da;
}

.hero-image {
    width: 420px;
    height: 420px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            #bce4aa,
            #75b768
        );

    display: flex;

    align-items: center;
    justify-content: center;

    box-shadow: 0 30px 80px rgba(48, 111, 52, .2);
}

.juice-card {
    background: white;

    width: 270px;

    padding: 35px;

    border-radius: 25px;

    text-align: center;

    box-shadow: 0 20px 50px rgba(0,0,0,.12);
}

.juice-icon {
    font-size: 90px;
}

.juice-card h3 {
    margin: 10px 0;
}

.juice-card p {
    font-size: 12px;
    color: #788278;
}

.juice-card strong {
    display: block;

    margin-top: 15px;

    font-size: 25px;

    color: #3e8a38;
}


/* ================= CATEGORIES ================= */

.categories {
    display: flex;

    justify-content: center;

    gap: 15px;

    padding: 35px 5%;

    background: white;

    flex-wrap: wrap;
}

.category {
    min-width: 140px;

    padding: 20px;

    text-align: center;

    border: 1px solid #e5ebe2;

    border-radius: 15px;

    cursor: pointer;

    transition: .25s;
}

.category span {
    font-size: 28px;
}

.category p {
    margin-top: 8px;

    font-size: 12px;

    font-weight: 700;
}

.category:hover,
.category.active {
    background: #eff8eb;

    border-color: #b9d8b1;

    transform: translateY(-3px);
}


/* ================= PRODUCTS ================= */

.products-section {
    padding: 90px 8%;
}

.section-heading {
    display: flex;

    justify-content: space-between;

    align-items: end;

    margin-bottom: 40px;
}

.section-heading h2 {
    font-size: 38px;

    margin: 10px 0;
}

.section-heading p {
    color: #718073;
}

.search-box {
    width: 280px;

    height: 48px;

    background: white;

    border: 1px solid #dfe6dc;

    border-radius: 12px;

    display: flex;

    align-items: center;

    padding: 0 15px;

    gap: 8px;
}

.search-box input {
    width: 100%;

    border: none;

    outline: none;

    font-family: inherit;
}

.product-grid {
    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 22px;
}

.product-card {
    background: white;

    border-radius: 18px;

    overflow: hidden;

    border: 1px solid #e8ede6;

    transition: .3s;
}

.product-card:hover {
    transform: translateY(-7px);

    box-shadow:
        0 20px 40px rgba(42,80,40,.12);
}

.product-image {
    height: 210px;

    display: flex;

    align-items: center;

    justify-content: center;

    background: #f2f7ef;

    font-size: 85px;
}

.product-info {
    padding: 20px;
}

.product-category {
    color: #7b887c;

    font-size: 10px;

    text-transform: uppercase;

    font-weight: 800;

    letter-spacing: 1px;
}

.product-info h3 {
    margin: 7px 0;

    font-size: 17px;
}

.product-info p {
    color: #798479;

    font-size: 12px;

    min-height: 35px;
}

.price-row {
    margin-top: 18px;

    display: flex;

    align-items: center;

    justify-content: space-between;
}

.price {
    font-size: 20px;

    font-weight: 800;

    color: #245e29;
}

.add-btn {
    border: none;

    background: #244d28;

    color: white;

    border-radius: 9px;

    padding: 10px 14px;

    cursor: pointer;

    font-weight: 700;
}

.add-btn:hover {
    background: #3e7d42;
}


/* ================= OFFER ================= */

.offer {
    margin: 0 8% 90px;

    padding: 45px 55px;

    border-radius: 25px;

    background:
        linear-gradient(
            120deg,
            #234d27,
            #438440
        );

    color: white;

    display: flex;

    align-items: center;

    justify-content: space-between;
}

.offer span {
    font-size: 11px;

    letter-spacing: 2px;

    font-weight: 800;
}

.offer h2 {
    font-size: 32px;

    margin: 10px 0;
}

.offer p {
    opacity: .8;
}

.offer-price {
    text-align: center;
}

.offer-price small {
    display: block;
}

.offer-price strong {
    font-size: 65px;
}


/* ================= ABOUT ================= */

.about {
    padding: 90px 8%;

    background: white;

    display: flex;

    align-items: center;

    gap: 80px;
}

.about-image {
    min-width: 350px;
    height: 350px;

    border-radius: 30px;

    background: #e5f2df;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 130px;
}

.about-content {
    max-width: 600px;
}

.about-content h2 {
    font-size: 40px;

    margin: 12px 0 18px;
}

.about-content > p {
    color: #687469;

    line-height: 1.8;
}

.features {
    margin-top: 30px;

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 15px;
}

.features div {
    display: flex;

    align-items: center;

    gap: 10px;
}

.features span {
    width: 25px;
    height: 25px;

    border-radius: 50%;

    background: #dff1d8;

    color: #3f8c38;

    display: flex;

    align-items: center;
    justify-content: center;
}


/* ================= FOOTER ================= */

footer {
    background: #122417;

    color: white;

    padding: 55px 8% 20px;
}

.footer-main {
    display: grid;

    grid-template-columns:
        2fr 1fr 1fr;

    gap: 50px;

    padding-bottom: 40px;
}

.footer-logo {
    font-size: 20px;

    font-weight: 800;

    margin-bottom: 15px;
}

footer p {
    color: #aab5ac;

    font-size: 13px;

    line-height: 1.8;
}

footer h3 {
    margin-bottom: 15px;
}

footer a {
    display: block;

    text-decoration: none;

    color: #aab5ac;

    margin: 10px 0;

    font-size: 13px;
}

.copyright {
    border-top: 1px solid #304235;

    padding-top: 20px;

    color: #89958c;

    font-size: 12px;

    text-align: center;
}


/* ================= CART ================= */

.cart-overlay {
    position: fixed;

    inset: 0;

    background: rgba(0,0,0,.45);

    opacity: 0;

    pointer-events: none;

    transition: .3s;

    z-index: 1500;
}

.cart-overlay.show {
    opacity: 1;

    pointer-events: auto;
}

.cart {
    position: fixed;

    right: -450px;

    top: 0;

    width: 430px;

    max-width: 100%;

    height: 100vh;

    background: white;

    z-index: 1600;

    transition: .35s;

    display: flex;

    flex-direction: column;
}

.cart.open {
    right: 0;
}

.cart-header {
    padding: 25px;

    border-bottom: 1px solid #e7ebe6;

    display: flex;

    justify-content: space-between;

    align-items: center;
}

.cart-header button,
.modal-close {
    border: none;

    background: #f0f3ef;

    width: 35px;

    height: 35px;

    border-radius: 8px;

    cursor: pointer;
}

.cart-items {
    padding: 20px;

    overflow-y: auto;

    flex: 1;
}

.empty-cart {
    text-align: center;

    margin-top: 100px;

    color: #7c877e;
}

.empty-cart:first-letter {
    font-size: 50px;
}

.cart-item {
    display: flex;

    align-items: center;

    gap: 12px;

    padding: 15px 0;

    border-bottom: 1px solid #edf0ec;
}

.cart-item-icon {
    width: 60px;
    height: 60px;

    border-radius: 12px;

    background: #f0f6ed;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 30px;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info h4 {
    font-size: 14px;
}

.cart-item-info p {
    color: #43853d;

    font-weight: 700;

    margin-top: 5px;
}

.quantity {
    display: flex;

    align-items: center;

    gap: 8px;

    margin-top: 8px;
}

.quantity button {
    border: none;

    width: 25px;
    height: 25px;

    border-radius: 6px;

    cursor: pointer;

    background: #e9eee7;
}

.remove {
    border: none;

    background: transparent;

    cursor: pointer;

    color: #b34b4b;
}

.cart-footer {
    padding: 25px;

    border-top: 1px solid #e7ebe6;
}

.total-row {
    display: flex;

    justify-content: space-between;

    font-size: 20px;

    margin-bottom: 18px;
}

.checkout-btn,
.place-order {
    width: 100%;

    padding: 15px;

    border: none;

    border-radius: 10px;

    background: #244d28;

    color: white;

    font-weight: 800;

    cursor: pointer;
}


/* ================= CHECKOUT ================= */

.modal-overlay {
    position: fixed;

    inset: 0;

    background: rgba(0,0,0,.55);

    display: none;

    align-items: center;

    justify-content: center;

    z-index: 2000;

    padding: 20px;
}

.modal-overlay.show {
    display: flex;
}

.checkout-modal {
    width: 450px;

    max-width: 100%;

    background: white;

    border-radius: 20px;

    padding: 30px;

    position: relative;
}

.checkout-modal h2 {
    margin-bottom: 8px;
}

.checkout-modal > p {
    color: #768077;

    font-size: 13px;

    margin-bottom: 20px;
}

.checkout-modal input,
.checkout-modal textarea,
.checkout-modal select {
    width: 100%;

    border: 1px solid #dce3da;

    padding: 13px;

    border-radius: 9px;

    margin-bottom: 12px;

    outline: none;

    font-family: inherit;
}

.checkout-modal textarea {
    height: 90px;

    resize: none;
}

.modal-close {
    position: absolute;

    right: 20px;
    top: 20px;
}


/* ================= RESPONSIVE ================= */

@media(max-width: 1000px) {

    nav {
        display: none;
    }

    .hero {
        flex-direction: column;

        gap: 60px;

        text-align: center;
    }

    .hero p {
        margin-left: auto;
        margin-right: auto;
    }

    .hero-buttons {
        justify-content: center;
    }

    .product-grid {
        grid-template-columns:
            repeat(2, 1fr);
    }

    .about {
        flex-direction: column;
    }

    .about-image {
        min-width: 100%;
    }

}

@media(max-width: 600px) {

    .header {
        padding: 0 4%;
    }

    .hero {
        padding: 60px 5%;
    }

    .hero-image {
        width: 290px;
        height: 290px;
    }

    .juice-card {
        width: 210px;

        padding: 20px;
    }

    .juice-icon {
        font-size: 60px;
    }

    .products-section {
        padding: 60px 5%;
    }

    .section-heading {
        flex-direction: column;

        align-items: stretch;

        gap: 20px;
    }

    .search-box {
        width: 100%;
    }

    .product-grid {
        grid-template-columns: 1fr;
    }

    .offer {
        margin: 0 5% 60px;

        padding: 30px;

        flex-direction: column;

        gap: 30px;

        text-align: center;
    }

    .about {
        padding: 60px 5%;
    }

    .about-image {
        height: 250px;
    }

    .features {
        grid-template-columns: 1fr;
    }

    .footer-main {
        grid-template-columns: 1fr;
    }

}
