define("jkbd!app/home/home",["jkbd-sdk!app/public","jkbd-sdk!data/constant","jkbd-sdk!app/user"],function(e,a,t){"use strict";var i=this.Simple,n=(i.Core.Store,i.Core.Template,function(){var e=i.Module.jkbd.DOM.article;if(!e._bindEvents){e._bindEvents=!0;var n=e.item("main-banner"),r=n.item("main-carchoose-container");n.item("cartype-switch-wapper").mouseenter(function(){r.show()}).mouseleave(function(){r.hide()});var o=t.userInfo;r.on("click","a",function(){var e=$(this);if(e.hasClass("current"))return!1;var i=e.attr("data-car"),c=e.attr("data-daihao");return i&&a.carNames[i]?(n.item("main-carchoose-container").find("a.current").removeClass("current"),n.item("main-carchoose-container").find("[data-car="+i+"]").each(function(){return $(this).attr("data-daihao")==c?($(this).addClass("current"),!1):void 0}),t.setUserInfo({daihao:c}),o=window.simple.data.jkbdSdk.tempUserInfo,n.item("current-car").html(o.label.toUpperCase()+(o.isJSZ?"":"\u8d44\u683c\u8bc1")),n.item("quicknav-content").animate({opacity:.3},100).animate({opacity:1},100),void r.hide()):!1}),e.item("banner-ad-container").slide({mainCell:".bd ul",effect:"fade",autoPlay:!0,easing:"easeOutCirc",delayTime:1e3,interTime:3e3}),e.item("baodiankoubei-container slide-container").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:!0,effect:"leftLoop",autoPlay:!1,vis:3});var c=e.item("baodiankoubei-container count"),d=function(){var e="250"+(parseInt(((new Date).getTime()+"").substring(4,11)/2)+"");e.length<9&&(e+="0"),e=e.match(/^(\d{3})(\d{3})(\d{3})/),e=e[1]+","+e[2]+","+e[3],c.html(e);var a=1e3*parseInt(4*Math.random()+3);setTimeout(d,a)};d()}});return{main:n}});