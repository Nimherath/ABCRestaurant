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
        <h1>Manage Menu</h1>
        
        <!-- Form to Add or Update Menu Item -->
        <form id="manageMenuForm" action="ManageMenuServlet" method="POST">
            <input type="hidden" id="menuId" name="menuId">
            <table>
                <tr>
                    <td><label for="menuName">Menu Item Name:</label></td>
                    <td><input type="text" id="menuName" name="menuName" required></td>
                </tr>
                <tr>
                    <td><label for="menuDescription">Description:</label></td>
                    <td><textarea id="menuDescription" name="menuDescription" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="menuPrice">Price:</label></td>
                    <td><input type="number" id="menuPrice" name="menuPrice" required></td>
                </tr>
                <tr>
                    <td><label for="menuCategory">Category:</label></td>
                    <td>
                        <select id="menuCategory" name="menuCategory" required>
                            <option value="">Select Category</option>
                            <option value="appetizer">Appetizer</option>
                            <option value="maincourse">Main Course</option>
                            <option value="dessert">Dessert</option>
                            <option value="beverage">Beverage</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit">Save Menu Item</button>
                    </td>
                </tr>
            </table>
        </form>

        <!-- Buttons to Manage Menu Items -->
        <div class="manage-buttons">
            <button id="viewMenuItemsBtn">View Menu Items</button>
            <button id="deleteMenuItemBtn">Delete Menu Item</button>
            <button id="updateMenuItemBtn">Update Menu Item</button>
        </div>
        
        <div id="menuList">
            <!-- Menu list will be loaded here -->
        </div>
    </div>

    <script src="../js/admindashboard.js"></script>
</body>
</html>
