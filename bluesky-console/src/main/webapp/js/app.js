$(document).ready(function () {
    //highlight current / active link
    $('ul.sidebar-menu li a').each(function () {
        if ($($(this))[0].href == String(window.location)) {
            $(this).parent().find('li').removeClass('active');
            $(this).parent().addClass('active');
            $('#top_bar_icon').attr('class',$(this).find('i').attr('class'));
            $('#top_bar_title').html($(this).find('span').html());

            if ($(this).parent().parent().attr('class') == 'submenu') {
                $(this).parent().parent().prev().click();
            }
        }
    });
});

// 声明一个全局对象Namespace，用来注册命名空间
Namespace = new Object();

// 全局对象仅仅存在register函数，参数为名称空间全路径，如"Iw.Util"
Namespace.register = function()
{
    var a = arguments, o = null, i, j, d, rt;
    for (i = 0; i < a.length; ++i) {
        d = a[i].split(".");
        rt = d[0];
        eval("if (typeof " + rt + " == \"undefined\"){"
        + rt + " = {};} o = " + rt + ";");
        for (j = 1; j < d.length; ++j) {
            o[d[j]] = o[d[j]] || {};
            o = o[d[j]]
        }
    }
}

Namespace.register("Feizhou.Util");

// 重写AJAX请求
(function($) {
    // 备份jquery的ajax方法
    var _ajax = $.ajax;

    //重写jquery的ajax方法
    $.ajax = function(opt){
        //备份opt中error和success方法
        var fn = {
            error:function(XMLHttpRequest, textStatus, errorThrown){},
            success:function(data, textStatus){}
        }
        if(opt.error){
            fn.error=opt.error;
        }
        if(opt.success){
            fn.success=opt.success;
        }

        //扩展增强处理
        var _opt = $.extend(opt,{
            error:function(XMLHttpRequest, textStatus, errorThrown){
                //错误方法增强处理

                fn.error(XMLHttpRequest, textStatus, errorThrown);
            },
            success:function(data, textStatus){
                //成功回调方法增强处理
                if (data != null && data.code != null && data.code == 'LOGIN_TIMEOUT') {
                    window.location.href = jsBasePath + "/login";
                    return;
                }

                fn.success(data, textStatus);
            }
        });
        _ajax(_opt);
    };
})(jQuery);


//弹出通知消息函数
//说明：弹出通知消息函数。
//message：消息内容
//layout：布局
//type：显示类型

Feizhou.Util.noty = function (message, layout, type, icon) {
    Notify(message, layout, '2000', type, icon, true);
}

//弹出警告的通知消息函数
//说明：弹出警告的通知消息函数。
//message：消息内容
Feizhou.Util.warningNoty = function (message) {
    Feizhou.Util.noty(message, "top-right", "warning", 'fa-warning');
}

//弹出错误的通知消息函数
//说明：弹出错误的通知消息函数。
//message：消息内容
Feizhou.Util.errorNoty = function (message) {
    Feizhou.Util.noty(message, "top-right", "danger", 'fa-bolt');
}

//弹出成功的通知消息函数
//说明：弹出成功的通知消息函数。
//message：消息内容
Feizhou.Util.successNoty = function (message) {
    Feizhou.Util.noty(message, "top-right", "success", 'fa-check');
}

var feizhouConfirmCallback;

Feizhou.Util.confirm = function (title, content, callbackFun) {
    $('#confirmModal .title').html(title);
    $('#confirmModal .content').html(content);
    $('#confirmModal').modal('show');
    feizhouConfirmCallback = callbackFun;
}

Feizhou.Util.confirmClick = function (type) {
    if (feizhouConfirmCallback != null) {
        feizhouConfirmCallback(type);
    }
    $('#confirmModal').modal('hide');
}

Feizhou.Util.date2yyyyMMddhhmmss = function (date) {
    return Feizhou.Util.date2str(date, "yyyy-MM-dd hh:mm:ss");
}

Feizhou.Util.date2str = function(date, format) {
    if (date == null) {
        return null;
    }
    return date.format(format);
}

Feizhou.Util.dateStrFormatyyyyMMddhhmmss = function (str) {
    return Feizhou.Util.date2strFormat(str, "yyyy-MM-dd hh:mm:ss");
}

Feizhou.Util.dateStrFormat = function(str, format) {
    if (str == null) {
        return null;
    }
    return (new Date(str.replace(/-/g, "/"))).format(format);
}

Feizhou.Util.str2Date = function (str) {
    return new Date(str.replace(/-/g, "/"));
}

Date.prototype.format = function(fmt)
{
    var o = {
        "M+" : this.getMonth()+1,                 //月份
        "d+" : this.getDate(),                    //日
        "h+" : this.getUTCHours(),                   //小时
        "m+" : this.getMinutes(),                 //分
        "s+" : this.getSeconds(),                 //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S"  : this.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt))
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)
        if(new RegExp("("+ k +")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
    return fmt;
}