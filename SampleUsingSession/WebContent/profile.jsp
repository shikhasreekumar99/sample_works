<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view profile</title>
<link type="text/css" rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
<form action="edit.jsp">
	<div class="a"><h4><center>VIEW PROFILE</center></h4>
	  <div class="b">
			<label>NAME: </label>
			<%
			try
			
			{
				String name=session.getAttribute("name").toString();
				String username=session.getAttribute("username").toString();
				String address=session.getAttribute("address").toString();
				String age=session.getAttribute("age").toString(); 
				String sex=session.getAttribute("sex").toString(); 
				String quali=session.getAttribute("quali").toString();
			%>
		<label><%=name %></label>
		
		
		
		</div>	
		<div class="c">
			<lable>ADDRESS: </lable>
				<%	 %>
		<label><%=address %></label>
		</div>
		<div class="d">
			<lable>AGE: </lable>
			<%	%>
			<label><%=age %></label>
		</div>
		<div class="c">
			<lable>SEX: </lable>
			<label><%=sex %></label>
		</div>
		<div class="d">
			<lable>QUALIFICATION: </lable>
				<%	 %>
			<label><%=quali %></label>
		
		</div>
		<div class="e">
			<label>USERNAME: </label>
				<%	 %>
			<label><%=username %></label>
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