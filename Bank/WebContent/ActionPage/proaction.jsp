<%@include file="../databaseconnection.jsp" %>
<%
try
  {
		String id=session.getAttribute("id").toString();
		String query="select * from deposit where id='"+id+"'";
		  rs = st.executeQuery(query);
		 if(rs.next())
		  {
			  String name=rs.getString("name");
			  String age=rs.getString("age");
			  String sex=rs.getString("sex");
			  String quali=rs.getString("quali");
			  String state=rs.getString("state");
			  String acctype=rs.getString("acctype");
			  String accno=rs.getString("accno");
			  String inamt=rs.getString("iniamt");
			  String username=rs.getString("username");
			  
			  jo.put("name",name);
			  jo.put("age",age);
			  jo.put("sex",sex);
			  jo.put("quali",quali);
			  jo.put("state",state);
			  jo.put("acctype",acctype);
			  jo.put("accno",accno);
			  jo.put("inamt",inamt);
			  jo.put("username",username);
			  ja.add(jo);
			  
		  }
		 out.println(ja);		 

}
catch(Exception e)
{
	System.out.println(e);
}
%>