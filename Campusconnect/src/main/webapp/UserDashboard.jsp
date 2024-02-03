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
                    <a href="">
                        <span class="icon-Admin-N"></span>
                        <span class="title2-Admin-N">Campus Connect</span>
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
                        <span class="title2-Admin-N">Review our College</span>
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
                        <span class="title2-Admin-N">unsolved complaint</span>
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





            <!-- /********************************dashborad************************/
 -->

 <div class="main-Dashborad-heading">
    <p>Dashboard</p>
</div>


<%@ page import="java.sql.*" %>
<%

	Connection conn = null;
	Statement stmt1 = null;
	Statement stmt2 = null;
	ResultSet rs1 = null;
	//ResultSet rs2 = null;

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
       
       //String sql1 = "SELECT COUNT(*) AS NoOfReviews FROM review_of_students;";
       //stmt2 = conn.createStatement();
      // rs2 = stmt2.executeQuery(sql1);
       
       
       %>



            <div class="Dashord-heading">
                <span class="heading-dash1">Complaints to You</span>
                <span class="heading-dash2">Stats of the complaints handled by you</span>
            </div>


            <div class="Dashborad-con">
                <div class="Dashorad-sub-con">
                    <ul>
                        <li>
                            <div class="Dashborad-box" data-tilt>
							<% while (rs1.next()) { %>
                                <img class="Dashboard-img" src="imgU/total.jpg" alt="">

                                <div class="Dashbord-number">
                                    <h4>Total</h4>
                                    <div class="complaint-count"><%= rs1.getInt("ComplaintsR")%></div>
                                </div>
                                
                                
                            </div>

                            <hr />
                            <div class="Dashborad-recored">
                                <span><i class="fa-solid fa-calendar"></i></span>
                                <div>No Record</div>

                            </div>

	

                        </li>
                    </ul>
                </div>



                <div class="Dashorad-sub-con">
                    <ul>
                        <li>
                            <div class="Dashborad-box" data-tilt>

                                <img class="Dashboard-img" src="imgU/appoverd img.png" alt="">

                                <div class="Dashbord-number">
                                    <h4>Approved</h4>
                                    <div class="complaint-count">0</div>
                                </div>
                            </div>

                            <hr />
                            <div class="Dashborad-recored">
                                <span><i class="fa-solid fa-calendar"></i></span>
                                <div>No Record</div>

                            </div>



                        </li>
                    </ul>
                </div>






                <div class="Dashorad-sub-con">
                    <ul>
                        <li>
                            <div class="Dashborad-box" data-tilt>

                                <img class="Dashboard-img" src="imgU/issues.jpg" alt="">

                                <div class="Dashbord-number">
                                    <h4>Issues</h4>
                                    <div class="complaint-count">0</div>
                                </div>
                            </div>

                            <hr />
                            <div class="Dashborad-recored">
                                <span><i class="fa-solid fa-calendar"></i></span>
                                <div>No Record</div>

                            </div>



                        </li>
                    </ul>
                </div>





                <div class="Dashorad-sub-con">
                    <ul>
                        <li>
                            <div class="Dashborad-box" data-tilt>

                                <img class="Dashboard-img" src="imgU/pending2.jpg" alt="">

                                <div class="Dashbord-number">
                                    <h4>Pending</h4>
                                    <div class="complaint-count"><%= rs1.getInt("ComplaintsR")%></div>
                                </div>
                            </div>
							<%}
                                
       							%>
                            <hr />
                            <div class="Dashborad-recored">
                                <span><i class="fa-solid fa-calendar"></i></span>
                                <div>No Record</div>

                            </div>
	<%

   			rs1.close();
			stmt1.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			}
	 %>


                        </li>
                    </ul>
                </div>








            </div>




<div class="department-name">
    <div class="department-heading">
        <p>Department/Categories</p>
    </div>
<table class="department-sub">
    <thead>
        <tr>
        <th> ID</th>
        <th>Department Code</th>
        <th>Department Name</th>
        <th>Name of incharge</th>
        <th>Email</th>
        <th>phone no.</th>
    </tr>
    </thead>




<tbody>
    <tr>
        <td> 01</td>
        <td>458SCOE</td>
        <td>Exam Cell</td>
        <td>Varsha Deva</td>
        <td>Examcell_SCOE@gmail.com</td>
        <td>916587238</td>
    </tr>





    <tr>
        <td> 02</td>
        <td>590SCOE</td>
        <td>Student-section</td>
        <td>vedant baghavt</td>
        <td>Student_SCOE@gmail.com</td>
        <td>9565492565</td>
    </tr>






    <tr>
        <td> 03</td>
        <td>729SCOE</td>
        <td>Transpotation</td>
        <td>Pratik more</td>
        <td>Transport_SCOE@gmail.com</td>
        <td>926583175</td>
    </tr>





    <tr>
        <td>04 </td>
        <td>135SCOE</td>
        <td>Cantten</td>
        <td>Shrihari mane</td>
        <td>cantten_SCOE@gmail.com</td>
        <td>923748615</td>
    </tr>






    <tr>
        <td> 05</td>
        <td>248SCOE</td>
        <td>Library</td>
        <td>sujata kale</td>
        <td>library_SCOE@gmail.com</td>
        <td>9578124695</td>
    </tr>

    <tr>
        <td> 06</td>
        <td>548SCOE</td>
        <td>Class room</td>
        <td>vishal dhane</td>
        <td>classroom_SCOE@gmail.com</td>
        <td>9958854695</td>
    </tr>

    <tr>
        <td> 07</td>
        <td>486SCOE</td>
        <td>Sports</td>
        <td>prasad mane </td>
        <td>library_SCOE@gmail.com</td>
        <td>9578124695</td>
        </tr>
    </tbody>








</table>
















        </div>
    </div>








   







    <!-- menuToggle -->
    <script>
        let toggle = document.querySelector('.toggle');
        let Navigation = document.querySelector('.Navigation');
        let main = document.querySelector('.main');



        toggle.onclick = function () {
            Navigation.classList.toggle('active');
            main.classList.toggle('active');
            // department-sub.classList.toggle('active');

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

<script src="vanill-tilt.min.js.js"></script>
</body>
</html>