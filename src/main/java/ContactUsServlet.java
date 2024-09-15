
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Database connection details
            String JDBC_URL = "jdbc:mysql://localhost:3308/yourdatabase"; // Replace with your database URL
            String JDBC_USER = "root";
            String JDBC_PASSWORD = "12345678";

            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Fetch contact details
            String sql = "SELECT * FROM contact_us";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            // Set results as request attribute
            request.setAttribute("contactDetails", rs);
            request.getRequestDispatcher("contactus.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            // Handle errors (e.g., redirect to an error page or display an error message)
            response.sendRedirect("error.jsp");

        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }
    }
}
