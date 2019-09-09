<%@include file="../databaseconnection.jsp" %>
<%
try
{ 
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String sex=request.getParameter("sex");
	String quali=request.getParameter("quali");
	String state=request.getParameter("state");
	String acctype=request.getParameter("acctype");
	String accno=request.getParameter("accno");
	String inamt=request.getParameter("inamt");
	String username=request.getParameter("username");
	String id=session.getAttribute("id").toString();
	String query="update deposit set name='"+name+"',age='"+age+"',sex='"+sex+"',quali='"+quali+"',state='"+state+"',acctype='"+acctype+"',accno='"+accno+"',iniamt='"+inamt+"',username='"+username+"' where id='"+id+"'";
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
	out.println(ja);
	

}catch(Exception e)
{
	System.out.println(e);
}%>