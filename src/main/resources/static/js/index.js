$(function(){
    $('.wu-side-tree a').bind("click",function(){
        var title = $(this).text();
        var url = $(this).attr('data-link');
        var iconCls = $(this).attr('data-icon');
        var iframe = $(this).attr('iframe')==1?true:false;
        addTab(title,url,iconCls,iframe);
    });

    $('#tt').tree({
        url: "/tree",
        loadFilter: function(data){
            return data;
        }
    });
})

/**
 * Name 载入树形菜单
 */
$('#wu-side-tree').tree({
    url:'pages/menu.json',
    cache:false,
    onClick:function(node){
        var url = node.attributes['url'];
        if(url==null || url == ""){
            return false;
        }
        else{
            addTab(node.text, url, '', node.attributes['iframe']);
        }
    }
});

/**
 * Name 选项卡初始化
 */
$('#wu-tabs').tabs({
    tools:[{
        iconCls:'icon-reload',
        border:false,
        handler:function(){
            $('#wu-datagrid').datagrid('reload');
        }
    }]
});

/**
 * Name 添加菜单选项
 * Param title 名称
 * Param href 链接
 * Param iconCls 图标样式
 * Param iframe 链接跳转方式（true为iframe，false为href）
 */
function addTab(title, href, iconCls, iframe){
    var tabPanel = $('#wu-tabs');
    if(!tabPanel.tabs('exists',title)){
        var content = '<iframe scrolling="auto" frameborder="0"  src="'+ href +'" style="width:100%;height:100%;"></iframe>';
        if(iframe){
            tabPanel.tabs('add',{
                title:title,
                content:content,
                iconCls:iconCls,
                fit:true,
                cls:'pd3',
                closable:true
            });
        }
        else{
            tabPanel.tabs('add',{
                title:title,
                href:href,
                iconCls:iconCls,
                fit:true,
                cls:'pd3',
                closable:true
            });
        }
    }
    else
    {
        tabPanel.tabs('select',title);
    }
}
/**
 * Name 移除菜单选项
 */
function removeTab(){
    var tabPanel = $('#wu-tabs');
    var tab = tabPanel.tabs('getSelected');
    if (tab){
        var index = tabPanel.tabs('getTabIndex', tab);
        tabPanel.tabs('close', index);
    }
}

function testAdd() {
    if ($('#wu-tabs').tabs('exists', "测试")){
        $('#wu-tabs').tabs('select', "测试");
    } else {
        var url = "";
        $.ajax({
            url:"/test",
            async:false,
            success:function (rtn) {
                url = rtn;
            }
        });
        var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
        $('#wu-tabs').tabs('add',{
            title:"测试",
            content:content,
            closable:true
        });
    }
}

function addNewSysTree() {
    addSysTree($("input[name='sysName']").val(),$("input[name='productName']").val());

}

function addNewComTree() {
    addComTree($("input[name='comName']").val(),$("input[name='comAlias']").val(),$("input[name='comNum']").val())
}

function addSysTree(sysName, productName) {
    $('#sysTree').append("<li iconCls=\"icon-cog\">\n" +
        "                        <span>"+sysName+"</span>\n" +
        "                        <ul>\n" +
        "                            <li><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/system-introduce.html\" iframe=\"0\">系统简介</a></li>\n" +
        "                            <li iconCls=\"icon-cog\">\n" +
        "                                <span>"+productName+"</span>\n" +
        "                                <ul>\n" +
        "                                    <li><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/product-introduce.html\" iframe=\"0\">产品简介</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/assemble-form.html\" iframe=\"0\">组合件配套表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">数据包项目清单</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">发动机总体设计关键特性表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">设计关键特性表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">工艺关键特性表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">过程控制关键特性表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">关键原材料“包络性”统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">锁紧螺母检查数据表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">元器件选用情况清单</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">发动机系统功能性能数据表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">部（组）件功能性能数据表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">生产过程多媒体记录表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">输入输出接口数据表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">超差情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">代料情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">焊缝质量情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">禁限用工艺落实情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">强制检验点检查确认表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">拧紧力矩检查确认表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">产品多余物控制措施落实情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">不合格品审理及措施落实情况统计表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">验收试验履历、试验条件、试验结果及多媒体记录表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">地面保障设备和软件产品清单</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">“九新”检查确认表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">外包产品验收检查确认表</a></li>\n" +
        "                                    <li iconCls=\"icon-cog\"><a href=\"javascript:void(0)\" data-icon=\"icon-chart-organisation\" data-link=\"pages/layout-2.html\" iframe=\"0\">质量问题归零汇总表</a></li>\n" +
        "                                </ul>\n" +
        "                            </li>\n" +
        "                        </ul>\n" +
        "                    </li>")
}

function addComTree(comName, comAlias, comNum) {
    $('#comTree').append("<li iconCls='icon-chart-organisation'>\n" +
        "                        <span>"+comName+"</span>\n" +
        "                        <ul>\n" +
        "                            <li iconCls='icon-cog'>\n" +
        "                                <span>"+comAlias+"</span>\n" +
        "                                <ul class='easyui-tree'>\n" +
        "                                    <li iconCls='icon-cog'>\n" +
        "                                        <span>"+comNum+"</span>\n" +
        "                                            <ul class='easyui-tree'>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>单机产品数据包项目清单</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>设计关键特性表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>工艺关键特性表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>过程控制关键特性表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>关键原材料包络性统计表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>超差、代料单处理及落实情况表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>拧紧力矩检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>生产过程、对外接口多媒体记录检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>禁限用工艺检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>对外接口及外观检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>强制检验点检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>“九新”检查确认表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>质量问题归零汇总表</a></li>\n" +
        "                                                <li iconCls='icon-cog'><a href='javascript:void(0)' data-icon='icon-chart-organisation' data-link='pages/layout-2.html' iframe='0'>外包产品验收检查确认表</a></li>\n" +
        "                                            </ul>\n" +
        "                                    </li>\n" +
        "                                </ul>\n" +
        "                            </li>\n" +
        "                        </ul>\n" +
        "                    </li>");
}

function addTestTab(title, url){
    if ($('#wu-tabs').tabs('exists', title)){
        $('#wu-tabs').tabs('select', title);
    } else {
        var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
        $('#wu-tabs').tabs('add',{
            title:title,
            content:content,
            closable:true
        });
    }
}
