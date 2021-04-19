<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Cache-control", "no-store");
response.setHeader("Progma","no-cache");
response.setDateHeader("Expires", 0);

if (session.getAttribute("userLoggedIn")==null) {
	response.sendRedirect("login.jsp");
    return;
}

%>
<html>
<head>
<meta charset="UTF-8">
<META Http-Equiv="Cache-Control" Content="no-cache"/>
<META Http-Equiv="Pragma" Content="no-cache"/>
<META Http-Equiv="Expires" Content="0"/>
<title>Welcome to the Number Convertor</title>
<link href="page_temp.css" rel="stylesheet">
</head>
<body>
<input type = "hidden" name = "username" value = '${user}' }>
	<div>Welcome to the Number Convertor</div>
	<p data-item='${user}'>${user}</p>

	<section>
		<div></div>
		<nav>
			<ul class="menuItems">
				<li><a href='main.jsp' data-item='Home'>Home</a></li>
				<li><a href='convertors.jsp' data-item='Convertors'>Convertors</a></li>
				<li><a href='history.jsp' data-item='History'>History</a></li>
				<li><a href='account.jsp' data-item='Account'>Account</a></li>
				<li><a href='Logout' data-item='LogOut'>LogOut</a></li>
			</ul>
		</nav>
	</section>

	<footer>
		<div class="footer text-center">HERE YOU CAN CONVERT ANY NUMBER
			TO ANY SYSTEM OF YOUR CHOICE</div>

	</footer>
</body>
</html>
