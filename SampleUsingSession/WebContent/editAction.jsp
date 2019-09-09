<%
try
{
	String name=request.getParameter("name");
	
	String address=request.getParameter("address");
	String age=request.getParameter("age");
	String sex=request.getParameter("sex");
	String quali=request.getParameter("quali");
	String usrname=request.getParameter("username");

	session.setAttribute("username", usrname);
	
	session.setAttribute("name", name);
	session.setAttribute("address", address);
	session.setAttribute("age", age);
	session.setAttribute("sex", sex);
	session.setAttribute("quali", quali);
	//System.out.println("Sucessfully Edited!");
	response.sendRedirect("profile.jsp");
	
	
}catch(Exception e)
{
	System.out.println(e);
}%>