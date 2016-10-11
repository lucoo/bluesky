<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>企业理财至尊宝-管理系统</title>
    <tiles:insertAttribute name="headInclude"/>
    <link rel="shortcut icon" href="${basePath}/images/m-logo.ico">
</head>
<body>
<tiles:insertAttribute name="content"/>
<tiles:insertAttribute name="footInclude"/>
</body>
</html>