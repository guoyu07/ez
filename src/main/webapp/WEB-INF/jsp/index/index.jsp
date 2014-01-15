<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%--<base href="<%=basePath%>" />--%>
    <title>Easy Pro</title>
    <%@ include file="/WEB-INF/jspf/head.jspf" %>
    <script src="static/js/index.js"></script>
</head>
<body>
<div id="mainLayout" class="easyui-layout" data-options="fit:true">
    <div data-options="region:'north',noheader:true,border:false" style="height:60px;">
        <%@include file="north.jsp" %>
    </div>
    <div data-options="region:'west',title:'菜单导航',split:true,disabled:true" style="width:230px;">
        <%@include file="west.jsp" %>
    </div>
    <div data-options="region:'center',noheader: true" style="padding:5px;background:#eee;">
        <%@include file="center.jsp" %>
    </div>
    <div data-options="region: 'south',noheader: true, iconCls: 'icon-reload',border: false" style="height: 30px;">
        <%@include file="south.jsp" %>
    </div>
</div>
</body>
</html>
