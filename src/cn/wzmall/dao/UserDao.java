package cn.wzmall.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.wzmall.model.Goods;
import cn.wzmall.model.Message;
import cn.wzmall.model.User;
import cn.wzmall.util.JDBCUtil;


public class UserDao {


    //注册
    public boolean addUser(User user) {
        boolean flag = false;
        JDBCUtil util = new JDBCUtil();
        String sql = "insert into tb_user(username,password,repassword,email,code)"
                + " values(?,?,?,?,?)";
        int num = util.executeUpdate(sql, user.getUsername(), user.getPassword(), user.getRepassword(), user.getEmail(), user.getCode());

        if (num > 0) {
            flag = true;
        }
        util.close();

        return flag;
    }

    //登录
    public boolean serachUser(String name, String pass) {
        boolean flag = false;
        JDBCUtil util = new JDBCUtil();
        String sql = "select * from tb_user where username = ? and password=?";
        ResultSet rs = util.executeQuery(sql, name, pass);
        try {
            if (rs.next()) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        util.close();

        return flag;
    }

    //增加商品
    public boolean addGoods(Goods usergoods, User user) {
        boolean flag = false;
        JDBCUtil util = new JDBCUtil();
        String sql = "insert into tb_goods(username,good_one,goods_number)"
                + " values(?,?,?)";
        int num = util.executeUpdate(sql, user.getUsername(), usergoods.getGood_one(), usergoods.getGoods_number());
        if (num > 0) {
            flag = true;
        }
        util.close();

        return flag;
    }

    //增加留言
    public boolean addMessages(Message message) {
        boolean flag = false;
        JDBCUtil util = new JDBCUtil();
        String sql = "insert into tb_reply(messages)"
                + " values(?)";
        int num = util.executeUpdate(sql, message.getMessages());
        if (num > 0) {
            flag = true;
        }
        util.close();
        return flag;
    }

    //根据username查询tb_goods里的产品内容

    public List<Goods> selectAll(String name) {
        JDBCUtil util = new JDBCUtil();
        List<Goods> listGoods = new ArrayList<>();
        String sql = "SELECT * FROM tb_goods WHERE tb_goods.username= ?";
        ResultSet rs = util.executeQuery(sql,name);
        try {
            while (rs.next()) {
                Goods usergoods = new Goods();
                usergoods.setGoods_id(rs.getInt("goods_id"));
                usergoods.setGood_one(rs.getString("good_one"));
                usergoods.setGoods_number(rs.getString("goods_number"));

                User user = new User();
                user.setUsername(rs.getString("username"));
                listGoods.add(usergoods);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            util.close();
        }
        return listGoods;
    }

    //根据goods_id来删除购物车中购物车中对应的商品
    public boolean DeleteGoods(int goods_id){
        boolean flag = false;
        JDBCUtil util = new JDBCUtil();
        String sql = "delete from tb_goods where tb_goods.goods_id  = ?";
        int num = util.executeUpdate(sql, goods_id);
        if(num > 0){
            flag = true;
        }
        util.close();

        return flag;
    }

}
