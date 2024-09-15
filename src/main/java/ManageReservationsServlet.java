

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

@WebServlet("/ManageReservationsServlet")
public class ManageReservationsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3308/yourdatabase"; // Replace with your database URL
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "12345678";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            if ("add".equals(action)) {
                addReservation(request, conn);
                response.sendRedirect("reservations.jsp");
            } else if ("update".equals(action)) {
                updateReservation(request, conn);
                response.sendRedirect("reservations.jsp");
            } else if ("delete".equals(action)) {
                deleteReservation(request, conn);
                response.sendRedirect("reservations.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    private void addReservation(HttpServletRequest request, Connection conn) throws Exception {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int guests = Integer.parseInt(request.getParameter("guests"));

        String sql = "INSERT INTO reservations (name, email, phone, date, time, guests) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, date);
            stmt.setString(5, time);
            stmt.setInt(6, guests);
            stmt.executeUpdate();
        }
    }

    private void updateReservation(HttpServletRequest request, Connection conn) throws Exception {
        int id = Integer.parseInt(request.getParameter("reservationId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int guests = Integer.parseInt(request.getParameter("guests"));

        String sql = "UPDATE reservations SET name = ?, email = ?, phone = ?, date = ?, time = ?, guests = ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, date);
            stmt.setString(5, time);
            stmt.setInt(6, guests);
            stmt.setInt(7, id);
            stmt.executeUpdate();
        }
    }

    private void deleteReservation(HttpServletRequest request, Connection conn) throws Exception {
        int id = Integer.parseInt(request.getParameter("reservationId"));

        String sql = "DELETE FROM reservations WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM reservations")) {

            request.setAttribute("reservations", rs);
            request.getRequestDispatcher("reservations.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
