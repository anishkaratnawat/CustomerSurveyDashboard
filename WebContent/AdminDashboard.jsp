<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String email = (String) session.getAttribute("email");
	out.print("Hello " + email);
%>

<!DOCTYPE html>
<html>

<head>
	<title></title>
	<head>
		
    <meta charset="utf-8">
    <title>Sidebar Dashboard </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
  </head>

<body>


    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>CS <span>Dashboard</span></h3>
      </div>
      <div class="right_area">
        <a href="#" class="logout_btn">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--sidebar start-->
    <div class="sidebar">
      <center>
        <img src="img/admin.png" class="profile_image" alt="Please check your source path">
        <h4>ADMIN</h4>
      </center>
      <a href="Dashboardview.jsp"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
      <a href="AdminDashboard.jsp"><i class="fa fa-user-circle"></i><span>Profile</span></a>
      <a href="Summarizedformfromexcel.jsp"><i class="fa fa-address-card"></i><span>Customer Summary</span></a>
      <a href="AdminDashboard.jsp"><i class="fas fa-info-circle"></i><span>About</span></a>
      <a href="AdminDashboard.jsp"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
    </div>

  <!--sidebar end-->

    <div class="content"></div>
    
 

</body>
</html>

