<%--
  Created by IntelliJ IDEA.
  User: lzh
  Date: 2020/1/1
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<div class="main-wrapper">
    <div class="navbar-bg"></div>
    <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
            <ul class="navbar-nav mr-3">
                <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
                <%--<li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>--%>
            </ul>
        </form>
        <ul class="navbar-nav navbar-right">

            <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
                <i class="ion ion-android-person d-lg-none"></i>
                <div class="d-sm-none d-lg-inline-block">Hi, <shiro:principal/></div>
            </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <!--
                    <a href="profile.html" class="dropdown-item has-icon">
                        <i class="ion ion-android-person"></i> Profile
                    </a>
-->
                    <a href="/logout" class="dropdown-item has-icon">
                        <i class="ion ion-log-out"></i> Logout
                    </a>
                </div>
            </li>
        </ul>
    </nav>
    <div class="main-sidebar">
        <aside id="sidebar-wrapper">
            <div class="sidebar-brand">
                <a href="../index.jsp">COMPUTER</a>
            </div>
            <div class="sidebar-user">
                <div class="sidebar-user-picture">
                    <img alt="image" src="../dist/img/avatar/avatar-1.jpeg">
                </div>
                <div class="sidebar-user-details">
                    <div class="user-name"><shiro:principal/></div>
                    <div class="user-role">
                        <shiro:hasRole name="admin">
                            admin
                        </shiro:hasRole>
                        <shiro:hasRole name="member">
                            会员
                        </shiro:hasRole>
                        <shiro:hasRole name="secretary">
                            干事
                        </shiro:hasRole>
                        <shiro:hasRole name="minister">
                            部长
                        </shiro:hasRole>
                        <shiro:hasRole name="president">
                            执会
                        </shiro:hasRole>
                    </div>
                </div>
            </div>
            <ul class="sidebar-menu">
                <li class="menu-header">工作台</li>
                <li class="">
                    <a href="manage.jsp"><i class="ion ion-speedometer"></i><span>工作台</span></a>
                </li>

                <!--
    <li class="menu-header">社团日常</li>
    <li>
      <a href="#" class="has-dropdown"><i class="ion ion-ios-albums-outline"></i><span>Components</span></a>
      <ul class="menu-dropdown">
        <li><a href="general.html"><i class="ion ion-ios-circle-outline"></i> Basic</a></li>
        <li><a href="components.html"><i class="ion ion-ios-circle-outline"></i> Main Components</a></li>
        <li><a href="buttons.html"><i class="ion ion-ios-circle-outline"></i> Buttons</a></li>
        <li><a href="toastr.html"><i class="ion ion-ios-circle-outline"></i> Toastr</a></li>
      </ul>
    </li>
-->

                <li class="menu-header">事务申请</li>
                <li>
                    <a href="#" class="has-dropdown"><i class="ion ion-settings"></i><span>维修申报</span></a>
                    <ul class="menu-dropdown">
                        <li><a href="postdec.jsp"><i class="ion ion-ios-circle-outline"></i>提交申报</a></li>
                        <li><a href="historypost.jsp"><i class="ion ion-ios-circle-outline"></i>历史申报</a></li>
                    </ul>
                </li>
                <li>
                    <a href="join.jsp"><i class="ion ion-clipboard"></i><span>干事申请</span></a>
                </li>
                <li><a href="postadv.jsp"><i class="ion ion-compose"></i><span>提交意见</span></a></li>
            </ul>
        </aside>
    </div>