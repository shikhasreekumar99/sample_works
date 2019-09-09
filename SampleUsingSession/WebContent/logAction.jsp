<%
try
{
	String username=session.getAttribute("username").toString();
	String password=session.getAttribute("password").toString();
	
	String usrname=request.getParameter("usrname").toString();
	String pass=request.getParameter("pass").toString();
	
	if((username.equals(usrname))&&(password.equals(pass)))
	{
		response.sendRedirect("profile.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
}
catch(Exception e)
{
	System.out.println(e);
}


%>
