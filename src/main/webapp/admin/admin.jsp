<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/admindashboard.css">
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Admin Panel</h2>
        </div>
        <ul class="nav-list">
                 <li><a href="packages.jsp">Packages</a></li>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="users.jsp">Users</a></li>
            <li><a href="viewcontactus.jsp">Contact Us</a></li>
            <li><a href="reservations.jsp">Reservations</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <header>
            <h1>Welcome to the Admin Dashboard</h1>
        </header>
        <section id="packages">
            <h2>Manage Packages</h2>
            <p>Here you can add, update, and delete packages.</p>
        </section>

        <section id="menu">
            <h2>Manage Menu</h2>
            <p>Here you can manage the restaurant's menu.</p>
        </section>

        <section id="users">
            <h2>Manage Users</h2>
            <p>View and manage registered users.</p>
        </section>

        <section id="contactus">
            <h2>Contact Us</h2>
            <p>View messages sent by users.</p>
        </section>

        <section id="reservations">
            <h2>Manage Reservations</h2>
            <p>View and manage reservations made by users.</p>
        </section>
    </div>

    <!-- Include footer -->
  
    <script src="../js/admindashboard.js"></script>
</body>
</html>
