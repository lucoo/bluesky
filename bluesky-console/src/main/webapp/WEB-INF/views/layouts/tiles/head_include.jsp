<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<c:set var="basePath" value="${pageContext.request.contextPath}" scope="request"/>
<c:set var="staticPath" value="${pageContext.request.contextPath}" scope="request"/>
<c:set var="staticVer" value="1.0" scope="request"/>
<!-- The styles -->
<!--Basic Styles-->
<link href="${staticPath}/beyond_admin/assets/css/bootstrap.min.css" rel="stylesheet"/>
<link id="bootstrap-rtl-link" href="" rel="stylesheet"/>
<link href="${staticPath}/beyond_admin/assets/css/font-awesome.min.css" rel="stylesheet"/>
<link href="${staticPath}/beyond_admin/assets/css/weather-icons.min.css" rel="stylesheet"/>

<!--Fonts-->
<%--暂时注释字体--%>
<%--<link href="${staticPath}/beyond_admin/assets/css/fonts-useso.css" rel="stylesheet" type="text/css">--%>

<!--Beyond styles-->
<link id="beyond-link" href="${staticPath}/beyond_admin/assets/css/beyond.min.css" rel="stylesheet" type="text/css"/>
<link href="${staticPath}/beyond_admin/assets/css/demo.min.css" rel="stylesheet"/>
<link href="${staticPath}/beyond_admin/assets/css/typicons.min.css" rel="stylesheet"/>
<link href="${staticPath}/beyond_admin/assets/css/animate.min.css" rel="stylesheet"/>
<link id="skin-link" href="${staticPath}/beyond_admin/assets/css/skins/gray.min.css" rel="stylesheet" type="text/css"/>

<!--Page Related styles-->
<link href="${staticPath}/beyond_admin/assets/css/dataTables.bootstrap.css" rel="stylesheet"/>

<!--jquery.tree-->
<link href="${staticPath}/plugins/jquery-tree/css/tree.css" rel="stylesheet"/>

<link href="${staticPath}/css/app.css" rel="stylesheet"/>
<%--bootstrap-datetimepicker--%>
<link href="${staticPath}/beyond_admin/assets/js/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
<link href="${staticPath}/fileinput/css/fileinput.css" rel="stylesheet"/>
<script>
    var jsBasePath = '${basePath}';
    var jsStaticPath = '${staticPath}';
    var dataTableCnLanguage = {
        "sProcessing": "处理中...",
        "sLengthMenu": "_MENU_ 记录/页，",
        "sZeroRecords": "没有匹配的记录",
        "sInfo": "显示第 _START_ 至 _END_ 项记录，共 _TOTAL_ 项",
        "sInfoEmpty": "显示第 0 至 0 项记录，共 0 项",
        "sInfoFiltered": "",
        "sInfoPostFix": "",
        "sSearch": "过滤:",
        "sUrl": "",
        "oPaginate": {
            "sFirst": "首页",
            "sPrevious": "上页",
            "sNext": "下页",
            "sLast": "末页"
        }
    };
</script>
<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="${staticPath}/beyond_admin/assets/js/skins.min.js"></script>
<script src="${staticPath}/beyond_admin/assets/js/jquery-2.0.3.min.js"></script>
<script src="${staticPath}/js/app.js"></script>
<script src="${staticPath}/js/fileInputUtil.js"></script>

<link href="${staticPath}/plugins/select2/css/select2.css" rel="stylesheet"/>
<script type="text/javascript" src="${staticPath}/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${staticPath}/plugins/select2/js/select2_locale_zh-CN.js"></script>
<script type="text/javascript" src="${staticPath}/plugins/select2/js/mod.udatas.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".fz-select").select2({
            matcher: function (term, text) {
                var mod = ZhToPinyin(text);
                var tf1 = mod.a.toUpperCase().indexOf(term.toUpperCase()) == 0;
                var tf2 = mod.b.toUpperCase().indexOf(term.toUpperCase()) == 0;
                return (tf1 || tf2);
            }
        });
    });
</script>