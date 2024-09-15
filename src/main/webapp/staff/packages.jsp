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
        <h1>Manage Packages</h1>
        
        <!-- Form to Add or Update Package -->
      <form id="managePackageForm" action="ManagePackageServlet" method="POST">
    <input type="hidden" id="packageId" name="packageId">
    <table>
        <tr>
            <td><label for="packageName">Package Name:</label></td>
            <td><input type="text" id="packageName" name="packageName" required></td>
        </tr>
        <tr>
            <td><label for="packageDescription">Package Description:</label></td>
            <td><textarea id="packageDescription" name="packageDescription" required></textarea></td>
        </tr>
        <tr>
            <td><label for="packagePrice">Price:</label></td>
            <td><input type="number" id="packagePrice" name="packagePrice" required></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Save Package</button>
            </td>
        </tr>
    </table>
   </form>


        <!-- Buttons to Manage Packages -->
        <div class="manage-buttons">
            <button id="viewPackagesBtn">View Packages</button>
            <button id="deletePackageBtn">Delete Package</button>
            <button id="updatePackageBtn">Update Package</button>
        </div>
        
        <div id="packageList">
            <!-- Package list will be loaded here -->
        </div>
    </div>

    <script src="../js/admindashboard.js"></script>
</body>
</html>
