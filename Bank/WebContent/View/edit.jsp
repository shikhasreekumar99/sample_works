<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit profile</title>
<link type="text/css" rel="stylesheet" href="../UI/web.css">
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
			
			//<!--JavaScript Validation -->
	
		 $(".g").click(function()
					{	 
			 var name=$("#name").val(); 
			 var age= $("#age").val();
			 var sex= $("#sex").val(); 
			 var quali=$("#quali").val();
			 var state= $("#state").val();
			 var acctype= $("#acctype").val();
			 var accno= $("#accno").val();
			 var inamt= $("#inamt").val();
			 var username= $("#username").val();
			 
						
					if(name=="" ||age==""||sex=="" || quali==""||state=="" || acctype==""|| accno==""||inamt=="" || username=="")
						{
							alert("CHECK IF ANY INPUT IS EMPTY!!!!");	
							return false;
						}
						else
							{
								//<!--JSON Data Exchange Security -->
					   $.getJSON("../ActionPage/editAction.jsp?name="+name+"&age="+age+"&sex="+sex+"&quali="+quali+"&state="+state+"&acctype="+acctype+"&accno="+accno+"&inamt="+inamt+"&username="+username,function(data)
							{
						   var message=data[0].result;
							//alert(message);
							if(message=="success")
								{
									alert("Updated Sucessfully!");
									window.location.href="home.jsp";
									
								}
							else
								{
									alert("Updation Failed!");
								}
							});
							}
					});
	
			});
		});
</script>
</head>
<body>
<form >
	<div class="a"><h4><center> PERSONAL DETAILS</center></h4>
	  <div class="b">
			<label>NAME</label>
	<input type="text" id="name" >
		</div>	
		<div class="c">
			<lable>AGE</lable>
		<input type="text" id="age" >
		</div>
		<div class="d">
			<lable>SEX</lable>
			<input type="text" id="sex" >
		</div>
		<div class="c">
			<lable>QUALIFICATION</lable>
			<input type="text" id="quali" >
		</div>
		
		<div class="d">
			<lable>STATE</lable>
			<input type="text" id="state" >
		</div>
	</div>
	<div class="a2"><h4><center> ACCOUNT DETAILS</center></h4>
		<div class="e">
			<label>ACCOUNT TYPE</label>
	<input type="text" id="acctype" >
		</div>	
		<div class="f">
			<lable>ACCOUNT NUMBER</lable>
			<input type="text"  id="accno" >
		</div>
		<div class="f">
			<lable>INITIAL AMMOUNT</lable>
			<input type="text"  id="inamt" >
		</div>
		<div class="f">
			<lable>USERNAME</lable>
			<input type="text" id="username" >
		</div>
		<div class="g">
			<input type="button" value="UPDATE" class="button">
		</div>

	</div>
	</form>
	
</body>
</html>