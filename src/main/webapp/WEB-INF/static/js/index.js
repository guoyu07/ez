/**
 * Created by Gavin on 14-1-14.
 */
(function($) {
    $.util.namespace("mainpage.mainTab");
    var mainLayout = "#mainLayout", mainTab = "#mainTab";

    window.mainpage.togglePanels = function () {
        $(mainLayout).layout("toggleAll", "collapse");
    };

    window.mainpage.mainTab.tabDefaultOption = {
        title: "新建选项卡",
        href: "",
        iniframe: true,
        closable: true,
        refreshable: true,
        iconCls: "icon-standard-tab",
        repeatable: true,
        selected: true
    };

    //  判断指定的选项卡是否存在于当前主页面的选项卡组中；
    //  返回值：返回的值可能是以下几种：
    //      0:  表示不存在于当前选项卡组中；
    //      1:  表示仅 title 值存在于当前选项卡组中；
    //      2:  表示 title 和 href 都存在于当前选项卡组中；
    window.mainpage.mainTab.isExists = function (title, href) {
        var t = $(mainTab),
            tabs = t.tabs("tabs"),
            array = $.array.map(tabs, function (val) { return val.panel("options"); }),
            list = $.array.filter(array, function (val) { return val.title == title; }), ret = list.length ? 1 : 0;
        if (ret && $.array.some(list, function (val) { return val.href == href; })) { ret = 2; }
        return ret;
    };

    window.mainpage.mainTab.selectTab = function (which) { $(mainTab).tabs("select", which); };
    window.mainpage.mainTab.jumpTab = function (which) { $(mainTab).tabs("jumpTab", which); };

    window.mainpage.mainTab.jumpHome = function () {
        var t = $(mainTab), tabs = t.tabs("tabs"), panel = $.array.first(tabs, function (val) {
            var opts = val.panel("options");
            return opts.title == homePageTitle && opts.href == homePageHref;
        });
        if (panel && panel.length) {
            var index = t.tabs("getTabIndex", panel);
            t.tabs("select", index);
        }
    }

    window.mainpage.addModuleTab = function (node) {
        var n = node || {},
            attributes = node.attributes || {},
            opts = $.extend({}, n, { title: n.text }, attributes);
        if (!opts.href) { return; }
        window.mainpage.mainTab.addModule(opts);
    };

    //  添加一个新的模块选项卡；该方法重载方式如下：
    //      function (tabOption)
    //      function (href)
    //      function (title, href)
    //      function (title, href, iconCls)
    //      function (title, href, iconCls, iniframe)
    //      function (title, href, iconCls, iniframe, closable)
    //      function (title, href, iconCls, iniframe, closable, refreshable)
    //      function (title, href, iconCls, iniframe, closable, refreshable, selected)
    window.mainpage.mainTab.addModule = function (title, href, iconCls, iniframe, closable, refreshable, selected) {
        var opts = window.mainpage.mainTab.parseCreateTabArgs(arguments),
            isExists = window.mainpage.mainTab.isExists(opts.title, opts.href);
        switch (isExists) {
            case 0: window.mainpage.mainTab.createTab(opts); break;
            case 1: window.mainpage.mainTab.createTab(opts); break;
            case 2: window.mainpage.mainTab.selectTab(opts.title); break;
            default: break;
        }
    };

    window.mainpage.mainTab.parseCreateTabArgs = function (args) {
        var ret = {};
        if (!args || !args.length) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption);
        } else if (args.length == 1) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, typeof args[0] == "object" ? args[0] : { href: args[0] });
        } else if (args.length == 2) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1] });
        } else if (args.length == 3) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1], iconCls: args[2] });
        } else if (args.length == 4) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1], iconCls: args[2], iniframe: args[3] });
        } else if (args.length == 5) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1], iconCls: args[2], iniframe: args[3], closable: args[4] });
        } else if (args.length == 6) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1], iconCls: args[2], iniframe: args[3], closable: args[4], refreshable: args[5] });
        } else if (args.length >= 7) {
            $.extend(ret, window.mainpage.mainTab.tabDefaultOption, { title: args[0], href: args[1], iconCls: args[2], iniframe: args[3], closable: args[4], refreshable: args[5], selected: args[6] });
        }
        return ret;
    };

    window.mainpage.mainTab.createTab = function (title, href, iconCls, iniframe, closable, refreshable, selected) {
        var t = $(mainTab), i = 0, opts = window.mainpage.mainTab.parseCreateTabArgs(arguments);
//        while (t.tabs("getTab", opts.title + (i ? String(i) : ""))) { i++; }
        t.tabs("add", opts);
    };

    window.mainpage.bindMainTabButtonEvent = function () {
        $("#mainTab_toggleAll").click(function () {
            window.mainpage.togglePanels();
        });
        $("#mainTab_jumpTab").click(function () {
            window.mainpage.mainTab.jumpTab();
        });
    };
})(jQuery);
$(function () {
    window.mainpage.bindMainTabButtonEvent();
});