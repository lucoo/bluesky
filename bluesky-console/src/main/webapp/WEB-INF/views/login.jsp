<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 15/11/24
  Time: 下午6:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="login-container animated fadeInDown bg">
    <div class="loginbox bg-white" style="height: 350px !important;">
        <div class="loginbox-title"></div>
        <div class="loginbox-social">
            <div class="social-buttons">
            </div>
        </div>
        <div class="loginbox-or">
            <div class="or-line"></div>
            <div class="or">至尊宝</div>
        </div>
        <form id="loginForm" class="form-horizontal" action="${basePath}/index" method="post">
            <div class="loginbox-textbox">
                <input type="text" class="form-control" name="username" placeholder="用户名"/>
            </div>
            <div class="loginbox-textbox">
                <input type="password" class="form-control" name="password" placeholder="密码"/>
            </div>
            <div class="loginbox-submit">
                <input id="loginBtn" type="button" class="btn btn-primary btn-block" value="登录">
            </div>
        </form>
    </div>
    <div class="logobox" id="messageDiv" style="text-align: center;line-height: 40px;">
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var errorMessage = '${errorMessage}';

        $('#loginBtn').click(function () {
            var username = $('input[name="username"]').val();
            var password = $('input[name="password"]').val();
            if (username == null || username == "") {
                $('#messageDiv').html("<span style='color: red'>请输入用户名</span>");
                return;
            }
            if (password == null || password == "") {
                $('#messageDiv').html("<span style='color: red'>请输入密码</span>");
                return;
            }
            $('#loginForm').submit();
        });

        if (errorMessage != "") {
            $('#messageDiv').html("<span style='color: red'>" + errorMessage + "</span>");
        }
    });
</script>
