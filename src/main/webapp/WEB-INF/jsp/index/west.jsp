<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ez" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="navTab" class="easyui-tabs" data-options="fit: true, border: true, tools: '#navTab_tools'">
    <div data-options="title: '导航菜单', iconCls: 'icon-standard-application-view-tile', refreshable: false, selected: true">
        <ez:sidenav sidenav="${sidenav}"/>
    </div>
    <div data-options="title: '个人收藏', iconCls: 'icon-hamburg-star', refreshable: false">

    </div>
</div>
<div id="navTab_tools" class="tabs-tool">
    <a class="easyui-linkbutton easyui-tooltip" title="刷新该选项卡及其导航菜单"><i class="fa fa-refresh"></i></a>
</div>

