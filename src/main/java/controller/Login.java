package controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        // 1,创建SecurityManager工厂来读取相应的配置文件
        IniSecurityManagerFactory factory = new IniSecurityManagerFactory("classpath:shiro.ini");
        // 2,通过SecurityManager工厂获取SecurityManager实例
        SecurityManager securityManager = factory.getInstance();
        // 3,将SecurityManager对象 设置到运行环境中
        SecurityUtils.setSecurityManager(securityManager);
        // 4,SecurityUtils获取Subject主体
        Subject subject = SecurityUtils.getSubject();
        // 5,假如登录的用户是name和password,这个地方的name和password表示用户登录时输入的信息
        UsernamePasswordToken token = new UsernamePasswordToken(account, password);
        try {
            // 6,进行用户身份验证
            subject.login(token);
            // 7,通过Subject判断用户是否通过验证
            if (subject.isAuthenticated()) {
                response.sendRedirect("/userpage/manage.jsp");
            }
        } catch (UnknownAccountException e) {
            response.sendRedirect("/login.jsp");
        }catch (IncorrectCredentialsException e) {
            response.sendRedirect("/login.jsp");
        }





    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
