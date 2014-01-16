﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/WEB-INF/jspf/head.jspf" %>
    <script>

        window.ImgCollapsed = "${ctx}/static/dev/json/Collapsed.gif";
        window.ImgExpanded = "${ctx}/static/dev/json/Expanded.gif";

    </script>
    <script src="${ctx}/static/dev/json/c3.js" type="text/javascript"></script>
    <link href="${ctx}/static/dev/json/s.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div class="HeadersRow">
    <div id="HeaderTitle"> JSON格式化及高亮 &nbsp;&copy;&nbsp;2012&nbsp; &nbsp;<span
            style='color:#aaa;font-weight:bold;font-style:italic'>Random_Coder</span></div>
    <h3 id="HeaderSubTitle">JSON格式化及高亮:</h3>
    <textarea id="RawJson"></textarea>
</div>
<div id="ControlsRow">
    <input type="Button" value="格式化" onclick="Process()"/>
  <span id="TabSizeHolder">
    缩进量
    <select id="TabSize" onchange="TabSizeChanged()">
        <option value="1">1</option>
        <option value="2" selected="true">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
    </select>
  </span>
    <label for="QuoteKeys">
        <input type="checkbox" id="QuoteKeys" onclick="QuoteKeysClicked()" checked="true"/>
        引号
    </label>&nbsp;
    <a href="javascript:void(0);" onclick="SelectAllClicked()">全选</a>
    &nbsp;
  <span id="CollapsibleViewHolder">
      <label for="CollapsibleView">
          <input type="checkbox" id="CollapsibleView" onclick="CollapsibleViewClicked()" checked="true"/>
          显示控制
      </label>
  </span>
  <span id="CollapsibleViewDetail">
    <a href="javascript:void(0);" onclick="ExpandAllClicked()">展开</a>
    <a href="javascript:void(0);" onclick="CollapseAllClicked()">叠起</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(3)">2级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(4)">3级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(5)">4级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(6)">5级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(7)">6级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(8)">7级</a>
    <a href="javascript:void(0);" onclick="CollapseLevel(9)">8级</a>
  </span>
</div>
<div id="Canvas" class="Canvas"></div>
</body>
</html>
