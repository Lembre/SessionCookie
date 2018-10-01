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

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username.equalsIgnoreCase("itcase"))
        {
            Cookie cookie = new Cookie("uname",username);
            cookie.setMaxAge(60*60);
            resp.addCookie(cookie);

            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            resp.sendRedirect("/success.jsp");
        }else
        {
            req.setAttribute("msg", "用户名或密码错误");
            req.getRequestDispatcher("/login.jsp").forward(req,resp );
        }
    }
}
