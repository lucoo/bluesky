<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>企业理财至尊宝-管理系统</title>
    <tiles:insertAttribute name="headInclude" />
    <link rel="shortcut icon" href="${basePath}/images/m-logo.ico">
</head>
<body>
    <tiles:insertAttribute name="loading" />
    <tiles:insertAttribute name="topbar" />
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <tiles:insertAttribute name="menu" />
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <tiles:insertAttribute name="pageBreadCrumbs" />
                <!-- /Page Header -->
                <!-- Page Body -->
                <div class="page-body">
                    <tiles:insertAttribute name="content" />
                </div>
            </div>
        </div>
    </div>
    <tiles:insertAttribute name="footInclude" />
</body>
</html>