package servCC;

	import java.io.IOException;
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

	/**
	 * Servlet implementation class inServlet
	 */
	@WebServlet("/ReviewUser")
	public class ReviewUser extends HttpServlet {
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
	                
	                String name = request.getParameter("RUname");
	                String id = request.getParameter("RUid");
	                String r1 = request.getParameter("rating1");
	                String r2 = request.getParameter("rating2");
	                String r3 = request.getParameter("rating3");
	                String r4 = request.getParameter("rating4");
	                String r5 = request.getParameter("rating5");
	                String r6 = request.getParameter("rating6");
	                String S = request.getParameter("suggestions");
	                //String category = request.getParameter("category-code");
	                //InputStream doc = request.getParameter("C_upload-files");
	                
	                

	                // Your SQL query should include a placeholder for the binary data
	                PreparedStatement st = con.prepareStatement("INSERT INTO review_of_students(class, library, canteen, auditorium, transportation, labs, suggest,S_Name,S_Id) VALUES (?,?,?, ?, ?, ?, ?, ?, ?)");

	                st.setString(1, r1);       // User_ID
	                st.setString(2, r2);       // Name
	                st.setString(3, r3);       // EmailAddress
	                st.setString(4, r4);       // PhoneNumber
	                st.setString(5, r5);       // Date
	                st.setString(6, r6);       // IncidentAddress
	                st.setString(7, S);  
	                st.setString(8, name);       // User_ID
	                st.setString(9, id); // Complaint
	                //st.setString(8, category); // Category
	                //st.setBinaryStream(9, doc);

	                int rowsInserted = st.executeUpdate();

	                if (rowsInserted > 0) {
	                    System.out.println("Data inserted successfully");
	                    out.println("<font color=green size=18>Review submitted successfully");
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



