<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="login_reg_page.css" rel="stylesheet" >
</head>
<body>

	<form action="home" autocomplete='off' class='form' method="post">
  <div class='control'>
    <h1>
      Welcome Back!
    </h1>
  </div>
  <div class='control block-cube block-input'>
    <input name='username' placeholder='Username' type='text' required>
    <div class='bg-top'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg-right'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg'>
      <div class='bg-inner'></div>
    </div>
  </div>
  <div class='control block-cube block-input'>
    <input name='password' placeholder='Password' type='password' required>
    <div class='bg-top'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg-right'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg'>
      <div class='bg-inner'></div>
    </div>
  </div>
  <button class='btn block-cube block-cube-hover' type='submit' name="submit" value="login">
    <div class='bg-top'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg-right'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg'>
      <div class='bg-inner'></div>
    </div>
    <div class='text'>
      Log In
    </div>
    </button>
    <br> <br>    
      <button class='btn block-cube block-cube-hover' type='button' onclick="window.location.href='register.jsp'">
    <div class='bg-top'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg-right'>
      <div class='bg-inner'></div>
    </div>
    <div class='bg'>
      <div class='bg-inner'></div>
    </div>
    <div class='text'>
      New Here?
    </div>
 	</button>
 	<br> <br> 
 	<tr>
 	<td>${message}</td>
 	</tr>



</form>


	
</body>
</html>