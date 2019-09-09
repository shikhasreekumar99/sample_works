<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deposit form</title>
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
	
			});
	$(".d").click(function()
	{
			//<!--JavaScript Validation -->
		var accno=$("#accno").val(); // get
		var amt=$("#amt").val(); //get
	
		
		if(accno=="" || amt=="")
		{
			alert("ACCOUNT NUMBER AND AMOUNT IS EMPTY!!!!");	
			return false;
		}
	
		else
			{	//alert(accno+amt+inamt);
				$.getJSON("../ActionPage/depositAction.jsp?&accno="+accno,"&amt="+amt,function(data)
						{
							var message=data[0].result;
							//alert(message);
							if(message=="success")
								{
								alert("SUCESSFULLY DEPOSITED!");
									window.location.href="home.jsp";
								}
							else
								{
									alert("Deposit Failed!");
								
								}
						});
			}
	
	});
	   
});
</script>
</head>
<body>
	<div class="a"> <h4><center> DEPOSIT FORM</center></h4>
		<div class="b">
			<label>ACCOUNT NUMBER</label>
			<input type="text" name="accno" id="accno" readonly>
		</div>	
		<div class="c">
			<lable>AMOUNT</lable>
			<input type="text" name="amt" id="amt">
		</div>
		<div class="d">
			<input type="button" value="Deposit" class="button">
		</div>
		
	</div>
</body>
</html>