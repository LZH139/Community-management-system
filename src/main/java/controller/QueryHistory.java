package controller;

import com.mysql.cj.xdevapi.JsonArray;
import common.JsonDateValueProcessor;
import dao.impl.MaintenanceDaoImpl;
import dto.Maintenance;
import dto.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.apache.shiro.SecurityUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = "/QueryHistory")
public class QueryHistory extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("account");
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if (uid.equals(String.valueOf(user.getUid()))){
            List<Maintenance> mtlist = new MaintenanceDaoImpl().getMaintenanceList(uid);
            JSONArray jsonlist = new JSONArray();
            JsonConfig jsonConfig = new JsonConfig();
            jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor());
            for(Maintenance mt:mtlist){

                JSONArray jsonObject = JSONArray.fromObject(mt,jsonConfig);
                jsonlist.add(jsonObject);
            }

            response.setCharacterEncoding("utf-8");
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.write(jsonlist.toString());
            out.flush();
            out.close();
        }


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
