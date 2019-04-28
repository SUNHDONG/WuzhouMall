package cn.wzmall.html;

public class htmlText {
	//  返回页面Html携带的6位随机码
	public static String html(String code) {
		
		String html = "五洲购物商城邮箱验证<br/>"+ 
		"这封邮件是由五洲购物商城发送的。<br/>"+
		"你收到这封邮件是五洲购物商城进行新用户注册时使用这个email。<br/>"+
		"账号激活声明<br/>"+
		"你只将下面验证码输入提示框即可：<h3 style='color:red;'>" + code + "</h3><br/>";
		return html;
	}
}
