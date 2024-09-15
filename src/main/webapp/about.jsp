<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurants</title>
    <link rel="stylesheet" href="css/about.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="boxicons-2.0.9/css/boxicons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
</head>
<body>
    <button id="scrollToTopButton" class="scroll-to-top">^</button>

   <jsp:include page="nav.jsp" />

    <!-- About Us Section -->
    <div class="about-us-section">
        <div class="hero-section animate-on-scroll">
          
        </div>
        <div class="text-container">
            <h2 class="animate-on-scroll">About Us</h2>
            <p class="animate-on-scroll">At ABC Restaurants, we believe that great food should be enjoyed in a warm and inviting atmosphere. Our mission is to bring the best flavors from around the world to your table, crafted with passion and served with love.</p>
            <p class="animate-on-scroll">Founded in 1995, ABC Restaurants has been a hallmark of culinary excellence. We pride ourselves on using only the freshest ingredients and following traditional cooking techniques to deliver dishes that are both authentic and innovative.</p>
            <p class="animate-on-scroll">Whether you're dining with friends, family, or enjoying a meal alone, we ensure that every experience at ABC Restaurants is memorable. From our world-class chefs to our attentive service, we are dedicated to making your dining experience exceptional.</p>
            <p class="animate-on-scroll">Come visit us and discover a menu that blends comfort, flavor, and creativity. We can't wait to serve you!</p>
        </div>

        <div class="image-gallery">
            <img src="img/img1.jpg" alt="Dining Experience" class="gallery-image animate-on-scroll">
            <img src="img/f1.jpg" alt="Gourmet Dish" class="gallery-image animate-on-scroll">
            <img src="img/chef.jpeg" alt="Chef at Work" class="gallery-image animate-on-scroll">
        </div>
    </div>

    <!-- Team Section -->
    <section id="teams">
        <h3 class="text-center animate-on-scroll">Our Passionate Team</h3>
        <h2 class="text-center animate-on-scroll">Meet Our <span class="text-secondary">Executive Team</span></h2>
        <p class="text-center animate-on-scroll">Led by our Executive Chef and hospitality experts, we strive to bring you a dining experience like no other.</p>
        <div class="wrapper">
            <div class="card-items">
                <div class="card animate-on-scroll">
                    <div class="card-header">
                        <img src="img/m2.jpg" alt="Executive Chef">
                    </div>
                    <div class="card-body">
                        <h3>Johnathan Stewart</h3>
                        <h4>Executive Chef</h4>
                        <div class="social-icons">
                            <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
                            <a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a>
                            <a href="https://facebook.com"><i class="fab fa-facebook"></i></a>
                            <a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="card animate-on-scroll">
                    <div class="card-header">
                        <img src="img/m1.jpg" alt="General Manager">
                    </div>
                    <div class="card-body">
                        <h3>Elizabeth Brown</h3>
                        <h4>General Manager</h4>
                        <div class="social-icons">
                            <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
                            <a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a>
                            <a href="https://facebook.com"><i class="fab fa-facebook"></i></a>
                            <a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="card animate-on-scroll">
                    <div class="card-header">
                        <img src="img/m3.jpg" alt="Sommelier">
                    </div>
                    <div class="card-body">
                        <h3>Michael Turner</h3>
                        <h4>Sommelier</h4>
                        <div class="social-icons">
                            <a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
                            <a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a>
                            <a href="https://facebook.com"><i class="fab fa-facebook"></i></a>
                            <a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
   
    <jsp:include page="footer.jsp" />
    <script src="js/about.js"></script>
</body>
</html>
