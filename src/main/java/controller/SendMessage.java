package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import common.ShiroPermissionUtils;
import exception.NoPermissionException;

@WebServlet(name = "SendMessage",urlPatterns = "/sendmessage")
public class SendMessage extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        String id = request.getParameter("id");
        if ("1".equals(id)){
            try {
                ShiroPermissionUtils.checkPerissionAny("sendNotices");

            }catch (NoPermissionException e){

            }

        }



    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
