package cn.wzmall.servlet;

import cn.wzmall.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteGoodsServlet")
public class DeleteGoodsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int goods_id = Integer.parseInt(request.getParameter("goods_id"));

        UserDao userDao = new UserDao();
        userDao.DeleteGoods(goods_id);

        request.getRequestDispatcher("dis_car.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
