<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Happy Birthday Deepu 💖</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial, sans-serif;
    background:
      radial-gradient(circle at top,#ffd6e8,#e8d9ff 45%,#ccecff);
    min-height:100vh;
    overflow-x:hidden;
    color:#333;
}

/* Floating Hearts */

.heart{
    position:fixed;
    bottom:-50px;
    font-size:25px;
    animation:float 7s linear infinite;
    z-index:1;
}

@keyframes float{
    0%{
        transform:translateY(0) rotate(0);
        opacity:0;
    }

    20%{
        opacity:1;
    }

    100%{
        transform:translateY(-110vh) rotate(360deg);
        opacity:0;
    }
}

/* Main */

.container{
    width:100%;
    max-width:480px;
    margin:auto;
    padding:25px 15px 50px;
    position:relative;
    z-index:2;
}

.card{
    background:rgba(255,255,255,0.88);
    border-radius:35px;
    padding:25px 18px;
    text-align:center;
    box-shadow:0 15px 50px rgba(80,40,100,.25);
    backdrop-filter:blur(10px);
}

/* Heading */

.cake{
    font-size:55px;
    animation:bounce 1.5s infinite;
}

@keyframes bounce{
    50%{
        transform:translateY(-8px);
    }
}

.small{
    color:#9c27b0;
    font-size:18px;
    font-weight:bold;
    letter-spacing:2px;
}

h1{
    font-size:35px;
    margin:8px 0;
    color:#e83e8c;
}

.name{
    font-size:52px;
    font-weight:900;
    background:linear-gradient(90deg,#ff4081,#9c27b0,#ff4081);
    -webkit-background-clip:text;
    color:transparent;
    margin-bottom:18px;
}

/* Photo Gallery */

.gallery{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:12px;
    margin:20px 0;
}

.gallery img{
    width:100%;
    height:210px;
    object-fit:cover;
    border-radius:22px;
    border:5px solid white;
    box-shadow:0 8px 20px rgba(0,0,0,.18);
    transition:.4s;
}

.gallery img:hover{
    transform:scale(1.04);
}

/* Message */

.message{
    padding:20px 10px;
    line-height:1.8;
    font-size:16px;
    color:#4b4453;
}

.highlight{
    color:#e91e63;
    font-weight:bold;
}

.quote{
    background:#fff0f7;
    border-radius:20px;
    padding:17px;
    margin:15px 0;
    color:#8e2460;
    font-weight:bold;
    line-height:1.7;
}

/* Button */

button{
    border:none;
    outline:none;
    padding:15px 28px;
    border-radius:50px;
    color:white;
    font-size:17px;
    font-weight:bold;
    cursor:pointer;
    background:linear-gradient(90deg,#ff4081,#9c27b0);
    box-shadow:0 8px 20px rgba(156,39,176,.3);
}

button:active{
    transform:scale(.95);
}

/* Surprise */

#surprise{
    display:none;
    margin-top:20px;
    padding:20px;
    border-radius:22px;
    background:linear-gradient(135deg,#fff0f6,#f2e8ff);
    color:#7b1fa2;
    line-height:1.8;
    font-weight:bold;
}

/* Footer */

.footer{
    margin-top:25px;
    font-size:14px;
    color:#777;
}

</style>
</head>

<body>

<!-- Floating decorations -->

<div class="heart" style="left:5%;animation-delay:0s;">💖</div>
<div class="heart" style="left:18%;animation-delay:2s;">💕</div>
<div class="heart" style="left:35%;animation-delay:4s;">✨</div>
<div class="heart" style="left:55%;animation-delay:1s;">💜</div>
<div class="heart" style="left:75%;animation-delay:3s;">🎈</div>
<div class="heart" style="left:90%;animation-delay:5s;">💖</div>


<div class="container">

<div class="card">

    <div class="cake">🎂</div>

    <div class="small">
        A SPECIAL DAY FOR A SPECIAL GIRL
    </div>

    <h1>Happy Birthday</h1>

    <div class="name">
        Deepu 👑
    </div>


    <!-- FOUR PHOTOS -->

    <div class="gallery">

        <img src="photo1.jpeg" alt="Deepu Photo 1">

        <img src="photo2.jpeg" alt="Deepu Photo 2">

        <img src="photo3.jpeg" alt="Deepu Photo 3">

        <img src="photo4.jpeg" alt="Deepu Photo 4">

    </div>


    <!-- Birthday Message -->

    <div class="message">

        <p>
        <span class="highlight">
        Dear Deepu 💖
        </span>
        </p>

        <br>

        Life lo chala mandi friends
        parichayam avutharu...

        Kani kontha mandi matrame
        mana heart lo special place
        create cheskuntaru. 🫶

        <br><br>

        <span class="highlight">
        Nuvvu alanti oka very special friend. ❤️
        </span>

        <br><br>

        Mana friendship lo unna
        small small jokes,
        silly fights,
        fun moments,
        unforgettable memories...

        ivanni life lo eppatiki
        beautiful memories ga untayi. 🥰

    </div>


    <div class="quote">

        “Good friends are not just people
        we meet in life...

        They are the beautiful memories
        we carry forever.” 💕✨

    </div>


    <div class="message">

        Nee life lo happiness
        eppudu thakkuva kakudadhu. 🌸

        <br><br>

        Nee face lo smile eppudu
        ilaane undali. 😊

        <br><br>

        Nee dreams anni nijam avvali,
        nee life full of success,
        happiness and beautiful moments
        tho nindipovali. ✨

        <br><br>

        <span class="highlight">
        Happy Birthday once again Deepu! 🎂🎉
        </span>

        <br><br>

        Always stay happy,
        always keep smiling,
        and always be the wonderful person
        you are. 💖

        <br><br>

        <b>
        Our friendship forever! 🫂❤️
        </b>

    </div>


    <!-- Surprise Button -->

    <button onclick="showSurprise()">
        🎁 Open Your Surprise
    </button>


    <div id="surprise">

        🎉 SURPRISE DEEPU! 🎉

        <br><br>

        You are not just a friend...

        <br>

        You are one of the beautiful
        memories of my life. 💖

        <br><br>

        No matter where life takes us,
        I hope our friendship always
        stays this beautiful. 🫂✨

        <br><br>

        <span style="font-size:25px;">
        💕 Best Friends Forever 💕
        </span>

    </div>


    <div class="footer">

        Made with ❤️ specially for Deepu

    </div>

</div>

</div>


<script>

function showSurprise(){

    document.getElementById("surprise").style.display="block";

    document.querySelector("button").innerHTML =
        "💖 Best Friends Forever 💖";


    /* Confetti */

    for(let i=0;i<40;i++){

        let confetti=document.createElement("div");

        confetti.innerHTML=
        ["🎉","💖","✨","💕","🎈"][Math.floor(Math.random()*5)];

        confetti.style.position="fixed";
        confetti.style.left=
        Math.random()*100+"vw";

        confetti.style.top="-30px";

        confetti.style.fontSize=
        (20+Math.random()*20)+"px";

        confetti.style.zIndex="999";

        document.body.appendChild(confetti);

        let duration=
        2000+Math.random()*2000;

        confetti.animate(
            [
                {
                    transform:"translateY(0) rotate(0deg)",
                    opacity:1
                },
                {
                    transform:
                    "translateY(110vh) rotate(720deg)",
                    opacity:0
                }
            ],
            {
                duration:duration,
                easing:"linear"
            }
        );

        setTimeout(()=>{
            confetti.remove();
        },duration);
    }

}

</script>

</body>
</html>
