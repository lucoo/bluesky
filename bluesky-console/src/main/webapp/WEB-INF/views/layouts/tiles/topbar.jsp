<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- Navbar -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="navbar-container">
            <!-- Navbar Barnd -->
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand title-bar">
                    <%--<img src="${basePath}/images/favicon.ico"/>--%>
                    <small>
                        企业理财
                    </small>
                </a>
            </div>
            <!-- /Navbar Barnd -->

            <!-- Sidebar Collapse -->
            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="collapse-icon fa fa-bars"></i>
            </div>
            <!-- /Sidebar Collapse -->
            <!-- Account Area and Settings --->
            <div class="navbar-header pull-right">
                <div class="navbar-account">
                    <ul class="account-area">
                        <li>
                            <a class="login-area dropdown-toggle" data-toggle="dropdown" style="width: 190px;">
                                <div class="avatar" title="View your public profile">
                                    <img src="${staticPath}/beyond_admin/assets/img/avatars/adam-jansen.jpg">
                                </div>
                                <section>
                                    <h2><span class="profile"><span>${user.xm}</span></span></h2>
                                </section>
                            </a>
                            <!--Login Area Dropdown-->
                            <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                <li class="edit">
                                    <a class="pull-left">姓名：${user.xm}</a>
                                    <a class="pull-right">员工号码：${user.yghm}</a>
                                </li>
                                <!--Theme Selector Area-->
                                <li class="theme-area">
                                    <ul class="colorpicker" id="skin-changer">
                                        <li><a class="colorpick-btn" href="#" style="background-color:#5DB2FF;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/blue.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#2dc3e8;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/azure.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#03B3B2;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/teal.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#53a93f;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/green.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#FF8F32;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/orange.min.css"></a>
                                        </li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#cc324b;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/pink.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#AC193D;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/darkred.min.css"></a>
                                        </li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#8C0095;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/purple.min.css"></a>
                                        </li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#0072C6;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/darkblue.min.css"></a>
                                        </li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#585858;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/gray.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#474544;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/black.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#001940;"
                                               rel="${staticPath}/beyond_admin/assets/css/skins/deepblue.min.css"></a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/Theme Selector Area-->
                                <li class="dropdown-footer edit">
                                    <a href="${basePath}/logout" class="pull-right darkorange">退出</a>
                                    <a href="#" class="pull-left">锁屏</a>
                                </li>
                            </ul>
                            <!--/Login Area Dropdown-->
                        </li>
                        <!-- /Account Area -->
                        <!--Note: notice that setting div must start right after account area list.
                        no space must be between these elements-->
                        <!-- Settings -->
                    </ul>
                </div>
                <!-- /Account Area and Settings -->
            </div>
        </div>
    </div>
</div>
<!-- /Navbar -->