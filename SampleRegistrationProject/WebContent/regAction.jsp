<%@page import="java.sql.*" %>
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
	//CONNECTION TO DATABASE IS CREATED
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shikha","root","1234");
	Statement st=con.createStatement();
	int a=st.executeUpdate("insert into reg(name,address,age,sex,quali,username,password) values('"+name+"','"+addr+"','"+age+"','"+sex+"','"+quali+"','"+username+"','"+password+"')");
	if(a==0)
	{
		System.out.println("Not Success");
		response.sendRedirect("registration.jsp");
	}else
	{
		System.out.println("Success");
	    response.sendRedirect("login.jsp");

	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
