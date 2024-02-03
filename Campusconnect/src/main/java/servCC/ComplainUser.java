package servCC;

//import java.io.InputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class inServlet
 */
@WebServlet("/ComplainUser")
public class ComplainUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try {
            	PrintWriter out = response.getWriter();
            	
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/campusconnect", "root", "1753iBtQNOVEM2004");

                //String u = request.getParameter("txtName");
                //String g = request.getParameter("txtGR");
                //String e = request.getParameter("txtEmail");
                //String p = request.getParameter("txtPass");
                
                String u = request.getParameter("C_name");
                String e = request.getParameter("C_email");
                String g = request.getParameter("C_GR");
                String p = request.getParameter("C_phonenumber");
                String d = request.getParameter("complaint-date");
                String a = request.getParameter("C_address");
                String c = request.getParameter("complaint");
                String category = request.getParameter("category-code");
                
                
                //InputStream doc = request.getParameter("C_upload-files");
                
                

                // Your SQL query should include a placeholder for the binary data
                PreparedStatement st = con.prepareStatement("INSERT INTO complaintsofuser(User_ID, Name, EmailAddress, PhoneNumber, Date, IncidentAddress, Complaint, Category) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

                st.setString(1, g);       // User_ID
                st.setString(2, u);       // Name
                st.setString(3, e);       // EmailAddress
                st.setString(4, p);       // PhoneNumber
                st.setString(5, d);       // Date
                st.setString(6, a);       // IncidentAddress
                st.setString(7, c);       // Complaint
                st.setString(8, category); // Category
                //st.setBinaryStream(9, filePart);
                
                
                int rowsInserted = st.executeUpdate();

                if (rowsInserted > 0) {
                    System.out.println("Data inserted successfully");
                    out.println("<font color=green size=18>Complaint submitted successfully");
                	out.println("<a href=UserDashboard.jsp>Back to Dashboard");
                } else {
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

