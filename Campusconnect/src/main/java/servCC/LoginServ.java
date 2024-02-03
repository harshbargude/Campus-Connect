package servCC;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try {
            	
            	PrintWriter out = response.getWriter();
            	
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/campusconnect", "root", "1753iBtQNOVEM2004");

                String e = request.getParameter("S_email");
                String p = request.getParameter("S_password");
                

                PreparedStatement st = con.prepareStatement("SELECT U_id FROM userdata WHERE U_email=? AND U_password=?");

                st.setString(1, e);
                st.setString(2, p);

                ResultSet rs = st.executeQuery();
                
                String role = authenticateUser(e,p);
                
                if(rs.next()) {
                	if( e.equals("Admin@gmail.com") && p.equals("admin123")) {
                		//RequestDispatcher rd = request.getRequestDispatcher("ADMIN/Dashboard.jsp");
                		//rd.forward(request, response);
                		response.sendRedirect("ADMIN/Dashboard.jsp");
                	}else {
                		RequestDispatcher rd = request.getRequestDispatcher("UserDashboard.jsp");
                    	rd.forward(request, response);
                	}
                	
                }else {
                	out.println("<font color=red size=18>Login Failed!!");
                	out.println("<a href=login.jsp>Try Again!!");
                }
                //con.close();

            } catch (SQLException e) {
                e.printStackTrace();
                System.err.println("SQLException: " + e.getMessage());
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.err.println("ClassNotFoundException: " + e.getMessage());
        }
    }

	private String authenticateUser(String e, String p) {
		// TODO Auto-generated method stub
		return null;
	}

}
