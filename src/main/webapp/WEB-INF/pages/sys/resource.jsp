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
    <table id="resourceGrid"></table>


</body>
<script>
    $(function () {
        $("#resourceGrid").treegrid({
            title: '资源管理',
            method: "get",
            url: "${ctx}/sys/resource.json",
            idField: 'id',
            fit: true,
            treeField: 'name',
            remoteSort: false,
            sortName:'weight',
            frozenColumns: [
                [
                    {field: 'ck', checkbox: true},
                    {field: 'id', title: 'ID', width: 80, sortable: true }
                ]
            ],
            columns: [
                [
                    {field: 'name', title: '名称', width: 180, sortable: true, iconCls:'icon-hamburg-star'},
//                    {field: 'parentId', title: '年龄(age)', width: 120, sortable: true },
                    {field: 'weight', title: '排序', width: 120, sortable: true },
                    {field: 'url', title: 'url', width: 140 },
//                    {field: 'identity', title: '唯一标识', width: 140, sortable: true },
                    {field: 'isShown', title: '是否显示', width: 140 }
                ]
            ],
            enableHeaderClickMenu: true,
            enableHeaderContextMenu: true,
            enableRowContextMenu: true,
            smooth: true,       //该属性用以启用当前 easyui-treegrid 控件对平滑数据格式的支持
            parentField: "parentId",
            dndRow: true, //此属性开启此表格的行拖动排序功能
            //通过拖动数据行以及右键菜单移动行数据时，都会触发 onDrop 事件。
            onDrop: function (target, source, point) {
                $.post("${ctx}/sys/resource/move.json", {
                    sourceId: source.id,
                    targetId: target.id,
                    point: point
                }, function(data) {
                    console.info(data);
                }, 'json');
            },
            autoBindDblClickRow: false
        });
    });
</script>
</html>
