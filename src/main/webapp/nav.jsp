
<!DOCTYPE html>
<html>
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
    <button id="scrollToTopButton" class="scroll-to-top">^</button>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="container">
            <div class="left-section">
                <a href="home.html" class="brand">ABC Restaurant</a>
                <ul class="nav-links">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="menu.jsp">Menu</a></li>
                    <li><a href="reservations.jsp">Reservations</a></li>
                    <li><a href="packages.jsp">Packages</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                  <div class="search__container">
                      <i class="fas fa-search search__icon"></i>
                      <input class="search__input" type="text" placeholder="Search">
                  </div>  
                </ul>
            </div>
            <div class="right-section">
               <a href="profile.jsp" class="nav-icon"><i class="fas fa-user"></i> Profile</a>
            </div>
        </div>
    </nav>
    <script src="js/home.js"></script>
</body>
</html>