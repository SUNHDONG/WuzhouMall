package cn.wzmall.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wzmall.dao.UserDao;
import cn.wzmall.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPut(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		request.setCharacterEncoding("utf-8");  
		
		// 获取请求里所封装的参数所对应的值
		String username = request.getParameter("username");
		String password = request.getParameter("password");


		// 实例化User对象，封装值
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		// 实例化数据层操作
		UserDao userDao = new UserDao();
		
		HttpSession session=request.getSession(); 
		
		if(userDao.serachUser(username,password)) {
			
			session.setAttribute("user", user);
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			Cookie cookie = new Cookie("username",username);
			response.addCookie(cookie);
			// 请求转发
			request.getRequestDispatcher("loger_index.jsp").forward(request, response);

		} else {
			
			// 重定向
			response.sendRedirect("login.jsp");
		}
	}	
		
}


