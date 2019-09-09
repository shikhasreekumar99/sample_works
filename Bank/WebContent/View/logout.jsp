<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%

        session.removeAttribute("id");
      //  session.removeAttribute("password");
        session.invalidate();
        %>
        <script type="text/javascript">
		alert("Successfully Logged Out!")
		window.location.href="login.jsp";
		</script>
        
      
        
    </body>
</html>

