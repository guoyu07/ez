<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="up" tagdir="/WEB-INF/tags" %>
<%@attribute name="isRoot" type="java.lang.Boolean" required="false" %>
<%@attribute name="menu" type="egox.ez.ui.Menu" required="true" description="菜单" %>

<c:if test="${not empty menu.children}">
    <c:choose>
        <c:when test="${isRoot}"><ul class="easyui-tree" data-options="
            animate: true,
            showOption: true,
            toggleOnClick: true,
            onClick: function (node) {
                window.mainpage.addModuleTab(node);
            }
            "></c:when>
        <c:otherwise><ul></c:otherwise>
    </c:choose>
    <c:forEach items="${menu.children}" var="submenu">
        <li data-options="iconCls:'${menu.icon}',id:'${menu.id}',attributes:{href:'${submenu.url}'}">
            <span>${submenu.name}</span>
            <up:tree menu="${submenu}" isRoot="false"/>
        </li>
    </c:forEach>
    </ul>
</c:if>