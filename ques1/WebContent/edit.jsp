<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration from</title>
<link rel="stylesheet" href="form.css" type="text/css">
<script type="text/javascript" src="form.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<form id="signup" action="Servlet1" method="post">
		<h1>Registration form</h1>
		<h2>fields marked (*) are required</h2>
		<fieldset>
			<ol>
				<li><label for="username">Username *</label> <input type="text"
					id="username" name="username" placeholder="Username" required></li>

				<li><label for="password">Password *</label> <input
					type="password" id="password" name="password"
					placeholder="Password" required>
					</li>

				<li><label for="cpassword">Confirm Password *</label> <input
					type="password" id="cpassword" name="cpassword"
					placeholder="Confirm Password" required>
					</li>
			</ol>

			<ol>
				<li><label for="firstname">First Name *</label> <input
					type="text" id="firstname" name="firstname"
					placeholder="First Name" required></li>

				<li><label for="lastname">Last Name *</label> <input
					type="text" id="lasttname" name="lastname" placeholder="last Name"
					required></li>
			</ol>
			<ol>
				<li><label for="email">Email *</label> <input type="text"
					id="email" name="email" placeholder="Email" required>
					</li>
			</ol>
			<ol>
				<li><label for="tel">Mobile *</label> <input type="tel"
					id="tel" name="tel" placeholder="Please enter a ten digit phone number" required />
					</li>
			</ol>
			<ol>
				<li><label for="location">Location </label> <input type="text"
					id="loc" name="loc" placeholder="Location" required />
			</ol>

		</fieldset>
		<input type="submit" value="Save" name="save"> <input
			type="reset" value="Reset" name="reset">
	</form>
	
	<%
	String name = request.getParameter("uname"); /*  Store user name and password in name and password*/
	session.setAttribute("theName",name);
	System.out.println(session.getAttribute("theName"));
	

	%>
</body>
</html>