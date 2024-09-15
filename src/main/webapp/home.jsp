<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vogue Collection</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
</head>
<body>
<jsp:include page="nav.jsp" />


<!-- Image Slider -->
<div class="slider">
  <div class="slides">
      <div class="slide"><img src="img/img1.jpg" alt="Image 1"></div>
      <div class="slide"><img src="img/img3.jpg" alt="Image 3"></div>
      <div class="slide"><img src="img/img4.jpg" alt="Image 4"></div>    
       <div class="slide"><img src="img/img5.jpeg" alt="Image 3"></div>
      <div class="slide"><img src="img/img4.jpg" alt="Image 4"></div>   
  </div>
    <button class="prev" onclick="prevSlide()">&#10094;</button>
    <button class="next" onclick="nextSlide()">&#10095;</button>
  </div>

    <!-- Logos -->
    <div class="midlogo">
      <img src="img/logobar.png" alt="Brand logos">
    </div>

<!-- category cards -->
<div class="cat-container">
  <div class="category-item">
      <img src="img/bp.jpg" alt="birthday party">
      <div class="btn-container">
          <a href="product-M.html" class="btn-link"><button class="btn">Birthday Party</button></a>
      </div>
  </div>
  <div class="category-item">
      <img src="img/fm.jpg" alt="family party">
      <div class="btn-container">
          <a href="product-F.html" class="btn-link"><button class="btn">Family Party</button></a>
      </div>
  </div>
  <div class="category-item">
      <img src="img/me.jpg" alt="musical event">
      <div class="btn-container">
          <a href="product-K.html" class="btn-link"><button class="btn">Musical Event</button></a>
      </div>
  </div>
</div>

<br><br>

<!-- Product Cards Section -->
<div class="top-picks-container">
  <div class="top-picks">
    &#10521; Offers &#10522;
  </div>
</div>
<br><br>

<section>
  <div class="row">
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f1.jpg">
            <img class="pic-2" src="img/f1.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Leo Long Sleeve Knit Mini Dress</a></h3>
          <div class="price">SLRS 1000</div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f2.jpg">
            <img class="pic-2" src="img/f2.jpg">
          </a>
          <span class="product-sale-label">Best</span>

          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Bruce Fleece Hoodie</a></h3>
          <div class="price">
            <span>SLRS 2000</span> SLRS 1500
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f3.jpg">
            <img class="pic-2" src="img/f3.jpg">
          </a>
          <span class="product-sale-label">Best</span>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Kids NSB Icon Fleece Hoodie</a></h3>
          <div class="price">
            <span>SLRS 1750</span> SLRS 1300
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f4.jpeg">
            <img class="pic-2" src="img/f4.jpeg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Ranger Check Jacket</a></h3>
          <div class="price">SLRS 1500</div>
        </div>
      </div>
    </div>
  </div>
</section>
<br><br>

<!-- Product Cards Section 2-->
<section>
  <div class="row">
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f5.jpg">
            <img class="pic-2" src="img/f5.jpg ">
          </a>
            <span class="product-sale-label">Best</span>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Kids Crystal Cove Hoodie</a></h3>
          <div class="price">
            <span>SLRS 1450</span> SLRS 980
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f6.jpg">
            <img class="pic-2" src="img/f6.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Antoinette Mini Dress</a></h3>
          <div class="price">SLRS 1500</div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f7.jpg">
            <img class="pic-2" src="img/f7.jpg">
          </a>
          <span class="product-sale-label">Best</span>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">3 Baller True Knit Crew Sweatshirt</a></h3>
          <div class="price">
            <span>SLRS 1400</span> SLRS 960
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/f8.jpeg">
            <img class="pic-2" src="img/f8.jpeg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Ollie Sherpa Zip-Up Fleece Jacket</a></h3>
          <div class="price">SLRS 1700</div>
        </div>
      </div>
    </div>
  </div>
</section>
<br><br>

<!--  section -->

<div class="hero-section">
  <h1 class="ml12">Better taste for the planet</h1>
  <p class="ml12">Good food brings people together, great food makes memories.</p>
  <a href="product-M.html" class="shop-all-link">
    <button class="shop-all-btn">Reservations<i class="fas fa-arrow-right"></i></button>
</a>


</div>

<br><br><br><br>

<!-- video banner section -->

<div class="banner-video-container">
  <video class="banner-video" autoplay muted loop>
      <source src="img/vd1.mp4" type="video/mp4">
   
  </video>
</div>
<br><br><br>


<!-- Feature Section -->
<div class="features">
    <div class="feature">
        <div class="icon">
            <i class="fa-solid fa-utensils"></i>
        </div>
        <h3>Fresh Ingredients</h3>
        <p>We use only the freshest ingredients to prepare our dishes, ensuring quality in every bite.</p>
    </div>
    <div class="feature">
        <div class="icon">
            <i class="fa-solid fa-leaf"></i>
        </div>
        <h3>Organic & Healthy</h3>
        <p>Our menu features a variety of organic and healthy options for a balanced lifestyle.</p>
    </div>
    <div class="feature">
        <div class="icon">
            <i class="fa-solid fa-star"></i>
        </div>
        <h3>Chef's Special</h3>
        <p>Don't miss out on our exclusive dishes prepared by our experienced chefs, with love and creativity.</p>
    </div>
    <div class="feature">
        <div class="icon">
            <i class="fa-solid fa-clock"></i>
        </div>
        <h3>Quick Service</h3>
        <p>Our fast and efficient service ensures that your food is served hot and fresh in no time.</p>
    </div>
</div>

<br><br>
    <br><br>


<jsp:include page="footer.jsp" />

   
    <script src="js/home.js"></script>
</body>
</html>

