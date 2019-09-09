<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
<form action="logAction.jsp">
	<div class="a"> <h4><center> LOGIN FORM</center></h4>
		<div class="b">
			<label>USERNAME</label>
			<input type="text" name="usrname">
		</div>	
		<div class="c">
			<lable>PASSWORD</lable>
			<input type="password" name="pass">
		</div>
		<div class="d">
			<input type="submit" value="submit" class="button">
		</div>
		
	</div>
</form>
</body>
</html>