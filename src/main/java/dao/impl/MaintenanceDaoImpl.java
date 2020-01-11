package dao.impl;

import common.DBconnection;
import dao.dai.MaintenanceDao;
import dto.Maintenance;
import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MaintenanceDaoImpl implements MaintenanceDao {
    @Override
    public List<Maintenance> getMaintenanceList(String uid) {


        String sql = "select * from maintenance where from_id = ?";

        List<Maintenance> mtlist = new ArrayList<Maintenance>();

        DBconnection db = new DBconnection();
        Connection conn = db.getConnection();
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();

            rs = ps.executeQuery();

            while (rs.next()) {
                Maintenance mt = new Maintenance();
                mt.setMid(rs.getInt("mid"));
                mt.setFrom_id(rs.getInt("from_id"));
                mt.setTo_id(rs.getInt("to_id"));
                mt.setTitle(rs.getString("title"));
                mt.setStatus(rs.getInt("status"));
                mt.setStart_time(rs.getDate("start_time"));
                mt.setEnd_time(rs.getDate("end_time"));

                mtlist.add(mt);
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

        return mtlist;

    }

}
