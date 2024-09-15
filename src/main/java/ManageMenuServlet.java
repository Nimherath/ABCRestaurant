

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManageMenuServlet")
public class ManageMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3308/yourdatabase"; // Replace with your database URL
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "12345678";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            if ("add".equals(action)) {
                addMenuItem(request, conn);
                response.sendRedirect("menu.jsp");
            } else if ("update".equals(action)) {
                updateMenuItem(request, conn);
                response.sendRedirect("menu.jsp");
            } else if ("delete".equals(action)) {
                deleteMenuItem(request, conn);
                response.sendRedirect("menu.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    private void addMenuItem(HttpServletRequest request, Connection conn) throws Exception {
        String name = request.getParameter("menuName");
        String description = request.getParameter("menuDescription");
        double price = Double.parseDouble(request.getParameter("menuPrice"));
        String category = request.getParameter("menuCategory");

        String sql = "INSERT INTO menu (name, description, price, category) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setDouble(3, price);
            stmt.setString(4, category);
            stmt.executeUpdate();
        }
    }

    private void updateMenuItem(HttpServletRequest request, Connection conn) throws Exception {
        int id = Integer.parseInt(request.getParameter("menuId"));
        String name = request.getParameter("menuName");
        String description = request.getParameter("menuDescription");
        double price = Double.parseDouble(request.getParameter("menuPrice"));
        String category = request.getParameter("menuCategory");

        String sql = "UPDATE menu SET name = ?, description = ?, price = ?, category = ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setDouble(3, price);
            stmt.setString(4, category);
            stmt.setInt(5, id);
            stmt.executeUpdate();
        }
    }

    private void deleteMenuItem(HttpServletRequest request, Connection conn) throws Exception {
        int id = Integer.parseInt(request.getParameter("menuId"));

        String sql = "DELETE FROM menu WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM menu")) {

            request.setAttribute("menuItems", rs);
            request.getRequestDispatcher("menu.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
