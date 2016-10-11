<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="page-sidebar" id="sidebar">
    <!-- Sidebar Menu -->
    <ul class="nav sidebar-menu">
        <li class="active">
            <a href="${basePath}/index">
                <i class="menu-icon glyphicon glyphicon-home"></i>
                <span class="menu-text"> 首页 </span>
            </a>
        </li>
        <li>
            <a href="#" class="menu-dropdown">
                <i class="menu-icon fa fa-envelope"></i>
                <span class="menu-text"> 邮件 </span>
                <i class="menu-expand"></i>
            </a>

            <ul class="submenu">
                <li>
                    <a href="${basePath}/mail/list">
                        <i class="menu-icon fa fa-envelope"></i>
                        <span class="menu-text">邮件</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="menu-dropdown">
                <i class="menu-icon fa fa-joomla"></i>
                <span class="menu-text"> Java8 </span>
                <i class="menu-expand"></i>
            </a>

            <ul class="submenu">
                <li>
                    <a href="#">
                        <i class="menu-icon fa fa-joomla"></i>
                        <span class="menu-text">Stream</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /Sidebar Menu -->
</div>
<!-- /Page Sidebar -->