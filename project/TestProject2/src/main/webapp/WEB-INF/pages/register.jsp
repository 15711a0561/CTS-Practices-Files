<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
   <link href='<c:url value="/resources/css/sample1.css"></c:url>' rel="stylesheet">
    <script>
    function validateform()
    {  
var name=form1.txt_username.value;  
var password=form1.txt_password.value;
var name1=form1.txt_pname.value;
var age=form1.txt_cname.value;
var email=form1.txt_price.value;
 
if (name==null || name=="")
{  
  alert("User Name can't be blank");  
  return false;  
}
else if(password.length<6)
{  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
else if(name1==null || name1=="")
{
alert("Product Name can't be blank");  
 return false;  
}
else if(name2==null || name2=="")
{
alert("Company Name cont be blank");  
  return false;  
}
else if(email==null || email=="")
{
alert("Price Block cont be blank");  
  return false;  
}
}  
</script>

</head>

<body>

	<form:form id="form1" name="form1" modelAttribute="product" method="post" action="register" onsubmit="return validateform()">
		<table width="70" height="250" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
				<center><h1><font face="Lucida Bright" color="#F0F3F4 ">REGISTRATION</font></h1>
						
						<table width="409" height="250" border="0" align="center">

							<tr>
								<td width="69">&nbsp;</td>
								<td  colspan="17"><font face="Calibri" color="#F0F3F4 ">User Name</font></td>
								<td colspan="17"><label> <form:input type="text"
											name="txt_username" id="txt_username" path="username" />
								</label>
								</td>
								<td width="56">&nbsp;</td>
							</tr>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td colspan="17"><font face="Calibri" color="#F0F3F4 ">Password</font></td>
								<td colspan="17"><form:input type="password"
										name="txt_password" id="txt_password" path="password" />
								</td>
										</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td colspan="17"><font face="Calibri" color="#F0F3F4 ">Product Name</font></td>
								<td colspan="17"><form:input type="text" name="txt_pname"
										id="txt_pname" path="productname" />
						</td>
										</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td colspan="17"><font face="Calibri" color="#F0F3F4 ">Company Name</font></td>
								<td colspan="17"><form:input type="text" name="txt_cname"
										id="txt_cname" path="companyname" />
						</td>
										</td>
								<td>&nbsp;</td>
							</tr>
						
							<tr>
								<td>&nbsp;</td>
								<td colspan="17"><font face="Calibri" color="#F0F3F4 ">Price</font></td>
								<td colspan="17"><form:input type="text" name="txt_price"
										id="txt_price" path="price" placeholder=" " />
								</td>
										</td>
								<td>&nbsp;</td>
							</tr>
							<tr></tr><tr></tr>
							<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="10"><input type="submit" name="btn_submit"
									id="btn_submit" value="Submit" /></td>
								<td>&nbsp;</td>
							
							</tr>
								
               		</table>

					</fieldset></td>
			</tr>
		</table>

	</form:form>
</body>
</html>