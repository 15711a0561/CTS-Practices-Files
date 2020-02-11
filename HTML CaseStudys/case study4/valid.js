function validateform() {
	var username=document.myform.name.value;
	var password=document.myform.Pwd.value;
	if (username==null || username=="") {
		alert("Name can't be blank");
		return false;
	}
	else if(password.length<6){
		alert("Passward must be atleast 6 Characters long.");
			return false;
	}
	
}