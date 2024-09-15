import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/ManagePackageServlet")
public class ManagePackageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String JDBC_URL = "jdbc:mysql://localhost:3308/restaurant"; // Replace with your database URL
    private static final String JDBC_USER = "root"; // Replace with your database user
    private static final String JDBC_PASSWORD = "12345678"; // Replace with your database password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String packageId = request.getParameter("packageId");
        String packageName = request.getParameter("packageName");
        String packageDescription = request.getParameter("packageDescription");
        String packagePrice = request.getParameter("packagePrice");

        Connection conn = null;
        PreparedStatement pstmt = null;
        String resultMessage = "";

        try {
            // Establish database connection
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            if ("add".equals(action)) {
                // Insert new package
                String sql = "INSERT INTO packages (packageName, packageDescription, packagePrice) VALUES (?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, packageName);
                pstmt.setString(2, packageDescription);
                pstmt.setDouble(3, Double.parseDouble(packagePrice));
                pstmt.executeUpdate();
                resultMessage = "Package added successfully";
            } else if ("update".equals(action)) {
                // Update existing package
                String sql = "UPDATE packages SET packageName = ?, packageDescription = ?, packagePrice = ? WHERE packageId = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, packageName);
                pstmt.setString(2, packageDescription);
                pstmt.setDouble(3, Double.parseDouble(packagePrice));
                pstmt.setInt(4, Integer.parseInt(packageId));
                pstmt.executeUpdate();
                resultMessage = "Package updated successfully";
            } else if ("delete".equals(action)) {
                // Delete package
                String sql = "DELETE FROM packages WHERE packageId = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, Integer.parseInt(packageId));
                pstmt.executeUpdate();
                resultMessage = "Package deleted successfully";
            } else if ("get".equals(action)) {
                // Get package details
                String sql = "SELECT * FROM packages WHERE packageId = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, Integer.parseInt(packageId));
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    // Convert the result to JSON format
                    response.setContentType("application/json");
                    response.getWriter().println(new Gson().toJson(new Package(
                        rs.getInt("packageId"),
                        rs.getString("packageName"),
                        rs.getString("packageDescription"),
                        rs.getDouble("packagePrice")
                    )));
                }
                return;
            } else if ("view".equals(action)) {
                // View all packages
                String sql = "SELECT * FROM packages";
                pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery();
                List<Package> packages = new ArrayList<>();
                while (rs.next()) {
                    packages.add(new Package(
                        rs.getInt("packageId"),
                        rs.getString("packageName"),
                        rs.getString("packageDescription"),
                        rs.getDouble("packagePrice")
                    ));
                }
                response.setContentType("application/json");
                response.getWriter().println(new Gson().toJson(packages));
                return;
            }

            response.getWriter().println(resultMessage);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            // Clean up
            if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }

    class Package {
        private int packageId;
        private String packageName;
        private String packageDescription;
        private double packagePrice;

        public Package(int packageId, String packageName, String packageDescription, double packagePrice) {
            this.packageId = packageId;
            this.packageName = packageName;
            this.packageDescription = packageDescription;
            this.packagePrice = packagePrice;
        }

        public int getPackageId() { return packageId; }
        public String getPackageName() { return packageName; }
        public String getPackageDescription() { return packageDescription; }
        public double getPackagePrice() { return packagePrice; }
    }
}
