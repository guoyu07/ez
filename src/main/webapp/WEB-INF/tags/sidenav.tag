<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="up" tagdir="/WEB-INF/tags" %>
<%@attribute name="sidenav" type="java.util.ArrayList" required="true" %>
<div class="easyui-accordion" data-options="fit: true">
    <c:forEach items="${sidenav}" var="menu">
        <div title="${menu.name}" data-options="iconCls:'${menu.icon}'">
            <up:tree menu="${menu}" isRoot="true"/>
        </div>
    </c:forEach>
</div>

