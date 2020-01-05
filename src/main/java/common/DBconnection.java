package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

    public Connection getConnection(){

        Connection conn = null;

        String url = "jdbc:mysql://localhost:3306/community?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT";

        String user = "root";
        String password = "13326561762";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url,user,password);
        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }





}
