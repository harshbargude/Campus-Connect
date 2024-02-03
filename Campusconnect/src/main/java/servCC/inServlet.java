package servCC;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inServlet
 */
@WebServlet("/inServlet")
public class inServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try {
            	PrintWriter out = response.getWriter();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/campusconnect", "root", "1753iBtQNOVEM2004");

                String u = request.getParameter("txtName");
                String g = request.getParameter("txtGR");
                String e = request.getParameter("txtEmail");
                String p = request.getParameter("txtPass");

                PreparedStatement st = con.prepareStatement("INSERT INTO userdata (U_id, U_Name, U_email, U_password) VALUES (?, ?, ?, ?)");

                st.setString(1, g);
                st.setString(2, u);
                st.setString(3, e);
                st.setString(4, p);

                int rowsInserted = st.executeUpdate();

                if (rowsInserted > 0) {
                    System.out.println("Data inserted successfully");
                    out.println("<font color=green size=18>Account Created Succesfully");
                	out.println("<a href=login.jsp>Login Now");
                } else {
                	out.println("<font color=red size=18>SignUp Failed!!");
                	out.println("<a href=login.jsp>Try Again!!");
                    System.out.println("Failed to insert data");
                }
                
                
                
                
                
                

                con.close();

            } catch (SQLException e) {
                e.printStackTrace();
                System.err.println("SQLException: " + e.getMessage());
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.err.println("ClassNotFoundException: " + e.getMessage());
        }
    }

}
