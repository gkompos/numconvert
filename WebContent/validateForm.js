function validateForm(event){	
	
	var fname=document.regform.firstName.value;
	var lname=document.regform.lastName.value;
	var uname=document.regform.username.value;
	var email=document.regform.email.value;
	var pass=document.regform.password.value;
	var repass=document.regform.repassword.value;
	var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	if(fname.length>=46||(fname.length<=2)){
		event.preventDefault();
		alert("First Name must contain 2-45 characters. ");
		document.regform.fname.focus();
		
	}
	else if(lname.length>=46||(lname.length<=2)){
		event.preventDefault();
		alert("Last Name must contain 2-45 characters. ");
		document.regform.lname.focus();
		
	}
	else if((uname.length<=4)||(uname.length>=31)){
		event.preventDefault();
		alert("Username must contain 5-30 characters. ");
		document.regform.uname.focus();
		
	}
	else if(email.length<=4||(email.length>=201)){
		event.preventDefault();
		alert("Email must contain 4-200 characters. ");
		document.regform.email.focus();
		
	}
	else if(email.indexOf('@')==-1){
		
		event.preventDefault();
		alert("Invalid email address. ");
		document.regform.email.focus();
		
	}
	else if((pass.length<=4)||(pass.length>=41)){
		
		event.preventDefault();
		alert("Passwords must contain 5-40 characters. ");
		document.regform.pass.focus();
		
	}
	else if(Object.is(pass , repass)==false){
			event.preventDefault();
			alert("Passwords don't match");
			document.regform.pass.focus();
			}
    else {
        document.regform.submit();
    }
}
