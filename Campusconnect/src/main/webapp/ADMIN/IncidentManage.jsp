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
                <li><i class="fa-solid fa-comment"></i></i><a href="Stats.html">Chat Box</a></li>
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
        String sql = "SELECT * FROM complaintsofuser";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Incident Management</title>
</head>
<body>
    <h1 style="text-align:center;">Reported Incident List</h1>
    <form action="" method="get">
        <label for="studentId">Search by Student ID:</label>
        <input type="text" id="studentId" name="studentId">
    </form>
    <table border="1" color=blue>
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Contact of Reporter</th>
            <th>Date</th>
            <th>IncidentAddress</th>
            <th>Complaint</th>
            <th>Category</th>
            <th>Document</th>
            
            
        </tr>
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString("User_ID") %></td>
                <td><%= rs.getString("Name") %></td>
                <td><%= rs.getString("EmailAddress") %></td>
                <td><%= rs.getString("PhoneNumber") %></td>
                <td><%= rs.getString("Date") %></td>
                <td><%= rs.getString("IncidentAddress") %></td>
                <td><%= rs.getString("Complaint") %></td>
                <td><%= rs.getString("Category") %></td>
                <td><%= rs.getString("Document") %></td>
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


<script>
        var input = document.getElementById('studentId');
        input.addEventListener('input', function() {
            var filter = input.value.toLowerCase();
            var table = document.querySelector('table');
            var rows = table.getElementsByTagName('tr');

            for (var i = 1; i < rows.length; i++) {
                var cell = rows[i].getElementsByTagName('td')[0];
                if (cell) {
                    var textValue = cell.textContent || cell.innerText;
                    if (textValue.toLowerCase().indexOf(filter) > -1) {
                        rows[i].style.display = '';
                    } else {
                        rows[i].style.display = 'none';
                    }
                }
            }
        });
    </script>          
        
            
        </div>
    </div>
</body>
</html>