<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Music Login Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Music Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<!-- <link href="//fonts.googleapis.com/css?family=Reem+Kufi&amp;subset=arabic" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"> -->
	<!-- //web-fonts -->
</head>

<body>
	<!-- title -->
	<h1>
		<span>M</span>usic
		<span>L</span>ogin
		<span>F</span>orm</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form action="" method="post">
			<div class="form-style-agile">
				<label>
					Username
					<i class="fas fa-user"></i>
				</label>
				<input placeholder="Username" name="Name" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					Password
					<i class="fas fa-unlock-alt"></i>
				</label>
				<input placeholder="Password" name="Password" type="password" required="">
			</div>
			<div class="form-style-agile">
				<label>
					Email
					<i class="fas fa-envelope"></i>
				</label>
				<input placeholder="Email" name="Email" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					Phone
					<i class="fas fa-phone"></i>
				</label>
				<input placeholder="Phone" name="Phone" type="text" required="">
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>Remember me</span>
						</label>
					</li>
					<li>
						<a href="#">Forgot Password?</a>
					</li>
				</ul>
			</div>
			<!-- //checkbox -->
			<input type="submit" value="Sign UP" name="signUp">
			<!-- social icons -->
			<div class="footer-social">
				<h2>Or</h2>
				<ul>
					<li>
						<a href="#">
							<i class="fab fa-facebook-f icon_facebook"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fab fa-twitter icon_twitter"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fab fa-dribbble icon_dribbble"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fab fa-google-plus-g icon_g_plus"></i>
						</a>
					</li>
				</ul>
			</div>
			<!-- //social icons -->
		</form>
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>&copy; 2018 Music Login Form. All rights reserved | Design by
			<a href="http://w3layouts.com">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->

</body>

</html>
<?php
	require_once("../../config/connection.php");
	if (isset($_POST['Name']) && !empty($_POST['Name']) && 
	isset($_POST['Password']) && !empty($_POST['Password']) &&
	isset($_POST['Email']) && !empty($_POST['Email']) &&
	isset($_POST['Phone']) && !empty($_POST['Phone'])) {
		$name = $_POST['Name'];
		$pass = $_POST['Password'];
		$email = $_POST['Email'];
		$phone = $_POST['Phone'];

		$query = "INSERT INTO users (`username`, `password`, `email`, `phone`) 
          VALUES ('$name', '$pass', '$email', '$phone')";

		mysqli_query($conn, $query);
		$_SESSION["login"] = "1";

		header("Location: ../../index.php");
		
	}
?>