<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login form</title>
<link type="text/css" rel="stylesheet" href="../UI/style.css">
<script type=" text/javascript" src="../js/jquery-3.3.1.min.js"> </script>

<script>
$(document).ready(function()
{
	//<!--JavaScript Validation -->
	$(".d").click(function()
	{
		var username=$("#username").val(); // get
		var pass=$("#pass").val(); //get
		
		if(username=="" || pass=="")
		{
			alert("USERNAME OR PASSWORD IS EMPTY!!!!");	
			return false;
		}
	
		else
			{   
				//<!--JSON Data Exchange Security -->
				$.getJSON("../ActionPage/logAction.jsp?&username="+username+"&pass="+pass,function(data)
						{
							var message=data[0].result;
							//alert(message);
							if(message=="success")
								{
									alert("Login Sucessfully!");
									window.location.href="home.jsp";
								}
							else
								{
									alert("Login Failed!");
								
								}
						});
			}
	
	});
	   
});
</script>
</head>
<body>
	<div class="a"> <h4><center> LOGIN FORM</center></h4>
		<div class="b">
			<label>USERNAME</label>
			<input type="text" name="username" id="username">
		</div>	
		<div class="c">
			<lable>PASSWORD</lable>
			<input type="password" name="pass" id="pass">
		</div>
		<div class="d">
			<input type="button" value="submit" class="button">
		</div>
		
	</div>
</body>
</html>