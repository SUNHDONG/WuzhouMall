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
 * 
 * 功能：发送邮箱功能处理
 * @author chinese东
 * @author 2018年12月20日
 *
 */
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sessionCode = (String) req.getSession().getAttribute("code");
		System.out.println(sessionCode);
		//  获取session中的验证码
		if(sessionCode != null) {
			//  获取页面提交的验证码
			String inputCode = req.getParameter("code");
			System.out.println("页面提交的验证码:" + inputCode);
			HttpSession session=req.getSession(); 
			if (sessionCode.toLowerCase().equals(inputCode.toLowerCase())) {
				// 把用户名和密码等一系列信息传入数据库中
				String username = req.getParameter("username");
				String password = req.getParameter("password");
				String repassword = req.getParameter("repassword");
				String email = req.getParameter("email");
				String code = req.getParameter("code");
				
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				user.setRepassword(repassword);
				user.setCode(code);
				user.setEmail(email);
				
				UserDao userdao = new UserDao();
				userdao.addUser(user);
				System.out.println("注册成功");
				session.setAttribute("user", user);
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				Cookie cookie = new Cookie("username",username);
				resp.addCookie(cookie);
				// 请求转发
				req.getRequestDispatcher("loger_index.jsp").forward(req, resp);

			}else {
				//  验证失败
				req.getRequestDispatcher("fail.jsp").forward(req, resp);
			}
		}else {
			//  验证失败
			req.getRequestDispatcher("fail.jsp").forward(req, resp);
		}
		//  移除session中的验证码
		req.removeAttribute("code");
	}
}
