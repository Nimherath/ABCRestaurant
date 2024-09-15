
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vogue Collection</title>
    <link rel="stylesheet" href="css/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
</head>
<body>
    <!-- Navigation Bar -->
    <jsp:include page="nav.jsp" />

<!--contact us section-->

    <div class="main-container">
        <section id="contact-section">
            <h2>Contact Us</h2>
           <form id="contact-form" action="ContactServlet" method="post">
                <div class="input-group">
                    <label for="name"><i class="fas fa-user"></i></label>
                    <input type="text" id="name" name="name" placeholder="Your Name" required>
                </div>
                <div class="input-group">
                    <label for="email"><i class="fas fa-envelope"></i></label>
                    <input type="email" id="email" name="email" placeholder="Your Email Address" required>
                </div>
                <div class="input-group">
                    <label for="phone"><i class="fas fa-phone"></i></label>
                    <input type="tel" id="phone" name="phone" placeholder="Your Phone Number" required>
                </div>
                <div class="input-group">
                    <label for="message"><i class="fas fa-comment"></i></label>
                    <textarea id="message" name="message" placeholder="Your Message" required></textarea>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </section>

        <section id="details-section">
            <h2>Visit Us</h2>
            <p>ABC Restaurants</p>
            <p>123 Street</p>
            <p>Sri Lanka</p>
            <p>Phone: +94 11 456 7890</p>
            <p>Email: abcrestaurants@gmail.com</p>
        </section>

        <section id="map-section">
            <h2>Find Us</h2>
            <div id="map-container">
                <!-- Google Map Embed -->
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12090.2286352273!2d-74.0059413!3d40.7127837!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQyJzQ2LjAiTiA3NMKwMDAnMjIuOCJX!5e0!3m2!1sen!2sus!4v1622838834238!5m2!1sen!2sus"
                    width="600"
                    height="450"
                    style="border:0;"
                    allowfullscreen=""
                    loading="lazy">
                </iframe>
            </div>
        </section>
    </div>



    <!-- Footer -->
<jsp:include page="footer.jsp" />

    <script src="js/contact.js"></script>
</body>
</html>
