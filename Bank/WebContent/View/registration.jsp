<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRATION PAGE</title>
<link type="text/css" rel="stylesheet" href="../UI/desing.css">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function()
{
		//<!--JavaScript Validation -->
	$(".g").click(function()
	{
		var name=$("#name").val(); // get
		var age=$("#age").val(); 
		var sex=$("input[name='sex']:checked").val();
		var quali=$("input[name='quali']:checked").val();
		var state=$("#state").val(); 
		var acctype=$("input[name='acctype']:checked").val();
		var accno=$("#accno").val(); 
		var inamt=$("#inamt").val();
		var username=$("#username").val();
		var pass=$("#pass").val();
	
		if(name=="" || age==""||sex=="" || quali==""||state=="" || acctype==""||accno==""||inamt=="" || username==""||pass=="")
		{
			alert("CHECK IF ANY INPUT IS EMPTY!!!!");	
			return false;
		}
		else
			{
					//<!--JSON Data Exchange Security -->
				$.getJSON("../ActionPage/regAction.jsp?name="+name+"&age="+age+"&sex="+sex+"&quali="+quali+"&state="+state+"&acctype="+acctype+"&accno="+accno+"&inamt="+inamt+"&username="+username+"&pass="+pass,function(data)
						{
							var message=data[0].result;
							//alert(message);
							if(message=="success")
								{
									alert("Registration Sucessfull!");
									window.location.href="login.jsp";
								}
							else
								{
									alert("Registration Failed!");
								
								}
						});
			}
	
	});
});
</script>
</head>
<body>
<form >
	<div class="a"><h4><center> PERSONAL DETAILS</center></h4>
	  <div class="b">
			<label>NAME</label>
			<input type="text" name="name" id="name">
		</div>	
		<div class="c">
			<lable>AGE</lable>
			<input type="text" name="age" id="age">
		</div>
		<div class="d">
			<lable>SEX</lable>
			<input type="radio" name="sex" value="MALE" id="sex">MALE
			<input type="radio" name="sex" value="FEMALE" id="sex">FEMALE
		</div>
		<div class="c">
			<lable>QUALIFICATION</lable>
			<input type="checkbox" name="quali" value="BCA" id="quali">BCA
			<input type="checkbox" name="quali" value="B.COM" id="quali">B.COM
			<input type="checkbox" name="quali" value="OTHER" id="quali">OTHER
		</div>
		
		<div class="d">
			<lable>STATE</lable>
			<select id="state">
			<option>Kerala</option>
			<option> Tamil Nadu</option>
			<option>NEW DELHI</option>
			</select>
		</div>
	</div>
	<div class="a2"><h4><center> ACCOUNT DETAILS</center></h4>
		<div class="e">
			<label>ACCOUNT TYPE</label>
		<input type="radio" name="acctype" value="SAVING" id="acctype">SAVING
			<input type="radio" name="acctype" value="CURRENT" id="acctype">CURRENT
		</div>	
		<div class="f">
			<lable>ACCOUNT NUMBER</lable>
			<input type="text"  id="accno">
		</div>
		<div class="f">
			<lable>INITIAL AMMOUNT</lable>
			<input type="text"  id="inamt">
		</div>
		<div class="f">
			<lable>USERNAME</lable>
			<input type="text" id="username">
		</div>
		<div class="f">
			<lable>PASSWORD</lable>
			<input type="password" id="pass">
		</div>
		<div class="g">
			<input type="button" value="REGISTER" class="button">
		</div>
	</div>
	
	</form>
</body>
</html>