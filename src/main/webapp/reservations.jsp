<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Reservation</title>
    <link rel="stylesheet" href="css/reservation.css">
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

    <!-- Reservation Page -->
    <div class="reservation-container">
        <div class="reservation-header">
            <h1>Make Your Reservation</h1>
            <p>Book a table and enjoy the best food in town. Please check the availability below.</p>
        </div>

        <!-- Availability Section -->
        <div class="availability-section">
            <h2>Check Availability</h2>
            <div class="availability-table">
                <table>
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Lunch (12:00 PM - 3:00 PM)</th>
                            <th>Dinner (6:00 PM - 10:00 PM)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Sept 6, 2024</td>
                            <td>Available</td>
                            <td>Fully Booked</td>
                        </tr>
                        <tr>
                            <td>Sept 7, 2024</td>
                            <td>Few Tables Left</td>
                            <td>Available</td>
                        </tr>
                        <tr>
                            <td>Sept 8, 2024</td>
                            <td>Available</td>
                            <td>Fully Booked</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Reservation Form -->
        <div class="reservation-form-section">
            <h2>Reservation Form</h2>
            <form action="ReservationServlet" method="POST" class="reservation-form">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Your Name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Your Email" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Your Phone Number" required>
                </div>

                <div class="form-group">
                    <label for="date">Reservation Date</label>
                    <input type="date" id="date" name="date" required>
                </div>

                <div class="form-group">
                    <label for="time">Reservation Time</label>
                    <select id="time" name="time" required>
                        <option value="" disabled selected>Select a time</option>
                        <option value="12:00 PM">12:00 PM</option>
                        <option value="1:00 PM">1:00 PM</option>
                        <option value="2:00 PM">2:00 PM</option>
                        <option value="6:00 PM">6:00 PM</option>
                        <option value="7:00 PM">7:00 PM</option>
                        <option value="8:00 PM">8:00 PM</option>
                        <option value="9:00 PM">9:00 PM</option>
                        <option value="10:00 PM">10:00 PM</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="guests">Number of Guests</label>
                    <input type="number" id="guests" name="guests" placeholder="No. of Guests" min="1" max="10" required>
                </div>

                <div class="form-group">
                    <label for="special">Special Requests (Optional)</label>
                    <textarea id="special" name="special" placeholder="Any special requests..."></textarea>
                </div>

                <div class="form-group">
                    <button type="submit" class="submit-btn">Submit Reservation</button>
                </div>
            </form>
        </div>
    </div>

    <br><br>

    <!-- Feature Section (Reused from home page) -->
    <div class="features">
        <div class="feature">
            <div class="icon">
                <i class="fa-solid fa-money-bill"></i>
            </div>
            <h3>Value for Money</h3>
            <p>Discover unbeatable value for your hard-earned money. We offer high-quality products at prices that won’t break the bank.</p>
        </div>
        <div class="feature">
            <div class="icon">
                <i class="fa-solid fa-hand-holding-dollar"></i>
            </div>
            <h3>Customer Satisfaction</h3>
            <p>Your satisfaction is our success story. We make sure every customer leaves happy and comes back for more.</p>
        </div>
        <div class="feature">
            <div class="icon">
                <i class="fa-solid fa-medal"></i>
            </div>
            <h3>Quality Service</h3>
            <p>Experience high-quality service and excellent hospitality. Your dining experience matters to us.</p>
        </div>
        <div class="feature">
            <div class="icon">
                <i class="fa-solid fa-truck"></i>
            </div>
            <h3>Quick Service</h3>
            <p>Enjoy quick and efficient service. We value your time, and we ensure a fast and seamless experience.</p>
        </div>
    </div>

    <br><br>

    <jsp:include page="footer.jsp" />

    <script src="js/home.js"></script>
</body>

</html>
