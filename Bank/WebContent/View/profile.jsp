<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view profile</title>
<link type="text/css" rel="stylesheet" href="../UI/desing.css">
<script type=" text/javascript" src="../js/jquery-3.3.1.min.js"> </script>
<script>
$(document).ready(function()
	{
			//<!--JSON Data Exchange Security -->
		$.getJSON("../ActionPage/proaction.jsp",function(data)
				{
				 var name=data[0].name;
				 var age=data[0].age;
				 var sex=data[0].sex;
				 var quali=data[0].quali;
				 var state=data[0].state;
				 var acctype=data[0].acctype;
				 var accno=data[0].accno;
				 var inamt=data[0].inamt;
				 var username=data[0].username;
				 
				 
				 $("#name").val(name);
				 $("#age").val(age);
				 $("#sex").val(sex);
				 $("#quali").val(quali);
				 $("#state").val(state);
				 $("#acctype").val(acctype);
				 $("#accno").val(accno);
				 $("#inamt").val(inamt);
				 $("#username").val(username);
				});
		
		
		});
</script>
</head>
<body>
<form >
<div class="a"><h4><center> PERSONAL DETAILS</center></h4>
	  <div class="b">
			<label>NAME</label>
	<input type="text" id="name" readonly>
		</div>	
		<div class="c">
			<lable>AGE</lable>
		<input type="text" id="age" readonly>
		</div>
		<div class="d">
			<lable>SEX</lable>
			<input type="text" name="sex" id="sex" readonly>
		</div>
		<div class="c">
			<lable>QUALIFICATION</lable>
				<input type="text" name="quali" id="quali" readonly> 
		</div>
		
		<div class="d">
			<lable>STATE</lable>
				<input type="text" name="state" id="state" readonly>
		</div>
	</div>
	<div class="a2"><h4><center> ACCOUNT DETAILS</center></h4>
		<div class="e">
			<label>ACCOUNT TYPE</label>
			<input type="text" name="acctype" id="acctype" readonly>
		</div>	
		<div class="f">
			<lable>ACCOUNT NUMBER</lable>
			<input type="text"  id="accno" readonly>
		</div>
		<div class="f">
			<lable>INITIAL AMMOUNT</lable>
			<input type="text"  id="inamt" readonly>
		</div>
		<div class="f">
			<lable>USERNAME</lable>
			<input type="text" id="username" readonly>
		</div>
		<div class="g">
		<a href="home.jsp">	<input type="button" value="BACK 2 HOME" class="button"></a>
		</div>

	</div>
	</form>
	
</body>
</html>