<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Courses 3</title>

		<style>
			section,
			footer,
			aside,
			nav,
			article,
			figure,
			figcaption {
				display: block;
			}

			body {
				color: #666666;
				background-color: #f9f8f6;
				background-url: ("C:\Users\Adesh\Desktop\B");
				background-position: center;
				font-family: Georgia, times, serif;
				line-height: 1.4em;
				margin: 0px;
			}

			.wrapper {
				width: 940px;
				margin: 20px auto 20px auto;
				border: 2px solid #000000;
				background-color: rgb(245, 240, 240);
			}


			nav,
			footer {
				clear: both;
				color: #ffffff;
				background-color: #3a50a0;
				height: 35px;
			}

			nav ul {
				margin: 0px;
				padding: 5px 0px 5px 30px;
				font-size: 120%;
			}

			nav li {
				display: inline;
				margin-right: 20px;
			}

			nav li a {
				color: #ffffff;
			}

			nav li a:hover,
			nav li a.current {
				color: #0a0a0a;
			}




			* {
				box-sizing: border-box;
			}

			input[type=text],
			input[type=email],
			input[type=number],
			input[type=select],
			input[type=select],
			input[type=password],
			input[type=tel] {
				width: 45%;
				padding: 12px;
				border: 1px solid rgb(168, 166, 166);
				border-radius: 4px;
				resize: vertical;
			}

			textarea {
				width: 45%;
				padding: 12px;
				border: 1px solid rgb(168, 166, 166);
				border-radius: 4px;
				resize: vertical;
			}

			input[type=radio] {
				width: 1%;
				padding-left: 0%;
				border: 1px solid rgb(168, 166, 166);
				border-radius: 4px;
				resize: vertical;
			}

			h1 {
				font-family: Arial;
				font-size: medium;
				font-style: normal;
				font-weight: bold;
				color: brown;
				text-align: center;
				text-decoration: underline;
			}

			label {
				padding: 12px 12px 12px 0;
				display: inline-block;
			}

			input[type=submit] {
				background-color: #4CAF50;
				color: white;
				padding: 12px 20px;
				border: none;
				border-radius: 4px;
				cursor: pointer;
				float: left;
			}

			input[type=submit]:hover {
				background-color: #32a336;
			}

			.container {
				border-radius: 5px;
				background-color: #f2f2f2;
				padding: 20px;
			}

			.col-10 {
				float: left;
				width: 20%;
				margin-top: 0px;
			}

			.col-90 {
				float: left;
				width: 120%;
				margin-top: 6px;
			}

			.row:after {
				content: "";
				display: table;
				clear: both;
			}

			@media screen and (max-width: 700px) {

				.col-10,
				.col-90,
				input[type=submit] {
					width: 180%;
					margin-top: 20px;
				}
			}
		</style>
		<script type="text/javascript">

function Validate()
        {
            
            var x = document.myform.mobile.value;
           if (x.length>10)
           {
                alert("enter 10 characters");
                return false;
           }
		}
		</script>
	</head>

	<body background="B.jfif">
		<form action="<%= request.getContextPath() %>/Register" name="myform" method="post" onsubmit = "return validateForm()">>
			<div class="wrapper">
				<header>
					<h1>Apply for the Course:</h1>
					<nav>
						<ul>
							<li>
							<li><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSTUDENT
									REGISTRATION FORM</b></li>
						</ul>
					</nav>
				</header>

				<div class="container">

					<div class="row">
						<div class="col-10">
							<label for="course">Course:</label>
						</div>
						<div class="col-90">
							<input type="radio" id="course1" name="course" value="Computer" />Computer&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="radio" id="course2" name="course" value="Mechanical" />Mechanical&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="radio" id="course3" name="course" value="Civill" />Civil
						</div>
					</div>

					<div class="row">

						<label for="fname">First Name:</label>

						<div class="col-90">

							<input type="text" required id="fname" name="firstname" placeholder="Enter your first name">
						</div>
					</div>
					<div class="row">
						<div class="col-10">
							<label for="lname">Last Name:</label>
						</div>
						<div class="col-90">
							<input type="text" required id="lname" name="lastname" placeholder="Enter your last name">
						</div>
					</div>
					<div class="row">
						<div class="col-10">
							<label for="email">Email:</label>
						</div>
						<div class="col-90">
							<input type="email" required id="email" name="email" placeholder="Expected format: Example@gmail.com">
						</div>
					</div>
					<div class="row">
						<div class="col-10">
							<label for="mobile">Mobile:</label>
						</div>
						<div class="col-90">
							<input type="text" required id="mobile" name="mobile" maxlength="10" placeholder="NUmber must be less than 10 digits">
						</div>
					</div>
					<div class="row">
						<div class="col-10">
							<label for="gender">Gender:</label>
						</div>
						<div class="col-90">
							<input type="radio" required id="male" name="gender" value="male" />Male
							<input type="radio" required id="female" name="gender" value="female" />Female
						</div>
					</div>


					<div class="row">
						<div class="col-10">
							<label for="city">City:</label>
						</div>
						<div class="col-90">
							<input type="text" required id="city" name="city" maxlength="10">
						</div>
					</div>

					<div class="row">
						<div class="col-10">
							<label for="state">State:</label>
						</div>
						<div class="col-90">
							<input type="text" required id="state" name="state">
						</div>
					</div>


					<div class="row">
						<div class="col-10">
							<label for="password">Password:</label>
						</div>
						<div class="col-90">
							<input type="password" required id="password" name="password" maxlength="8">
						</div>
					</div><Br>
					<div class="row">
						<input type="submit" value="Register">
					</div>
				</div>

			</div>

			<footer> &copy; Student Admission </footer>

		</form>
	</body>

	</html>