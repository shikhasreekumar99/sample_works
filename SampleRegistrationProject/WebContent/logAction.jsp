<%@page import="java.sql.*" %>
<%
try
{
	String username=request.getParameter("usrname");
	String password=request.getParameter("pass");
	//Connection to database
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shikha","root","1234");
	Statement st=con.createStatement();
	String query="select * from reg where username='"+username+"' and password='"+password+"'";
	 ResultSet rs = st.executeQuery(query);
	  
	  if(rs.next())
	  {  
		  String id=rs.getString("reg_id");
		  session.setAttribute("reg_id",id);
		  System.out.println("Success");
		  response.sendRedirect("profile.jsp");
		  /*
		  String name=rs.getString("name");
		  String address=rs.getString("address");
		  String age=rs.getString("age");
		  String sex=rs.getString("sex");
		  String quali=rs.getString("quali");
		  
		
		  session.setAttribute("name", name);
		  session.setAttribute("address", address);
		  session.setAttribute("age", age);
		  session.setAttribute("sex", sex);
		  session.setAttribute("quali", quali);
		  */
		  
	  }
	  else
	{
		System.out.println("Not Success");
	    response.sendRedirect("login.jsp");
	}
	 
}
catch(Exception e)
{
	System.out.println(e);
}
%>
	
	
