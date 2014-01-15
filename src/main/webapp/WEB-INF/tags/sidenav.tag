<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="up" tagdir="/WEB-INF/tags" %>
<%@attribute name="sidenav" type="java.util.ArrayList" required="true" %>
<div class="easyui-accordion" data-options="fit: true">
    <c:forEach items="${sidenav}" var="menu">
        <div title="${menu.name}" data-options="iconCls:'${menu.icon}'">
            <up:tree menu="${menu}" isRoot="true"/>
        </div>
    </c:forEach>

    <div title="Title1" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
        <h3 style="color:#0099FF;">Accordion for jQuery</h3>

        <p>Accordion is a part of easyui framework for jQuery.
            It lets you define your accordion component on web page more easily.</p>
    </div>
    <div title="Title2" data-options="iconCls:'icon-reload'" style="padding:10px;">
        content2
    </div>
    <div title="test">
        <c:out value="${sidenav}" />
    </div>
</div>

