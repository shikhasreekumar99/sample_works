<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view profile</title>
<link type="text/css" rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
<form action="editAction.jsp">
	<div class="a"><h4><center>Edit PROFILE</center></h4>
	  <div class="b">
			<label>NAME: </label>
			<%
			try
			
			{
			String name=session.getAttribute("name").toString();
			String address=session.getAttribute("address").toString();
			String age=session.getAttribute("age").toString();
			String sex=session.getAttribute("sex").toString();
			
			%>
	<input type="text" name="name" value=<%=name %>>
		
		
		</div>	
		<div class="c">
			<lable>ADDRESS: </lable>
				<%	 %>
	<input type="text" name="address" value=<%=address %>>
		</div>
		<div class="d">
			<lable>AGE: </lable>
			<%	%>
			<input type="text" name="age" value=<%=age %>>
		</div>
		<div class="c">
			<lable>SEX: </lable>
			<input type="text" name="sex" value=<%=sex%>>
		</div>
		<div class="d">
			<lable>QUALIFICATION: </lable>
				<%	String quali=session.getAttribute("quali").toString(); %>
				<input type="text" name="quali" value=<%=quali %>>
		
		</div>
		<div class="e">
			<label>USERNAME: </label>
				<%	String username=session.getAttribute("username").toString();%>
				<input type="text" name="username" value=<%=username %>>
				
			<%}catch(Exception e)
			{
				System.out.println(e);
			}%>
		</div>	
		<div class="f">
		<input type="submit" value="Edit" class="button">
		</div>
	</div>
	</form>
</body>
</html>