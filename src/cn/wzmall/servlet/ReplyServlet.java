package cn.wzmall.servlet;

import cn.wzmall.dao.UserDao;
import cn.wzmall.model.Message;
import cn.wzmall.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ReplyServlet")
public class ReplyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");

        String messages = request.getParameter("messages");

        Message mesg = new Message();
        mesg.setMessages(messages);

        UserDao userDao = new UserDao();
        userDao.addMessages(mesg);
        System.out.println("留言成功");

        request.getRequestDispatcher("reply.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPut(request,response);
    }
}
