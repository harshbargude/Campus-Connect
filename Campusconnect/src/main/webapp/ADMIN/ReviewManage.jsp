<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/c2677cc3b5.js" crossorigin="anonymous"></script>

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
                <li><i class="fa-solid fa-comment"></i><a href="Chat.html">Chat Box</a></li>
                <li><i class="fa-solid fa-right-from-bracket"></i><a href="Logout.html">Log Out</a></li>

            </div>


        </div>
        <div id="rightpanel-h">
<%@ page import="java.sql.*" %>
	

<%
    // Database connection parameters
    String jdbcUrl = "jdbc:mysql://localhost:3306/campusconnect";
    String username = "root";
    String password = "1753iBtQNOVEM2004";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a connection to the database
        conn = DriverManager.getConnection(jdbcUrl, username, password);

        // Create and execute a SQL query
        String sql = "SELECT * FROM review_of_students";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Review data</title>
</head>
<body>
    <h1 class=align-center style="text-align:center;">Review List</h1>
    <form action="" method="get">
        <label for="studentId">Search by Student ID:</label>
        <input type="text" id="studentId" name="studentId">
    </form>
    <table border="1" color=blue>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>class</th>
            <th>library</th>
            <th>canteen</th>
            <th>auditorium</th>
            <th>transportation</th>
            <th>labs</th>
            <th>suggest</th>
            <th>Manage</th>
        </tr>
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString("S_Id") %></td>
                <td><%= rs.getString("S_Name") %></td>
                <td><%= rs.getString("class") %></td>
                <td><%= rs.getString("library") %></td>
                <td><%= rs.getString("canteen") %></td>
                <td><%= rs.getString("auditorium") %></td>
                <td><%= rs.getString("transportation") %></td>
                <td><%= rs.getString("labs") %></td>
                <td><%= rs.getString("suggest") %></td>
                
                <td>
                <form action="deleteUser.jsp" method="post">
                    <input type="hidden" name="userId" value="${user.userId}">
                    <input type="submit" value="Delete">
                </form>
                </td>
            </tr>
        <% } %>
    </table>
</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
        </div>
    </div>
</body>
</html>