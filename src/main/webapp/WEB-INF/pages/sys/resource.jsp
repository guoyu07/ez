<%--
  User: Gavin
  Date: 14-1-15
  Time: 下午9:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/WEB-INF/jspf/head.jspf" %>
</head>
<body>

<table id="resourceGrid"></table>

</body>
<script>
    $(function () {
        $("#resourceGrid").treegrid({
            title: '资源管理',
            method: "get",
            url: "treegrid/treegrid-data-simple.json",
            idField: 'id',
            treeField: 'name',
            remoteSort: false,
            frozenColumns: [[
                { field: 'ck', checkbox: true },
                { field: 'id', title: 'ID(id)', width: 80, sortable: true }
            ]],
            columns: [[
                { field: 'name', title: '名称(name)', width: 180, sortable: true },
                { field: 'age', title: '年龄(age)', width: 120, sortable: true },
                { field: 'weight', title: '体重(weight)', width: 120, sortable: true },
                { field: 'size', title: 'Size(size)', width: 140 },
                { field: 'date', title: '日期(date)', width: 140, sortable: true },
                { field: 'undefined', title: '测试(不存在的字段)', width: 140 }
            ]],
            enableHeaderClickMenu: false,
            enableHeaderContextMenu: false,
            enableRowContextMenu: false,
            smooth: true,       //该属性用以启用当前 easyui-treegrid 控件对平滑数据格式的支持
            parentField: "pid"
        });
    });
</script>
</html>
