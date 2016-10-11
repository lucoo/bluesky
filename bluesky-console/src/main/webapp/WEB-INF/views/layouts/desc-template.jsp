<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>企业理财至尊宝-管理系统</title>
    <tiles:insertAttribute name="headInclude" />
    <link rel="shortcut icon" href="${basePath}/images/favicon.ico">
</head>
<body>
    <tiles:insertAttribute name="topbar" />
    <div class="ch-container">
        <div class="row">
            <noscript>
                <div class="alert alert-block col-md-12">
                    <h4 class="alert-heading">Warning!</h4>

                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                        enabled to use this site.</p>
                </div>
            </noscript>
	        <div class="col-lg-1 col-sm-1"></div>
            <div id="content" class="col-lg-10 col-sm-10">
                <tiles:insertAttribute name="content" />
            </div>
	        <div class="col-lg-1 col-sm-1"></div>
        </div>
        <hr>
        <tiles:insertAttribute name="footer" />
    </div>
    <tiles:insertAttribute name="footInclude" />
</body>
</html>