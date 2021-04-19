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
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Decimal to Octal & Hexadecimal</title>
<link href="convertors_style.css" rel="stylesheet" >
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<script src="PostDataToServlet.js" type="text/javascript"></script>
</head>
<body>
<form action="Convertor" autocomplete='off'method="post">

  <div class="segment">
    <h2>Convert Decimal Number</h2>
    <h2>To Octal and Hexadecimal</h2>
  </div>

  <label>
    <input name="convnum" type="text" placeholder="Enter the Decimal Number(3 Digits Max)" />
  </label>
  <label>
    <input type="text" placeholder="Decimal Number" value='${convert11}' disabled/>
  </label>
  <label>
    <input type="text" placeholder="Octal Number" value='${convert12}' disabled/>
  </label>
  <label>
    <input type="text" placeholder="Hexadecimal Number" value='${convert13}' disabled/>
  </label>
  <button name="submit" value="convert-dec-to-oct&hex" class="red" type="submit"><i class="icon ion-md-lock"></i> CONVERT</button>

  <div class="segment">
    <button class="unit" type="button" onClick="location.href='convertors.jsp'"><iconify-icon data-icon="ion-md-arrow-back"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='history-dec-oct&hex.jsp'"><iconify-icon data-icon="ion-md-cloud"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='main.jsp'"><iconify-icon data-icon="ion-md-home"></iconify-icon></button>
  </div>
  <label style="text-align:center; color:red">${error1}</label>
  <label style="text-align:center; color:red">${error2}</label>
    <div class="input-group">
    <label>
      <input type="text" placeholder='<%Date date = new Date();
         out.print(date.toString());%>' disabled/>
    </label>
  </div>
</form>

</body>
</html>
