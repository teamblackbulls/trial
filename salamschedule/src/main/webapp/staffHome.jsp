<%@page import="staff.db.ConnectionManager" %>
<%@page import="java.sql.*" %>

<%


try {
	String sid = request.getParameter("sid");
	Connection con = ConnectionManager.getConnection();	
	Statement st = con.createStatement();
	String sql = "SELECT * FROM staff WHERE staff.sid='" + sid + "'";
	ResultSet rs = st.executeQuery(sql);
	if(rs.next()) {
		
%>

	Staff ID: <%=rs.getString(2)%>
	
<head>
	<meta charset="ISO-8859-1">
	<title>List Staff</title>
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
			  <li><a href="#adminHome.jsp">Home</a></li>
			  <li><a href="LoginStaffController">My Schedule</a></li>
			  <li><a href="index.html">Log out</a>
			</ul>
		</nav>
	</header>
	<div class="center">
		<h2>Staff Information</h2>
		Staff ID: <%=rs.getString(2) %><br>
		Password(later buang): <%=rs.getString(8) %> <br><br>
		Name: <%=rs.getString(3) %><br>
		Address: <%=rs.getString(4) %> <br>
		Phone Number: <%=rs.getString(5) %><br>
		Email: <%=rs.getString(6) %><br>
		Role:<%=rs.getString(7) %><br><br>
	</div>

</body>
 <%
	}
 else 
{
	response.sendRedirect("index.html");
	} 
} 	catch (Exception e) {
	}%>



	
	
	
	

