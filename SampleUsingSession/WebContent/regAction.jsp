<%
try
{
	String name=request.getParameter("name").toString();
	String addr=request.getParameter("addr").toString();
	String age=request.getParameter("age").toString();
	String sex=request.getParameter("sex").toString();
	String quali=request.getParameter("quali").toString();
	String username=request.getParameter("username").toString();
	String password=request.getParameter("pass").toString();
	session.setAttribute("name", name);
	session.setAttribute("addr", addr);
	session.setAttribute("address", addr);
	session.setAttribute("age", age);
	session.setAttribute("sex", sex);
	session.setAttribute("quali",quali);
	session.setAttribute("username",username);
	session.setAttribute("password", password);
	
	
	if((username.equals(""))||(password.equals("")))
	{
		response.sendRedirect("registration.jsp");
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
