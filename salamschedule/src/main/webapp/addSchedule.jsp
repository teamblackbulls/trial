<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add New Schedule</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style type="text/css">
		ul {
		  list-style-type: none;
		  margin: 0;
		  padding: 0;
		  overflow: hidden;

		}
		
		li {
		  float: left;
		}
		
		li a {
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}
		
		li a:hover:not(.active) {
			color: black;
		}
		
		.active {
		   color: black;
		}
	
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #95ac80">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> MasjidSalam </a>
			</div>

			<ul>
			  <li><a href="adminHome.jsp">Home</a></li>
			  <li><a href="ListStaffController">Staff</a></li>
			  <li><a href="ListPrayerController">Prayers</a></li>
			  <li><a href="ListScheduleController">Schedules</a></li>
			  <li><a href="index.html">Log out</a>
			</ul>
		</nav>
	</header>
	
	<br>
	
	<div class="container col-md-5">
	
	<a href="ListScheduleController"><button >Back</button></a><br><br>
	
		<div class="card">
			<div class="card-body">
			<form method="post" action="AddScheduleController">
					<caption>
						<h2> Add New Schedule </h2>
					</caption>
					
					<fieldset class="form-group">
						<label>Schedule Date</label> 
						<input type="date" class="form-control" id="scheduledate" name="scheduledate" required="required" placeholder="Date..">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Prayer ID</label> 
						<input type="text" class="form-control" id="prayerid" name="prayerid" placeholder="1=Subuh,2=Zuhur,....">
					</fieldset>
					  
					 <fieldset class="form-group">
						<label>Imam ID</label> 
						<input type="text" class="form-control" id="imamid" name="imamid" placeholder="1">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Bilal ID</label> 
						<input type="text" class="form-control" id="bilalid" name="bilalid" placeholder="2">
					</fieldset>
					
					
					<button type="submit" class="btn btn-success">Submit</button>
					<button type="reset" class="btn btn-success">Reset</button>
			</form>
			</div>
		</div>
	</div>
</body>
</html>