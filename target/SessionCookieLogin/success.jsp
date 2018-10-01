<%--
  Created by IntelliJ IDEA.
  User: Lembre
  Date: 2018.10.1
  Time: 下午 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功</title>
</head>
<body>

    <%
        String msg = (String)session.getAttribute("username");
        if (msg == null)
        {
            request.setAttribute("msg", "你还没登陆");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    %>
<h1>欢迎光临,<%= msg%>用户</h1>

</body>
</html>
