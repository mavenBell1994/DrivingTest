define("jkbd!core/Utils",[],function(){var e;try{module&&"object"==typeof module&&(e=!0)}catch(t){}var r,i={};r=this.Simple,Date.prototype.format||(Date.prototype.format=function(e){var t=["\u661f\u671f\u65e5","\u661f\u671f\u4e00","\u661f\u671f\u4e8c","\u661f\u671f\u4e09","\u661f\u671f\u56db","\u661f\u671f\u4e94","\u661f\u671f\u516d"],r={"M+":this.getMonth()+1,"d+":this.getDate(),"h+":this.getHours()%12,"H+":this.getHours(),"m+":this.getMinutes(),"s+":this.getSeconds(),"q+":Math.floor((this.getMonth()+3)/3),"S+":this.getMilliseconds(),"W+":t[this.getDay()]};/(y+)/.test(e)&&(e=e.replace(RegExp.$1,(this.getFullYear()+"").substr(4-RegExp.$1.length)));for(var i in r)new RegExp("("+i+")").test(e)&&(e=e.replace(RegExp.$1,1==RegExp.$1.length?r[i]:("00"+r[i]).substr((""+r[i]).length)));return e}),Array.prototype.shuffle||(Array.prototype.shuffle=function(){for(var e,t,r=this.length;r;e=parseInt(Math.random()*r),t=this[--r],this[r]=this[e],this[e]=t);return this});var n={date:function(){for(var e,t="yyyy-MM-dd",r=arguments,i=0;i<r.length;i++)switch(typeof r[i]){case"object":e=r[i];break;case"number":e=new Date(r[i]);break;case"string":e&&(t=r[i])||(e=new Date(r[i]))}return e||(e=new Date),"undefined"!=typeof r[0]?new Date(e).format(t):""},niceTime:function(){var e;e="number"==typeof arguments[0]||"string"==typeof arguments[0]?new Date(arguments[0]):arguments[0];var t=new Date,r=(t.getTime()-e.getTime())/1e3;return 60>r?"\u521a\u521a":r>=60&&3600>r?parseInt(r/60)+"\u5206\u949f\u524d":r>=3600&&n.date(e)==n.date(t)?n.date(e,"HH:mm"):e.getFullYear()==t.getFullYear()?n.date(e,"MM-dd"):n.date(e)}};if(i.format=n,i.drawZoom=function(e,t,r,i){var n={};return e>0&&t>0&&(e/t>=r/i?e>r?(n.width=r,n.height=t*r/e):(n.width=e,n.height=t):t>i?(n.height=i,n.width=e*i/t):(n.width=e,n.height=t)),n},i.getCenterImgAttr=function(e,t,r,n,a){var o=i.drawZoom(e,t,r,n);a=parseInt(a)||0;var s=o.width/2-a,h=o.height/2-a;return"style='width:"+o.width+"px;height:"+o.height+"px;margin-left:-"+s+"px;margin-top:-"+h+"px;'"},!e){var a={version:function(){{var e=0;navigator.userAgent}if(window.ActiveXObject)try{var t=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");t&&(e=Number(t.GetVariable("$version").split(" ")[1].replace(/\,/g,".").replace(/^(\d+\.\d+).*$/,"$1")))}catch(r){}else if(navigator.plugins&&navigator.plugins.length>0){var t=navigator.plugins["Shockwave Flash"];if(t)for(var i=t.description.split(" "),n=0,a=i.length;a>n;n++){var o=Number(i[n]);if(!isNaN(o)){e=o;break}}}return e}},o={info:function(){var e=window.navigator.userAgent.toLowerCase();if(e.indexOf("msie")>=0||e.indexOf("trident")>=0){var t=/(msie |trident.*rv:)([\w]+)/.exec(e)[2]||0;return{name:"ie",version:t}}if(e.indexOf("firefox")>=0){var t=e.match(/firefox\/([\d.]+)/)[1];return{name:"firefox",version:t}}if(e.indexOf("chrome")>=0){var t=e.match(/chrome\/([\d.]+)/)[1];return{name:"chrome",version:t}}if(e.indexOf("opera")>=0){var t=e.match(/opera.([\d.]+)/)[1];return{name:"opera",version:t}}if(e.indexOf("Safari")>=0){var t=e.match(/version\/([\d.]+)/)[1];return{name:"safari",version:t}}return{name:"unkonw",version:-1}}},s=o.info();window.Browser=window.browser={name:s.name,ie:"ie"===s.name,version:parseInt(s.version)};var h={video:!("ie"===s.name&&s.version<9),localStorage:!("ie"===s.name&&s.version<8),pushState:!!window.history.pushState};i.flash=a,i.brower=o,i.support=h}return r.Core.Utils.extend(r.Core.Utils,i),i});