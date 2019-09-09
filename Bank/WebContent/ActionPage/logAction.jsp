<%@include file="../databaseconnection.jsp" %>
<%
try
{
	String username=request.getParameter("username");
	String password=request.getParameter("pass");
	//Connection to database
	
	
	String query="select * from deposit where username='"+username+"' and password='"+password+"'";
	 rs = st.executeQuery(query);

	  if(rs.next())
	  {
		  String id=rs.getString("id");
	   	  session.setAttribute("id", id);
		  jo.put("result","success");
		  ja.add(jo);
	  }
	  else
	  {
		  jo.put("result","fail");
		  ja.add(jo);
	  }
	  System.out.println(ja);
		out.println(ja);
}
catch(Exception e)
{
	System.out.println(e);
}
%>
