<%@page import="java.sql.*" %>
<%
try
{
	String username=request.getParameter("usrname");
	String password=request.getParameter("pass");
	//DATABASE CONNECTIVITY
	
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
	
	
