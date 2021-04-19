<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String uname=(String) session.getAttribute("user");  %>
<link href="history_temp.css" rel="stylesheet">
<link href="convertors_style.css" rel="stylesheet" >
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<title>History Of Decimal To Octal & Hex</title>
</head>
<input type="hidden" name="action" value="queryCategories"/>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/num_conv"
        user="root" password="BGeorge.0412.9598"
    />
     
    <sql:query var="listData"   dataSource="${myDS}">
        select create_time, result from num_conv.data where uname='<%out.print(uname);%>' and convertor='dec-to-oct&hex';
    </sql:query>
<div class="container">
  <h2>History of Data for the Convertor Decimal To Octal & Hexadecimal</h2>
  
  <ul class="responsive-table">
    <li class="table-header">
      <div class="col col-1" style="text-align:center; color:black" >Data & Time</div>
      <div class="col col-2" style="text-align:center; color:black" >Result</div>
    </li>
    <c:forEach var="data" items="${listData.rows}">
         <li class="table-row">
      		<div class="col col-1" data-label="Create_Time"><c:out value="${data.create_time}" /></div>
      		<div class="col col-2" data-label="Result" style="text-align:center;"><c:out value="${data.result}" /></div>
    	</li>
    </c:forEach>  
  </ul>
</div>
<div class="segment">
    <button class="unit" type="button" onClick="location.href='history.jsp'"><iconify-icon data-icon="ion-md-arrow-back"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='dec-to-oct&hex.jsp'"><iconify-icon data-icon="ion-md-git-compare"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='delete.jsp'"><iconify-icon data-icon="ion-md-close-circle"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='main.jsp'"><iconify-icon data-icon="ion-md-home"></iconify-icon></button>
</div>
</body>


</html>


   