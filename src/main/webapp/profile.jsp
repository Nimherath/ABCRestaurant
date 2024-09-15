<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>

    <!-- Include navigation -->
    <jsp:include page="nav.jsp" />

    <%
        //HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("userId"); // Assume userId is stored in session

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Database connection details
            String JDBC_URL = "jdbc:mysql://localhost:3308/restaurent";
            String JDBC_USER = "root";
            String JDBC_PASSWORD = "12345678";

            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Fetch user details from database
            String sql = "SELECT name, email, phone, address FROM users WHERE user_id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, userId);
            rs = stmt.executeQuery();

            if (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
    %>

    <section id="profile">
        <div class="profile-card">
            <img src="img/user-avatar.jpg" alt="User Avatar">
            <h2><%= name %></h2>
            <p>Email: <%= email %></p>
            <button class="btn" id="editProfileBtn">Edit Profile</button>
        </div>

        <!-- Profile Details Section -->
        <div class="profile-details">
            <h3>Profile Information</h3>
            <p><strong>Name:</strong> <%= name %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <p><strong>Phone:</strong> <%= phone %></p>
            <p><strong>Address:</strong> <%= address %></p>
        </div>
    </section>

    <!-- Modal for Editing Profile -->
    <div id="profileModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h3>Edit Profile</h3>
            <form id="editProfileForm" action="UpdateProfileServlet" method="POST">
                <input type="hidden" name="userId" value="<%= userId %>">
                
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%= name %>" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= email %>" required>

                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" value="<%= phone %>" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="<%= address %>" required>

                <button type="submit" class="btn">Save Changes</button>
            </form>
        </div>
    </div>

    <%
            } else {
                out.println("<p>User not found.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>

    <br><br>
    <!-- Include footer -->
    <jsp:include page="footer.jsp" />

    <script src="js/profile.js"></script>
</body>
</html>
