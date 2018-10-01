<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
<head>
    <title>登录</title>
</head>
<body>

    <%/*用Cookie实现记住密码的功能*/
        String username = "";
        Cookie[] cookies = request.getCookies();
        if (cookies!=null&&cookies.length>0)
        {
            for (Cookie cookie: cookies)
            {
                if ("uname".equals(cookie.getName()))
                {
                    username = cookie.getValue();
                }

            }
        }

    %>

    <%
        String message = "";
        String msg =  (String)request.getAttribute("msg");
        if (msg!= null)
        {
            message = msg;
        }

    %>

    <font color="red"><b><%= message%></b></font>
    <form action="<%= basePath %>/Login/LoginServlet" method="post">
        用户名:<input type="text" name="username" value="<%= username%>"><br>
        密码:<input type="password" name="password"><br>
        <input type="submit" name="submit" value="提交">
    </form>
</body>
</html>
