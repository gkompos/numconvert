<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
	<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
	<link href="login_reg_page.css" rel="stylesheet">
	<script src="validateForm.js" type="text/javascript"></script>
</head>
<body>

	<form name="regform" autocomplete='off' class='form' action="home" method="post" onSubmit="return validateForm(event);">
		<div class='control'>
			<h1>Register HERE</h1>
		</div>
		<div class='control block-cube block-input'>
			<input name='firstName' placeholder='First Name' type='text' required>
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
			<input name='lastName' placeholder='Last Name' type='text' required>
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
			<input name='email' placeholder='Email' type='text' required>
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
			<input name='password' placeholder='Password' type='password'
				required>
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
			<input name='repassword' placeholder='Confirm Password'
				type='password' required>
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
		<button class='btn block-cube block-cube-hover' type='submit' name="submit" value="register">
			<div class='bg-top'>
				<div class='bg-inner'></div>
			</div>
			<div class='bg-right'>
				<div class='bg-inner'></div>
			</div>
			<div class='bg'>
				<div class='bg-inner'></div>
			</div>
			<div class='text'>Register</div>
		</button>
		<br> <br>
		 	<tr>
 	<td>${message}</td>
 	</tr>
	</form>
</body>
</html>