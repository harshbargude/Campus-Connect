<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <nav id="navbar-h">
        <div class="nav-container-h">
            <div class="logo-h">
                <h3>CampusConnect</h3>
            </div>
            <div class="navright-h">
                <div class="search-h">

                    <form action="" method="get">
                        <div class="inp-h">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            <input type="text" placeholder="search here.." name="search">
                        </div>
                    </form>

                </div>
                <div class="U-profile-menu-h">
                    <div class="U-profile-icon-h" id="U-profile-icon-h">
                        <img src="img/icons8-admin-100.png" alt="Profile Icon">
                    </div>
                    <div class="U-profile-dropdown-h" id="U-profile-dropdown-h">
                        <ul>
                            <li><a href="#">View Profile</a></li>
                            <li><a href="#">Edit Profile</a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </nav>
    <div id="panel-h">
        <div id="leftpanel-h">
            <div class="innerLP-h">
                <li><i class="fa-solid fa-pager"></i><a href="Dashboard.jsp">Dashboard</a></li>
                <li><i class="fa-solid fa-star"></i><a href="ReviewManage.jsp">Review</a></li>
                <li><i class="fa-solid fa-indent"></i><a href="IncidentManage.jsp">Incident</a></li>
                <li><i class="fa-solid fa-users"></i><a href="Users.jsp">Users</a></li>
                <li><i class="fa-solid fa-chart-column"></i><a href="Stats.html">Stats</a></li>
                <li><i class="fa-solid fa-comment"></i></i><a href="Chat.html">Chat Box</a></li>
                <li><i class="fa-solid fa-right-from-bracket"></i><a href="Logout.html">Log Out</a></li>
            </div>

<%@ page import="java.sql.*" %>
<%

	Connection conn = null;
	Statement stmt1 = null;
	Statement stmt2 = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;

   String url = "jdbc:mysql://localhost:3306/campusconnect";
   String username = "root";
   String password = "1753iBtQNOVEM2004";
   int totalSum = 0;
   
   try {
       Class.forName("com.mysql.jdbc.Driver");
       conn = DriverManager.getConnection(url, username, password);
       String sql = "SELECT COUNT(*) AS ComplaintsR FROM complaintsofuser";
       stmt1 = conn.createStatement();
       rs1 = stmt1.executeQuery(sql);
       
       String sql1 = "SELECT COUNT(*) AS NoOfReviews FROM review_of_students;";
       stmt2 = conn.createStatement();
       rs2 = stmt2.executeQuery(sql1);
       
       
       %>
       
       
     



        </div>
        <% while (rs1.next()) { %>
        <div id="rightpanel-h">
            <div class="DC1-h">
                <h1>Dashboard</h1>
            </div>
            <div class="belowDash-h">
                <div class="sbDash-h" id="1D-h">
                    <div class="sb1-h" id="s10D-h">
                        Reported Incident
                    </div>
                    <div class="sb1-h" id="s11D-h">
                        <span><%= rs1.getInt("ComplaintsR")%></span>
                    </div>
                </div>  
                
                <%          }
        			rs1.close();
       				stmt1.close();
       			%>

                <div class="sbDash-h" id="2D-h">
                    <div class="sb1-h" id="s10D-h">
                        Resolved Incident
                    </div>
                    <div class="sb1-h" id="s11D-h">
                        <span>0</span>
                    </div>
                </div>
                <% while (rs2.next()) { %>
                <div class="sbDash-h" id="3D-h">
                    <div class="sb1-h" id="s10D-h">
                        Reported Review
                    </div>
                    <div class="sb1-h" id="s11D-h">
                        <span><%= rs2.getInt("NoOfReviews")%></span>
                        
                    </div>
                </div>
                <%          }            %>
            </div>
            

<%
       rs2.close();
       stmt2.close();
       conn.close();
   } catch (Exception e) {
       e.printStackTrace();
   }
%>
            
            
            <footer>
                <div class="footer" id="footer">
                    
                </div>
            </footer>
        </body>
</html>