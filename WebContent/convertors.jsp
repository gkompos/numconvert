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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose your Number Convertor</title>
<link href="page_temp.css" rel="stylesheet">
</head>
<body>

	<div>CHOOSE YOUR NUMBER</div>
	<p data-item='CONVERTOR'>CONVERTOR</p>

	<section>
		<div></div>
		<nav>
			<ul class="menuItems">
				<li><a href='dec-to-oct&hex.jsp' data-item='Decimal-Hex&Octal'>Decimal-Hex&Octal</a></li>
				<li><a href='#' data-item='Binary-Hex&Decimal'>Binary-Hex&Decimal</a></li>
				<li><a href='#' data-item='Binary-Octal&Decimal'>Binary-Octal&Decimal</a></li>
				<li><a href='#' data-item='Hex-Binary&Decimal'>Hex-Binary&Decimal</a></li>
				<li><a href='#' data-item='Hex-Octal&Decimal'>Hex-Octal&Decimal</a></li>
				
			</ul>
		</nav>
	</section>

	<footer>
		<div class="footer text-center"><a href='main.jsp' data-item='HOME PAGE'>HOME PAGE</a></div>

	</footer>

</body>
</html>