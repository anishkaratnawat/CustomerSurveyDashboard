<%@page import="com.dash.helper.Connectionprovider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--css-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
}
</style>


</head>
<body>

	<!--navbar-->
	<%@include file="Navbar.jsp"%>

	<!--//banner-->

	<div class="container-fluid p-0 m-0">

		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to Hotel Paradise</h3>

				<p>A hotel is an establishment that provides paid lodging on a
					short-term basis. Facilities provided inside a hotel room may range
					from a modest-quality mattress in a small room to large suites with
					bigger, higher-quality beds, a dresser, a refrigerator and other
					kitchen facilities, upholstered chairs, a flat screen television,
					and en-suite bathrooms. Small, lower-priced hotels may offer only
					the most basic guest services and facilities. Larger, higher-priced
					hotels may provide additional guest facilities such as a swimming
					pool, business centre (with computers, printers, and other office
					equipment), childcare, conference and event facilities, tennis or
					basketball courts, gymnasium, restaurants, day spa, and social
					function services.</p>
				<p></p>

			</div>
		</div>






	</div>



	<!--//cards-->



	<div class="container">

		<div class="row mb-2">

			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">

						<p class="card-text">
							<b>Life is uncertain. Eat dessert first.</b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">

						<p class="card-text">
							<b>First we eat, then we do everything else. </b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">

						<p class="card-text">
							<b>Good food ends with good talk.</b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>


		</div>




		<div class="row">

			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">
						<p class="card-text">
							<b>For me, the good food starts with good product.</b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">
						<p class="card-text">
							<b>Your diet is a bank account. Good food choices are good
								investments.</b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="img/food.jpg" alt="Card image cap">

					<div class="card-body">
						<p class="card-text">
							<b>Cooking is like love. It should be entered into with
								abandon or not at all.</b>
						</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>
			</div>


		</div>

	</div>
	<br>
	<br>


	<!--javascripts-->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>
	<%@include file="Footer.jsp"%>


</body>
</html>
