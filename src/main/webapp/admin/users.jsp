<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Manage Users</title>
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
            <li><a href="viewcontactus.jsp">Contact Us</a></li>
            <li><a href="reservations.jsp">Reservations</a></li>
        </ul>
    </div>
    <div class="main-content">
        <h1>Manage Users</h1>
        
        <!-- Form to Add or Update User -->
        <form id="manageUserForm" action="ManageUserServlet" method="POST">
            <input type="hidden" id="userId" name="userId">
            <table>
                <tr>
                    <td><label for="username">Username:</label></td>
                    <td><input type="text" id="username" name="username" required></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="email" id="email" name="email" required></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input type="password" id="password" name="password" required></td>
                </tr>
                <tr>
                    <td><label for="role">Role:</label></td>
                    <td>
                        <select id="role" name="role" required>
                            <option value="">Select Role</option>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                            <option value="user">Staff</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit">Save User</button>
                    </td>
                </tr>
            </table>
        </form>

        <!-- Buttons to Manage Users -->
        <div class="manage-buttons">
            <button id="viewUsersBtn">View Users</button>
            <button id="deleteUserBtn">Delete User</button>
            <button id="updateUserBtn">Update User</button>
        </div>
        
        <div id="userList">
            <!-- User list will be loaded here -->
        </div>
    </div>

    <script src="../js/admindashboard.js"></script>
</body>
</html>
