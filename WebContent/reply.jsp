<%--
  Created by IntelliJ IDEA.
  User: chinesedong
  Date: 2018/12/23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>互动社区</title>
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/new_file.css" />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <style>
       /* body{background:url("images/default.png");}*/
        .container{
            width: 1000px;
        }
        .commentbox{
            width: 900px;
            margin: 20px auto;
        }
        .mytextarea {
            width: 100%;
            overflow: auto;
            word-break: break-all;
            height: 100px;
            color: #000;
            font-size: 1em;
            resize: none;
        }
        .comment-list{
            width: 900px;
            margin: 20px auto;
            clear: both;
            padding-top: 20px;
        }
        .comment-list .comment-info{
            position: relative;
            margin-bottom: 20px;
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
        }
        .comment-list .comment-info header{
            width: 10%;
            position: absolute;
        }
        .comment-list .comment-info header img{
            width: 100%;
            border-radius: 50%;
            padding: 5px;
        }
        .comment-list .comment-info .comment-right{
            padding:5px 0px 5px 11%;
        }
        .comment-list .comment-info .comment-right h3{
            margin: 5px 0px;
        }
        .comment-list .comment-info .comment-right .comment-content-header{
            height: 25px;
        }
        .comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
            padding-right: 2em;
            color: #aaa;
        }
        .comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
            cursor: pointer;
        }
        .comment-list .comment-info .comment-right .reply-list {
            border-left: 3px solid #ccc;
            padding-left: 7px;
        }
        .comment-list .comment-info .comment-right .reply-list .reply{
            border-bottom: 1px dashed #ccc;
        }
        .comment-list .comment-info .comment-right .reply-list .reply div span{
            padding-left: 10px;
        }
        .comment-list .comment-info .comment-right .reply-list .reply p span{
            padding-right: 2em;
            color: #aaa;
        }
    </style>
</head>
<body>

<div id="mediav_cookiemapping">
    <a href="#"></a>
</div>
<!--头部 -->
<div id="header-bar">
    <div class="wrapper container">
        <div class="choose-city-box">
            <span class="s-title">欢迎来到互动社区！</span>

        </div>
        <a class="a-fav-ehaier" href="loger_index.jsp">返回首页</a>
        <span class="s-weixin-box">
            <a href="">微信
					<div class="s-weixin-top">
						<img src="img/wecat.png" alt="微信扫描">
					</div>
            </a>
        </span>

        <a></a>
        <div class="all-haeder-bor">
            <ul class="ul-topnav">
                <li><%String username = (String)session.getAttribute("username"); if(username!=null){out.print(username);}%>，欢迎来到五洲官方商城 </li>
                <li><a href="invalidate.jsp">退出登录</a></li>|
                <li><a href="dis_car.jsp">我的购物车</a></li>|
                <li><a href="reply.jsp">互动社区</a></li>

            </ul>
        </div>
    </div>
</div>





<div class="container">
    <%--<div class="commentbox">
        <textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
        <div class="btn btn-info pull-right" id="comment">评论</div>
    </div>--%>
    <div class="comment-list">

    </div>
</div>
<script type="text/javascript" src="reply_js/jquery.min.js"></script>
<script type="text/javascript" src="reply_js/jquery.comment.js" ></script>
<script type="text/javascript" src="reply_js/bootstrap.min.js"></script>
<script type="text/javascript">
    //初始化数据

    var arr = [
        {id:2,img:"./images/img.jpg",replyName:"匿名",beReplyName:"",content:"到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",time:"2018-12-23 11:42:53",address:"张家界",osname:"",browse:"谷歌",replyBody:[{id:3,img:"",replyName:"帅小伙",beReplyName:"匿名",content:"来啊，我们一起买鸡吃",time:"2018-12-23 11:42:53",address:"",osname:"",browse:"谷歌"}]},
    ];
    $(function(){
        $(".comment-list").addCommentList({data:arr,add:""});
        $("#comment").click(function(){
            var obj = new Object();
            obj.img="./images/img.jpg";
            obj.replyName="<%out.print(username);%>";
            obj.content=$("#content").val();
            obj.browse="张家界";
            obj.osname="<%out.print(username);%>";
            obj.replyBody="";
            $(".comment-list").addCommentList({data:[],add:obj});
        });

    })
</script>
    <div class="commentbox">
        <form action="ReplyServlet" method="post">
            <textarea name="messages" cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
        <div class="btn btn-info pull-right" id="comment"><button type="button">评论</button>
        </div>
        </form>
    </div>
</body>
</html>