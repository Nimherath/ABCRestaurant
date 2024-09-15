
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
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


<!-- category cards -->
<div class="hero-section">
  <h1 class="ml12">Our Exclusive Menu</h1>
  <p class="ml12">Explore our wide selection of delicious meals and beverages.</p>
</div>

<br><br>

<!-- Category Cards -->
<div class="cat-container">
  <div class="category-item">
      <img src="img/f7.jpg" alt="Appetizers">
      <div class="btn-container">
          <a href="#" class="btn-link"><button class="btn">Appetizers</button></a>
      </div>
  </div>
  <div class="category-item">
      <img src="img/f1.jpg" alt="Main Course">
      <div class="btn-container">
          <a href="#" class="btn-link"><button class="btn">Main Course</button></a>
      </div>
  </div>
  <div class="category-item">
      <img src="img/f9.avif" alt="Desserts">
      <div class="btn-container">
          <a href="#" class="btn-link"><button class="btn">Desserts</button></a>
      </div>
  </div>
  <div class="category-item">
      <img src="img/f10.jpg" alt="Beverages">
      <div class="btn-container">
          <a href="#" class="btn-link"><button class="btn">Beverages</button></a>
      </div>
  </div>

<div class="category-item">
    <img src="img/f6.jpg" alt="Meat Dishes">
    <div class="btn-container">
        <a href="#" class="btn-link"><button class="btn">Meat Dishes</button></a>
    </div>
</div>


<div class="category-item">
    <img src="img/f7.jpg" alt="Fresh Dishes">
    <div class="btn-container">
        <a href="#" class="btn-link"><button class="btn">Fresh Dishes</button></a>
    </div>
</div>
</div>

<br><br>

<!-- Food Item Cards Section -->
<section>
  <div class="row">
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/food1.jpg">
            <img class="pic-2" src="img/food1.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Grilled Chicken Salad</a></h3>
          <div class="price">SLRS 750</div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/food2.jpg">
            <img class="pic-2" src="img/food2.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Spaghetti Carbonara</a></h3>
          <div class="price">SLRS 900</div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/food3.jpg">
            <img class="pic-2" src="img/food3.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Chocolate Lava Cake</a></h3>
          <div class="price">SLRS 500</div>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="product-grid">
        <div class="product-image">
          <a href="#" class="image">
            <img class="pic-1" src="img/food4.jpg">
            <img class="pic-2" src="img/food4.jpg">
          </a>
          <ul class="product-links">
            <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
          </ul>
        </div>
        <div class="product-content">
          <h3 class="title"><a href="#">Mango Smoothie</a></h3>
          <div class="price">SLRS 300</div>
        </div>
      </div>
    </div>
  </div>
</section>



<br><br>

<!--  section -->



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

