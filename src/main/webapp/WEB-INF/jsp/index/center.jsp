<%--
  Created by IntelliJ IDEA.
  User: Gavin
  Date: 14-1-9
  Time: 上午9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="mainTab_tools" class="tabs-tool">
    <table>
        <tr>
            <td><a id="mainTab_toggleAll" class="easyui-linkbutton easyui-tooltip" title="展开/折叠面板使选项卡最大化"
                   data-options="plain: true, iconCls: 'icon-standard-arrow-inout'"></a></td>
            <td>
                <div class="datagrid-btn-separator"></div>
            </td>
            <td><a id="mainTab_jumpTab" class="easyui-linkbutton easyui-tooltip" title="在新页面中打开该选项卡"
                   data-options="plain: true, iconCls: 'icon-standard-shape-move-forwards'"></a></td>
        </tr>
    </table>
</div>
<div id="mainTab" class="easyui-tabs" data-options="fit: true, tools: '#mainTab_tools'">
    <div id="homePanel" data-options="title: '主页', iconCls: 'icon-hamburg-home',closable:true, selected: true, href:'welcome'">
        <h1>home page</h1>
    </div>
</div>
