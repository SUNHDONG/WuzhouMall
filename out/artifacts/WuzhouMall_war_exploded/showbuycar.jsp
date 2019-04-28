<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.wzmall.dao.UserDao" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>
<div class="Max_f4">
    	<table>
		<tr>
            <td style="width:500px">用户名</td>
			<td style="width:500px">商品</td>
			<td style="width:100px">数量</td>
		</tr>
		<c:forEach items="${goods}" var="goods">
		   <tr>
             <td>${username}</td>
		  	 <td>${good_one}</td>
		   	 <td>${goods_number}</td>

           </tr>
		</c:forEach>
    	</table>
    <a href="detail.jsp">点我跳转商品详情页</a>
    </div>
    <%
            request.setCharacterEncoding("utf-8");
            ArrayList goods=(ArrayList)session.getAttribute("goods");
            for(int i=0;i<goods.size();i++){
                if(goods.get(i)!=null){
                    String ss=(String)goods.get(i);

                    //将已添加到购物车的商品信息保存在表单中
                %>
                <form action="" method="post">
                    <input type="text" name=good_one value="<%= ss%>" size="40" maxlength="200" readonly>
                    <input type="submit" value="删除">
                </form>
                <%  
                }
            }
            //获取要删除的商品的信息
            String delgood=request.getParameter("good_one");
            if(delgood!=null){
                
                for(int j=0;j<goods.size();j++){
                    String good_one=(String)goods.get(j);
                    if(good_one==null){
                    	goods.remove(j);
                    }
                    if(good_one!=null && good_one.indexOf(delgood)!=-1){
                    	goods.remove(j);
                        //刷新当前页面
                        %>
                        <script type="text/javaScript">
                        alert("删除成功");
                        window.location.href=window.location.href;
                        </script>
                        <%
                        break;
                    }
                }   
            }
         %>
    
</body>
</html>