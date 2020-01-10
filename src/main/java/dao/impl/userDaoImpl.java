package dao.impl;

import common.DBconnection;
import dao.dai.userDao;
import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

public class userDaoImpl implements userDao {


    @Override
    public String getPassword(String account) {
        String sql = "select password from user where mail = ?";
        DBconnection db = new DBconnection();
        Connection conn = db.getConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password");
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }finally{
            try {
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override
    public Set<String> listRoles(String account) {
        Set<String> roles = new HashSet<>();
        DBconnection db = new DBconnection();
        Connection conn = db.getConnection();
        PreparedStatement ps = null;
        String sql = "select r.name from user u "
                + "left join user_role ur on u.uid = ur.uid "
                + "left join role r on r.rid = ur.rid "
                + "where u.mail = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                roles.add(rs.getString(1));

            }

        } catch (SQLException e) {

            e.printStackTrace();
        }finally{
            try {
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return roles;
    }

    @Override
    public Set<String> listPermissions(String account) {
        Set<String> permissions = new HashSet<>();
        String sql =
                "select p.name from user u "+
                        "left join user_role ru on u.uid = ru.uid "+
                        "left join role r on r.rid = ru.rid "+
                        "left join role_permission rp on r.rid = rp.rid "+
                        "left join permission p on p.pid = rp.pid "+
                        "where u.mail =?";
        DBconnection db = new DBconnection();
        Connection conn = db.getConnection();
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();


            while (rs.next()) {
                permissions.add(rs.getString(1));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }finally{
            try {
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return permissions;
    }

    @Override
    public User getUser(String account) {
        User user = new User();
        String sql = "select * from user where mail = ?";

        DBconnection db = new DBconnection();
        Connection conn = db.getConnection();
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();

            rs = ps.executeQuery();
            rs.next();

            user.setUid(rs.getInt("uid"));
            user.setName(rs.getString("name"));
            user.setSex(rs.getString("sex"));
            user.setAge(rs.getInt("age"));
            user.setGrade(rs.getString("grade"));
            user.setMajor(rs.getString("major"));
            user.setWechat_number(rs.getString("wechat_number"));
            user.setUid(rs.getInt("uid"));
            user.setCell_number(rs.getString("cell_number"));
            user.setMail(rs.getString("mail"));
            user.setPassword(rs.getString("password"));


        } catch (SQLException e) {

            e.printStackTrace();
        }finally{
            try {
                if(ps!=null){
                    ps.close();
                }
                if(conn!=null){
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user;

    }
}
