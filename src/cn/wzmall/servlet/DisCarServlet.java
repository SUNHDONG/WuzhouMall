package cn.wzmall.servlet;

import cn.wzmall.dao.UserDao;
import cn.wzmall.model.Goods;
import cn.wzmall.model.User;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/DisCarServlet")
public class DisCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");

        String good_one = request.getParameter("good_one");
        String goods_number = request.getParameter("goods_number");
        String username = request.getParameter("username");

        Goods usergoods = new Goods();
        usergoods.setGood_one(good_one);
        usergoods.setGoods_number(goods_number);

        User user = new User();
        user.setUsername(username);

        UserDao userDao = new UserDao();

        List<Goods> listGoods = userDao.selectAll(username);
        request.setAttribute("goodsList", listGoods);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPut(request,response);
    }
}
