<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="mainpro.css">
</head>
<body>
    <div class="container-Admin-N">
        <div class="Navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon-Admin-N"></span>
                        <span class="title2-Admin-N">Campusconnect</span>
                    </a>
                </li>
                <li>
                    <a href="UserDashboard.jsp">
                        <span class="icon-Admin-N"><i class="fa-solid fa-house"></i></span>
                        <span class="title2-Admin-N">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="registra complaint.html">
                        <span class="icon-Admin-N"><i class="fa-regular fa-note-sticky"></i></span>
                        <span class="title2-Admin-N">Register Complaint</span>
                    </a>
                </li>
                <li>
                    <a href="ReviewofU.jsp">
                        <span class="icon-Admin-N"><i class="fa-regular fa-note-sticky"></i></span>
                        <span class="title2-Admin-N">Review your college</span>
                    </a>
                </li>
                <li>
                    <a href="solved-comp.html">
                        <span class="icon-Admin-N"><i class="fa-regular fa-square-check"></i></span>
                        <span class="title2-Admin-N">Solved Complaint</span>
                    </a>
                </li>
                <li>
                    <a href="unsolved.jsp">
                        <span class="icon-Admin-N"><i class="fa-solid fa-square-xmark"></i></span>
                        <span class="title2-Admin-N">unsolved Complaint</span>
                    </a>
                </li>
                <li>
                    <a href="chat.html">
                        <span class="icon-Admin-N"><i class="fa-brands fa-rocketchat"></i></span>
                        <span class="title2-Admin-N">Chat Box</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon-Admin-N"><i class="fa-regular fa-user"></i></span>
                        <span class="title2-Admin-N">Profile</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon-Admin-N"><i class="fa-solid fa-arrow-right-from-bracket"></i></span>
                        <span class="title2-Admin-N">Log Out </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon-Admin-N"><i class="fa-solid fa-gear"></i></span>
                        <span class="title2-Admin-N">setting</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="main">
            <div class="topbar-N">
                <div class="toggle">
                    <i class="fa-solid fa-bars"></i>
                </div>
                <div class="search-Dash-N">
                    <label>
                        <input type="text" placeholder="Search  here">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </label>
                </div>
                <div class="user-Dash-N">
                    <img src="imgU/profile img2.jpg" alt="">
                </div>
            </div>
           

            <div class="main-Dashborad-heading">
                <p>UnSolved Complaint</p>
            </div>

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

<body>
    <br><br>
    
    <table border="1" color=blue style=padding:1px;align-item:center;margin:12px>
        <tr style=padding:2px;background-color:#97b8ff;font-family:'Courier New', Courier, monospace;>
            <th>Student ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Contact of Reporter</th>
            <th>Date</th>
            <th>IncidentAddress</th>
            <th>Complaint</th>
            <th>Category</th>
            <th>Document</th>
            
            
        </tr style=background-color:#ceff97;font-family:'Courier New', Courier, monospace;>
        <% while (rs.next()) { %>
            <tr style=font-family:'Courier New', Courier, monospace;>
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
<script>
    let toggle = document.querySelector('.toggle');
    let Navigation = document.querySelector('.Navigation');
    let main = document.querySelector('.main');



    toggle.onclick = function () {
        Navigation.classList.toggle('active');
        main.classList.toggle('active');
    }







    let list = document.querySelectorAll('.navigation li');
    function activeLink() {
        list.forEach((item) =>
            item.classList.remove('hovered'));
        this.classList.add('hovered');
    }
    list.forEach((item) =>
        item.addEventListener('mouseover', activeLink));
</script>
</html>