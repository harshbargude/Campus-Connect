<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="mainpro.css">

<style>
/* Reset some default styles */
body, h1, h2, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Apply a background color to the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

/* Style the header/navbar */
.navbar {
    background-color: #333;
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
}

.logo {
    display: flex;
    align-items: center;
}

.logo i {
    font-size: 24px;
    margin-right: 10px;
}

/* Style the navigation links */
.nav-links {
    display: flex;
    list-style: none;
}

.nav-links a {
    text-decoration: none;
    color: #fff;
    padding: 0 10px;
    display: flex;
    align-items: center;
}

/* Style the main content */
.main-content {
    padding: 20px;
}

/* Style the dashboard heading */
.dashboard-heading h1 {
    font-size: 24px;
    font-weight: bold;
}

/* Style the complaint form section */
.complaint-form {
    /* Add your styles for the complaint form */
}

/* Media query for responsiveness */
@media (max-width: 768px) {
    .nav-links {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 50px;
        left: 0;
        background-color: #333;
        width: 100%;
        text-align: center;
    }

    .nav-links.active {
        display: flex;
    }

    .nav-links a {
        padding: 10px 0;
    }

    .menu-toggle {
        display: block;
        cursor: pointer;
    }
}


/* reset */
#fs-frm input,
#fs-frm select,
#fs-frm textarea,
#fs-frm fieldset,
#fs-frm optgroup,
#fs-frm label,
#fs-frm #card-element:disabled {
    font-family: inherit;
    font-size: 100%;
    color: inherit;
    border: none;
    border-radius: 0;
    display: block;
    width: 100%;
    padding: 0;
    margin: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
}

#fs-frm label,
#fs-frm legend,
#fs-frm ::placeholder {
    font-size: .825rem;
    margin-bottom: .5rem;
    padding-top: .2rem;
    display: flex;
    align-items: baseline;
}

/* border, padding, margin, width */
#fs-frm input,
#fs-frm select,
#fs-frm textarea,
#fs-frm #card-element {
    border: 1px solid rgba(0, 0, 0, 0.2);
    background-color: rgba(255, 255, 255, 0.9);
    padding: .75em 1rem;
    margin-bottom: 1.5rem;
}

#fs-frm input:focus,
#fs-frm select:focus,
#fs-frm textarea:focus {
    background-color: white;
    outline-style: solid;
    outline-width: thin;
    outline-color: gray;
    outline-offset: -1px;
}

#fs-frm [type="text"],
#fs-frm [type="email"] {
    width: 100%;
}

#fs-frm [type="button"],
#fs-frm [type="submit"],
#fs-frm [type="reset"] {
    width: auto;
    cursor: pointer;
    -webkit-appearance: button;
    -moz-appearance: button;
    appearance: button;
}

#fs-frm [type="button"]:focus,
#fs-frm [type="submit"]:focus,
#fs-frm [type="reset"]:focus {
    outline: none;
}

#fs-frm [type="submit"],
#fs-frm [type="reset"] {
    margin-bottom: 0;
}

#fs-frm select {
    text-transform: none;
}

#fs-frm [type="checkbox"] {
    -webkit-appearance: checkbox;
    -moz-appearance: checkbox;
    appearance: checkbox;
    display: inline-block;
    width: auto;
    margin: 0 .5em 0 0 !important;
}

#fs-frm [type="radio"] {
    -webkit-appearance: radio;
    -moz-appearance: radio;
    appearance: radio;
}

/* address, locale */
#fs-frm fieldset.locale input[name="city"],
#fs-frm fieldset.locale select[name="state"],
#fs-frm fieldset.locale input[name="postal-code"] {
    display: inline;
}

#fs-frm fieldset.locale input[name="city"] {
    width: 52%;
}

#fs-frm fieldset.locale select[name="state"],
#fs-frm fieldset.locale input[name="postal-code"] {
    width: 20%;
}

#fs-frm fieldset.locale input[name="city"],
#fs-frm fieldset.locale select[name="state"] {
    margin-right: 3%;
}

form {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px #ccc;
        }

        label {
            font-weight: bold;
        }

        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            height: 100px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
</style>
</head>
<body>
    <div class="container-Admin-N">
        <div class="Navigation">
            <ul>
                <li>
                    <a href="#">
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
                        <span class="title2-Admin-N">unsolved complaint </span>
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



            
        <section class="dashboard-heading" style=text-align:center>
            <h1 style="margin-top:20px;color:darkblue;padding:5px 5px;border:2px solid gray;border-radius: 30px;align-items: center;justify-content: center;">College Review Form</h1><br>
               
        </section>
       


                
               

                <hr>
                
          <section class="dashboard-heading" style=text-align:center>
            <ul type=circle><li><p><br>Rate your Experience/convince to the following entity.<br> 1 is poor & 10 is excellent Experience.</p></li></ul>
        </section>
     <form action="ReviewUser" method="post">
    	<label for="name">Name: </label>
    	<input id=name type=text name=RUname Rewuired><br><br>
    	
    	<label for="id">ID: </label>
    	<input id=id type=text name=RUid Rewuired><br><br>
    
        <label for="rating1">class: </label>
        <input type="number" id="rating1" name="rating1" min="1" max="10" required><br>

        <label for="rating2">library: </label>
        <input type="number" id="rating2" name="rating2" min="1" max="10" required><br>

        <label for="rating3">canteen: </label>
        <input type="number" id="rating3" name="rating3" min="1" max="10" required><br>

        <label for="rating4">auditorium: </label>
        <input type="number" id="rating4" name="rating4" min="1" max="10" required><br>

        <label for="rating5">transportation: </label>
        <input type="number" id="rating5" name="rating5" min="1" max="10" required><br>

        <label for="rating6">labs: </label>
        <input type="number" id="rating6" name="rating6" min="1" max="10" required><br>

        <label for="suggestions">Suggestions:</label><br>
        <textarea id="suggestions" name="suggestions" rows="4" cols="50"></textarea><br>

        <input type="submit" value="Submit">
    </form>

                </section>
            </main>
            <script>
                const toggle = document.querySelector('.menu-toggle');
                const navLinks = document.querySelector('.nav-links');

                toggle.addEventListener('click', () => {
                    navLinks.classList.toggle('active');
                });


                // Get the current date and time
                const currentDate = new Date();


                // Format the date and time (you can customize the format)
                const formattedDateTime = `${currentDate.toLocaleDateString()} ${currentDate.toLocaleTimeString()}`;


                document.getElementById("current-datetime").value = formattedDateTime;


            </script>


            <script src="vanill-tilt.min.js.js"></script>
</body>
</html>