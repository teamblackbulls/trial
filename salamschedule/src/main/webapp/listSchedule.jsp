<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>List Schedule</title>
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
		
		table, th, td {
		  border: 1px solid;
		}
		table {
		  width: 95%;
		}
		
		.center {
		  margin: auto;

		  padding: 10px;
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
			  <li><a class="active" href="#ListScheduleController">Schedules</a></li>
			  <li><a href="index.html">Log out</a>
			</ul>
		</nav>
	</header>
	
	<div class="center">
	
		<a href="addSchedule.jsp"><button >Add Schedule</button></a>
		
		<br><br>
		<table>
			<tr>

				<th>Schedule Date</th>
				<th>Prayer Type</th>
				<th>Imam ID</th>
				<th>Bilal ID</th>
				
				
				<th colspan="3">Actions</th>
			</tr>
			<c:forEach  items="${schedules}" var="sc" varStatus="schedules">
			<tr>

				<td><c:out value="${sc.scheduledate}" /></td>
				<td><c:out value="${sc.prayerid}" /></td>
				<td><c:out value="${sc.imamid}" /></td>
				<td><c:out value="${sc.bilalid}" /></td>
				
				
				<td><a href="ViewScheduleController?action=viewSchedule&scheduleid=<c:out value="${sc.scheduleid}" />" class="btn btn-warning">View</a></td>
				<td><a href="UpdateScheduleController?action=updateSchedule&scheduleid=<c:out value="${sc.scheduleid}" />" class="btn btn-primary">Update</a></td>
				<td><input type="hidden" id="scheduleid-${schedules.index}" value="<c:out value="${sc.scheduleid}"/>"><button class="btn btn-danger" onclick="confirmation('${schedules.index}')">Delete</button></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	
	
	<script>
		
	function confirmation(index){
		  var scheduleid = $("#scheduleid-" + index).val();
		 
		  console.log(scheduleid);
		  var r = confirm("Are you sure you want to delete?");
		  if (r == true) {				 		  
			  location.href = 'DeleteScheduleController?action=deleteSchedule&scheduleid=' + scheduleid;
			  alert("Schedule successfully deleted");			
		  } else {				  
		      return false;	
		  }
	}
	</script>
</body>
</html>