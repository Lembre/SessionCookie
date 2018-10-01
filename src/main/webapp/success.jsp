package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * Created by Lembre on 2018.10.1
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

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
