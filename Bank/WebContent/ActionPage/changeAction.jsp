<%@include file="../databaseconnection.jsp" %>
<%
try
{ 
	String pass=request.getParameter("pass");
	String conpass=request.getParameter("conpass");
	String id=session.getAttribute("id").toString();
	
	String query="update deposit set password='"+conpass+"' where id='"+id+"'and password='"+pass+"'";
	String query1="update login set password='"+conpass+"' where id='"+id+"'and password='"+pass+"'";
	int a= st.executeUpdate(query);
	int a1= st1.executeUpdate(query1);
	if(a==1 && a1==1)
	{
		jo.put("result","success");
		ja.add(jo);
	}else
	{
		jo.put("result","fail");
		ja.add(jo);
	}
	out.println(ja);
	
	
}catch(Exception e)
{
	System.out.println(e);
}%>