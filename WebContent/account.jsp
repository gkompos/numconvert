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
<%@ page import = "java.io.*,java.util.*" %>
<%
   // Get session creation time.
   Date createTime = new Date(session.getCreationTime());
   
   // Get last access time of this Webpage.
   Date lastAccessTime = new Date(session.getLastAccessedTime());
   String uname=(String) session.getAttribute("user");	
   String fname=(String) session.getAttribute("firstname");	
   String lname=(String) session.getAttribute("lastname");	
   String email=(String) session.getAttribute("email");	
   String pass=(String) session.getAttribute("password");	
   String web=(String) session.getAttribute("webbrowser");
   
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Information</title>
<link href="convertors_style.css" rel="stylesheet" >
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
</head>
<body>
<form>
  <div class="segment">
    <h2>Account Information</h2>
  </div>
  <label>
  	<h5>Username:</h5>
    <input type="text" value='<% out.print(uname); %>' style="text-align:center;" disabled />
  </label>
  <label>
  <h5>First Name:</h5>
    <input type="text" value='<% out.print(fname); %>' style="text-align:center;" disabled/>
  </label>
  <label>
  <h5>Last Name:</h5>
    <input type="text" value='<% out.print(lname); %>' style="text-align:center;" disabled />
  </label>
  <label>
  <h5>Email:</h5>
    <input type="text" value='<% out.print(email); %>' style="text-align:center;" disabled/>
  </label>
  <label>
  <h5>Password:</h5>
    <input type="text" value='<% out.print(pass); %>' style="text-align:center;" disabled/>
  </label>
  <label>
  <h5>Web Browser:</h5>
    <input type="text" value='<% out.print(web); %>' style="text-align:center;" disabled/>
  </label>
    <h5>Visit Count:</h5>
    <input type="text" value='<% out.print(session.getAttribute("visitCount")); %>' style="text-align:center;" disabled/>
  </label>
  <label>
  <h5>Session ID:</h5>
    <input type="text" value='<% out.print(session.getId()); %>' style="text-align:center;" disabled/>
  </label>
  <label>
  <h5>Session Create Time:</h5>
    <input type="text" value='<% out.print(createTime); %>' style="text-align:center;" disabled/>
  </label>
    <label>
    <h5>Last Access Time:</h5>
    <input type="text" value='<% out.print(lastAccessTime); %>' style="text-align:center;" disabled/>
  </label>
  <div class="segment">
    <button class="unit" type="button" onClick="location.href='convertors.jsp'"><iconify-icon data-icon="ion-md-git-compare"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='history.jsp'"><iconify-icon data-icon="ion-md-cloud"></iconify-icon></button>
    <button class="unit" type="button" onClick="location.href='main.jsp'"><iconify-icon data-icon="ion-md-home"></iconify-icon></button>
  </div>
    <div class="input-group">
  </div>
</form>

</body>
</html>