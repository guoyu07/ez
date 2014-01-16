<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Easy Pro</title>
    <%@ include file="/WEB-INF/jspf/head.jspf" %>
    <script>
        $(document).ready(function () {
            var loginDialog = $('#loginDialog');
            loginDialog.dialog({
                closable: false,
                modal: true,
                draggable: false,
                buttons: [
                    {
                        text: '登录',
                        iconCls: 'icon-ok',
                        handler: function () {
                            $('#loginForm').submit();
                        }
                    },
                    {
                        text: '重置',
                        iconCls: 'icon-reload',
                        handler: function () {
                            $('#password').val('');
                            $('#username').val('');
                        }
                    }
                ]
            });
        });
    </script>
</head>
<body>
<div id="loginDialog" class="easyui-dialog" data-options="title:'用户登录', width:260,height:157,noheader:false" title="" style="padding:10px">
    <form action="login" method="post" id="loginForm">
        <table>
            <tr>
                <th>用户名：</th>
                <td><input type="text" name="username" id="username"/></td>
            </tr>
            <tr>
                <th>密码：</th>
                <td><input type="password" name="password" id="password"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>