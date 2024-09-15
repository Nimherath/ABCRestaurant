<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Packages</title>
    <link rel="stylesheet" href="css/packages.css">
</head>
<body>
<jsp:include page="nav.jsp" />

    <section id="packages">
        <div class="package-card" id="family">
            <img src="img/fm.jpg" alt="Family Package">
            <h2>Family Package</h2>
            <p>Enjoy a delightful family meal perfect for get-togethers.</p>
            <button class="btn">Book Now</button>
        </div>

        <div class="package-card" id="birthday">
            <img src="img/bp.jpg" alt="Birthday Party Package">
            <h2>Birthday Party Package</h2>
            <p>Celebrate your birthday with special decorations and menu.</p>
            <button class="btn">Book Now</button>
        </div>

        <div class="package-card" id="hightea">
            <img src="img/img3.jpg" alt="High Tea Package">
            <h2>High Tea Package</h2>
            <p>Indulge in a luxurious high tea experience with tasty treats.</p>
            <button class="btn">Book Now</button>
        </div>
    </section>

    <!-- Modal for Package Details -->
    <div id="packageModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <!-- Dynamic content will be injected here from JS -->
        </div>
    </div>
    <jsp:include page="footer.jsp" />

    <script src="js/packages.js"></script>
</body>
</html>
