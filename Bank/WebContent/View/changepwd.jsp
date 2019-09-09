<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change Password</title>
<link type="text/css" rel="stylesheet" href="../UI/changepass.css">
<script type=" text/javascript" src="../js/jquery-3.3.1.min.js"> </script>

<script>
$(document).ready(function()
{
	//<!--JavaScript Validation -->
	$(".e").click(function()
	{
		
		var pass=$("#pass").val(); // get
		
		var newpass=$("#newpass").val(); //get
		
		var conpass=$("#conpass").val(); //get
		
		if(pass==""|| newpass=="" || conpass=="")
		{
			alert("PASSWORD IS EMPTY!!!!");	
			return false;
		}
	
		else
			{
			if(newpass==conpass)
				{
					//<!--JSON Data Exchange Security -->
				$.getJSON("../ActionPage/changeAction.jsp?&pass="+pass+"&conpass="+conpass,function(data)
						{	
							var message=data[0].result;
							//alert(message);
							if(message=="success")
								{
									alert("Password Updated Sucessfully!");
									window.location.href="home.jsp";
								}
							else
								{
									alert("Password Updation Failed!");
								}
						});
				}
			}
	
	});
	   
});
</script>
</head>
<body>
	<div class="a"> <h4><center> CHANGE PASSWORD</center></h4>
		<div class="b">
			<label>OLD PASSWORD</label>
			<input type="password" name="pass" id="pass">
		</div>	
		<div class="c">
			<lable>NEW PASSWORD</lable>
			<input type="password" name="newpass" id="newpass">
		</div>
		<div class="d">
			<lable>CONFIRM PASSWORD</lable>
			<input type="password" name="conpass" id="conpass">
		</div>
		<div class="e">
			<input type="button" value="submit" class="button">
		</div>
	</div>

</body>
</html>