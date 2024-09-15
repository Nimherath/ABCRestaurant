<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Manage Contact Us</title>
    <link rel="stylesheet" href="../css/admindashboard.css">
</head>
<body>
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Admin Panel</h2>
        </div>
        <ul class="nav-list">
            <li><a href="packages.jsp">Packages</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="users.jsp">Users</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
            <li><a href="reservations.jsp">Reservations</a></li>
        </ul>
    </div>
    <div class="main-content">
        <h1>Manage Contact Us</h1>

        <!-- Table to View Contact Us Details -->
        <table id="contactUsTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Message</th>
                    <th>Date Submitted</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Contact details will be loaded here -->
            </tbody>
        </table>

        <!-- Buttons to Manage Contact Us Entries -->
        <div class="manage-buttons">
            <button id="refreshContactUsBtn">Refresh Contact Us</button>
            <button id="deleteContactUsBtn">Delete Selected Contact</button>
            <button id="viewContactUsBtn">View Contact Details</button>
        </div>
    </div>

    <script src="../js/admindashboard.js"></script>
</body>
</html>
