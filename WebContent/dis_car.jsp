<%@ page import="cn.wzmall.model.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.wzmall.dao.UserDao" %>
<%@ page import="cn.wzmall.model.User" %><%--
  Created by IntelliJ IDEA.
  User: chinesedong
  Date: 2018/12/23
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>购物车</title>
</head>
<body>

<a href="loger_index.jsp">点击返回商城主页</a>
    <%--<script >
    function replay(obj){
        $('replay').value+='删除'+obj.value+'楼\n';
    }
    function $(id){
        return document.getElementById(id)
    }
</script>--%>

    <%
        String username = (String)session.getAttribute("username");
        User user = new User();
        user.setUsername(username);
        UserDao userDao = new UserDao();
        List<Goods> listGoods = userDao.selectAll(username);
        request.setAttribute("goodsList", listGoods);
    %>
        <table>
            <tr>
                <td style="width:50px">ID</td>
                <td style="width:300px">商品信息</td>
                <td style="width:100px">数量</td>
                <td style="width:100px">用户名</td>
                <td style="width:100px">金额</td>
                <td style="width:100px">操作</td>

            </tr>
            <%--c:set 实现求某列和的功能--%>
            <c:set var="sum" value="0"></c:set>
            <c:forEach items="${goodsList}" var="usergoods">
                <tr>
                    <td>${usergoods.goods_id}</td>
                    <td>${usergoods.good_one}</td>
                    <td>${usergoods.goods_number}</td>
                    <td>${user.username}</td>
                    <td>${usergoods.goods_number*599}</td>
                    <td><a href="DeleteGoodsServlet?goods_id=${usergoods.goods_id}">删除</a></td>
                </tr>
                <c:set var="sum" value="${sum+usergoods.goods_number*599}"></c:set>
            </c:forEach>

        </table>
            订单总价:<td style="width:100px">${sum}</td><br>
            <%--将值传入XXXServlet实现在线付款功能--%>
            <td><a href="http://codepay.fateqq.com:52888/codepay.html?id=133807&token=qhFO5GS791NktNuiPRa6c4BasiHHyVhd">点击结算</a></td>
           <%-- <a href=""><input type="button" value="点击结算"><td style="width:100px">${sum}</td></a>
            --%>

</body>
</html>
