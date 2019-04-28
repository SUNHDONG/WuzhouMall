package cn.wzmall.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wzmall.dao.UserDao;
import cn.wzmall.model.Goods;
import cn.wzmall.model.User;

/**
 * Servlet implementation class AddBuyCarServlet
 */
@WebServlet("/AddBuyCarServlet")
public class AddBuyCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddBuyCarServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");  
		request.setCharacterEncoding("utf-8");  
		
		HttpSession session=request.getSession();

		String username = (String)session.getAttribute("username");
		String good_one=request.getParameter("good_one");
		String goods_number=request.getParameter("goods_number");

		User user = new User();
		user.setUsername(username);
		System.out.println(username);

		Goods usergoods = new Goods();
		usergoods.setGood_one(good_one);
		usergoods.setGoods_number(goods_number);

		System.out.println(good_one);
		System.out.println(goods_number);

		UserDao userDao = new UserDao();
		userDao.addGoods(usergoods,user);



       /* if(goods==null){
        	goods=new ArrayList();
            session.setAttribute("goods",goods);
            session.setAttribute("good_one",good_one);
            session.setAttribute("goods_number",goods_number);
        }
        if(good_one!=null){
        	goods.add(good_one);
        	goods.add(goods_number);
			System.out.println(good_one);
			System.out.println(goods_number);
          }*/


		request.getRequestDispatcher("detail.jsp").forward(request, response);


	}

}
