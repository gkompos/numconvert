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
<title>History of Numbers Conversion</title>
<link href="page_temp.css" rel="stylesheet">
</head>
<body>

	<div>HERE IS YOUR </div>
	<p data-item='HISTORY'>HISTORY</p>
	<div>OF NUMBERS CONVERSION</div>
	<section>

		<nav>
			<ul class="menuItems">
				<li><a href='history-dec-oct&hex.jsp' data-item='Decimal to Octal&Hex'>Decimal to Octal&Hex</a></li>
				<li><a href='#' data-item='Binary to Octal&Decimal'>Binary to Octal&Decimal</a></li>
				<li><a href='#' data-item='Binary to Hex&Decimal'>Binary to Hex&Decimal</a></li>
				<li><a href='#' data-item='Hex to Binary&Decimal'>Hex to Binary&Decimal</a></li>
				<li><a href='#' data-item='Hex to Octal&Decimal'>Hex to Octal&Decimal</a></li>	
			</ul>
		</nav>
		<div>Click any of the above to view their history.</div>
	</section>

	<footer>
		<div class="footer text-center"><a href='main.jsp' data-item='HOME PAGE'>HOME PAGE</a></div>

	</footer>

</body>
</html>