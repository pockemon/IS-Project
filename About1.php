<!DOCTYPE HTML>

<?php
if(isset($_SESSION['user']))
   {
	   header('location: user/index.php');
   }
else if(isset($_SESSION['faculty_login']))
   {
	   header('location: faculty/index.php');
   }

else if(isset($_SESSION['admin']))
   {
	   header('location: admin');
   }
?>

<html>
	<head>
		<link rel="icon" type="image/png" href="images/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

		<title>STIP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/main.css" />
	</head>

	<body>

    <header id="header" class="alt">
      <div class="logo"><a href="home2.php">Welcome to <span> Student Teacher Interaction Portal</span></a></div>
      <a href="#menu">Menu</a>
    </header>

    <!-- Nav -->
    <nav id="menu">

      <ul class="links">

        <li style="color:#FFFFFF">
            <a style="color:#FFFFFF" href="home2.php"><i class="fa fa-home fa-fw"></i>Home</a>
        </li>

        <li style="color:#FFFFFF">
            <a style="color:#FFFFFF" href="About1.php"><i class="fa fa-home fa-fw"></i>About</a>
        </li>

        <li style="color:#FFFFFF">
            <a style="color:#FFFFFF" href="Registration1.php"><i class="fa fa-home fa-fw"></i>Registration</a>
        </li>

        <li class="dropdown">
              <a style="color:#FFFFFF" href="#" class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-sign-in fa-fw"></i>Login
              <span class="caret"></span></a>
              <ul class="dropdown-menu">

                 <li><a href="Login1.php">Student</a></li>
                 <li><a href="Faculty_login1.php">Faculty</a></li>
								 <li><a href="admin_login.php">Admin</a></li>
             </ul>
         </li>


       </ul>
    </nav>

		<!-- One -->
			<section id="One" class="wrapper style3">
				<div class="inner">
					<header class="align-center">
						<p>About US</p>
					  <h2>Student-Teacher Interaction Portal</h2>
					</header>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper style2">
				<div class="inner">
					<div class="box">
						<div class="content">

              <p> The student-teacher interactive portal facilitates easier communication between students and teachers. It allows the student to clarify his/her doubts  on the forum, it allows the student to regularly check his/her attendance, it  allows the student to view any study material posted by the teacher and it also allows the student to do course registration, and upload assignments.</p>
              <p> It helps the teacher in circulating any assignments which he/she wanted to assign to the students, it helps the teacher maintain a dynamic record of the students attendance, clarify the students doubts on the forum and ensure that all the students have understood the concept well enough.  </p>
<p>The interface of our website is very user friendly and it is very easy to navigate the site. The user shall face no difficulty in accessing the services of the website. The website is protected using some very good security measures to ensure only authenticated users can access the website and we have also restricted access to sections of the website based on the category the user falls in.
 </p>
              <p>
						</div>
					</div>
				</div>
			</section>


		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.scrollex.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

	</body>
</html>
