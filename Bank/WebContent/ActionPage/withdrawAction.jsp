<%@include file="../databaseconnection.jsp" %>
<%
try
{ 
	String accno=request.getParameter("accno");
	String amt=request.getParameter("amt");
	int a1=Integer.parseInt(amt);
	String id=session.getAttribute("id").toString();
	String query1="select* from deposit where id='"+id+"'";
	  rs = st.executeQuery(query1);
	 if(rs.next())
	 {
	 String iamount=rs.getString("iniamt");
	 int b1=Integer.parseInt(iamount);
	int q=b1-a1;
	 
	String query="update deposit set iniamt='"+q+"' where id='"+id+"'and accno='"+accno+"'";
	int a=st.executeUpdate(query);
	if(a==1)
	{
		jo.put("result","success");
		ja.add(jo);
	}else
	{
		jo.put("result","fail");
		ja.add(jo);
	}
	 }
	out.println(ja);
	
	
}catch(Exception e)
{
	System.out.println(e);
}%>