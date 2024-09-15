<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Dashboard</title>
    <link rel="stylesheet" href="../css/admindashboard.css">
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Staff Panel</h2>
        </div>
        <ul class="nav-list">
            <li><a href="packages.jsp">Packages</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="viewcontactus.jsp">Contact Us</a></li>
            <li><a href="reservations.jsp">Reservations</a></li>
        </ul>
    </div>
    <div class="main-content">
        <h1>Manage Reservations</h1>

        <!-- Form to Add a New Reservation -->
        <form id="addReservationForm" action="ManageReservationsServlet" method="POST">
            <input type="hidden" id="reservationId" name="reservationId">
            <h2>Add New Reservation</h2>
            <table>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="email" id="email" name="email" required></td>
                </tr>
                <tr>
                    <td><label for="phone">Phone:</label></td>
                    <td><input type="tel" id="phone" name="phone" required></td>
                </tr>
                <tr>
                    <td><label for="date">Date:</label></td>
                    <td><input type="date" id="date" name="date" required></td>
                </tr>
                <tr>
                    <td><label for="time">Time:</label></td>
                    <td><input type="time" id="time" name="time" required></td>
                </tr>
                <tr>
                    <td><label for="guests">Number of Guests:</label></td>
                    <td><input type="number" id="guests" name="guests" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit">Add Reservation</button>
                    </td>
                </tr>
            </table>
        </form>

        <!-- Table to Manage Reservations -->
        <table id="reservationsTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Guests</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Reservations will be loaded here -->
            </tbody>
        </table>

        <!-- Buttons to Manage Reservations -->
        <div class="manage-buttons">
            <button id="refreshReservationsBtn">Refresh Reservations</button>
            <button id="deleteReservationBtn">Delete Selected Reservation</button>
            <button id="updateReservationBtn">Update Reservation</button>
        </div>
    </div>

    <script src="../js/admindashboard.js"></script>
</body>
</html>
