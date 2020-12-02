package servlet;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Buy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("gbk");
        String price=req.getParameter("price");
        String num=req.getParameter("num");
        int p=Integer.parseInt(price);
        int n=Integer.parseInt(num);
        int result=p*n;
        HttpSession session = req.getSession();
        session.setAttribute("result",result);
        resp.sendRedirect("/index.jsp");
    }
}
