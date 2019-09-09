<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Balance form</title>
<link type="text/css" rel="stylesheet" href="../UI/style.css">
<script type=" text/javascript" src="../js/jquery-3.3.1.min.js"> </script>

<script>
$(document).ready(function()
{
	//<!--JSON Data Exchange Security -->
	$.getJSON("../ActionPage/proaction.jsp",function(data)
			{
		 var accno=data[0].accno;
		 $("#accno").val(accno);
		 var inamt=data[0].inamt;
		 $("#inamt").val(inamt);
			});
	$(".d").click(function()
	{
			window.location.href="home.jsp";
							
	
	});
	   
});
</script>
</head>
<body>
	<div class="a"> <h4><center> VIEW BALANCE </center></h4>
		<div class="b">
			<label>ACCOUNT NUMBER</label>
			<input type="text" name="accno" id="accno" readonly>
			
		</div>	
		<div class="c">
			<lable>BALANCE</lable>
			<input type="text" name="inamt" id="inamt" readonly>
		</div>
		<div class="d">
			<input type="button" value="OK" class="button">
		</div>
		
	</div>
</body>
</html>