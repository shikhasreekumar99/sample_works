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
	String password=request.getParameter("pass");
	
	int a=st.executeUpdate("insert into deposit(name,age,sex,quali,state,acctype,accno,iniamt,username,password) values('"+name+"','"+age+"','"+sex+"','"+quali+"','"+state+"','"+acctype+"','"+accno+"','"+inamt+"','"+username+"','"+password+"')");
	st1.executeUpdate("insert into login(username,password) values('"+username+"','"+password+"')");
	if(a==1)
	{
		jo.put("result","success");
		ja.add(jo);
	}else
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
