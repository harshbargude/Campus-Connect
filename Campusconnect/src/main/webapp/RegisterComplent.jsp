<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

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
</style>
</head>
<body>
    <header class="navbar">
        <div class="logo">
            <i class="fa-solid fa-home"></i>
            <span>Dashboard</span>
        </div>
        <nav class="nav-links">
            <a href="RegisterComplent.jsp"><i class="fa-regular fa-note-sticky"></i> Register Complaint</a>
            <a href="ReviewofU.jsp"><i class="fa-regular fa-square-check"></i>Review our college</a>
            <a href="#"><i class="fa-regular fa-square-check"></i> Solved Complaint</a>
            <a href="#"><i class="fa-solid fa-square-xmark"></i> Unsolved Complaint</a>
            <a href="#"><i class="fa-brands fa-rocketchat"></i> Chat Box</a>
            <a href="#"><i class="fa-regular fa-user"></i> Profile</a>
            <a href="#"><i class="fa-solid fa-arrow-right-from-bracket"></i> Log Out</a>
            <a href="#"><i class="fa-solid fa-gear"></i> Settings</a>
        </nav>
        <div class="menu-toggle">
            <i class="fa-solid fa-bars"></i>
        </div>
    </header>
    <main class="main-content">
        <section class="dashboard-heading" style=text-align:center>
            <h1 >Register Complaint/Incident</h1>
        </section>
       


                <h2 style="color:darkblue;padding-top:34px">College Complaint Form</h2>
                <p>Please use this form to report any concerns or issues you've experienced at our college. Your
                    feedback is important to us, and we are here to address your concerns promptly.</p>
                <p>Before you begin, please read the following instructions:</p>

                <ol>
                    <li>Fill out the form as accurately as possible to help us understand your complaint better.</li>
                    <li>Include all relevant details, such as dates, times, locations, and individuals involved.</li>
                    <li>If you have any supporting documents or photos, you can upload them to provide additional
                        context.</li>
                    <li>Your contact information is optional, but providing it will help us follow up with you on the
                        status of your complaint.</li>
                </ol>

                <hr>
 				<section class="complaint-form">
            			<!-- Your complaint form content goes here -->
            	<form id="fs-frm" action="ComplainUser" method=post>

                <fieldset id="fs-frm-inputs">

                    <h3>Person Information</h3>

                    <label for="full-name" class="name">Name</label>
                    <input type="text" name=C_name id="full-name" placeholder="Name" required>


                    <label for="email-address">Email Address</label>
                    <input type="email" name=C_email id="email-address" placeholder="email@domain.tld" required>

                    <label for="id">Your ID</label>
                    <input type="text" placeholder="GR Number" name=C_GR id="id" required>

                    <label for="telephone">Telephone Number (Optional)</label>
                    <input type="telephone" name=C_phonenumber id="telephone" placeholder="(555) 555-5555">

                    <br>
                    <hr>

                    <h3>Incident info</h3>

                    <label for="complaint-date">
                        <p class="lead">Date of Incident</p>
                    </label>
                    <input type="date" id="complaint-date" name=complaint-date> 
<!-- 
                    <label for="current-datetime">
                        <p class="lead">Current Date and Time</p>
                    </label>
                   	<input type="text" id="current-datetime" name="current-datetime" readonly>

                    <!-- <label for="complaint-date">
                        <p class="lead">Date of Incident</p>
                    </label>
                    <input type="date" id="complaint-date" name="complaint-date">
                    
                    <label for="complaint-time">
                        <p class="lead">Time of Incident</p>
                    </label>
                    <input type="time" id="complaint-time" name="complaint-time">
                     -->
                    

                    <label for="address">
                        <p class="category-name">Incident Address</p>
                    </label>
                    <input type="text" id="address" name=C_address placeholder="E.g., classroom floor-2, room No. 210">

                    



                    <label for="complaint">Complaint/incident</label>
                    <textarea rows="6" name=complaint id="complaint"
                        placeholder="E.g. Fan is not working"
                        required></textarea>
                    <input type="hidden" name=C_subject id="email-subject" value="Complaint Form Submission">

                    <label for="category-code">
                        <p class="category-name">Category</p>
                    </label>
                    <select name="category-code" id="category-code">
                        <option value="Exam Cell">Exam Cell</option>
                        <option value="Student-section">Student-section</option>
                        <option value="Transpotation">Transpotation</option>
                        <option value="Cantten">Cantten</option>
                        <option value="Library">Library</option>
                        <option value="Class room">Class room</option>
                        <option value="Sport room">Sport room</option>
                        <option value="Basement">Basement</option>
                        <option value="Auditorium">Auditorium</option>
                        <option value="Account section">Account-section</option>
                    </select>

                    <label for="upload-files">Upload Supporting Files (if any):</label>
                    <input type="file" id="upload-files" name="C_upload-files">
                </fieldset>
                <input type="submit" value="File Complaint">
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
</body>
</html>