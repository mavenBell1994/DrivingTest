/*
 * public
 *
 * name: xiaojia
 * date: 14-8-6
 */

define('jkbd-sdk!app/public', [], function () {

    "use strict";

    var Simple = this.Simple;
    var Store = Simple.Core.Store;
    var Cookie = Simple.Core.Cookie;

    //var JkbdSdk_Data = Simple.Module['jkbd-sdk'].Data;

    // 初始化
    var init = function () {



    }

    // 时间戳
    var getTickCount = function (done, fail) {

        return Store(['jkbd-sdk!hostcore/tickCount']).request(function () {
            done && done(this.stores[0].data);
        }, function () {
            fail && fail(this.message);
        });

    }

    // 统计
    var logEvent = function (action, opt_label, opt_value) {

    };

    // 页面统计
    var pageTrack = function (url) {

    };


    //取cookie
    var cookie = function(name, value){
        name = name.toUpperCase();
        var cookieObj = Cookie(name, "8000d", {path : "/", domain : __nodeConfig.cookieDomain || ""});
        if( !value ){
            try{
                return JSON.parse( cookieObj.get() );
            }catch (e){
                return cookieObj.get()
            }
        }
        //set
        else{
            if( $.type(value) === "array" || $.type(value) === "object" ){
                value = JSON.stringify( value );
            }
            cookieObj.set( value, {path : "/", domain : __nodeConfig.cookieDomain || ""} );
        }
    };


    //切换车型代号, 这个方法没用，可以用UserApi.setUserInfo
    var switchDaihao = function(daihao){
        var tempUserInfo = JkbdSdk_Data.tempUserInfo;
        var setJsz = ["ky", "hy", "jl", "wx"].indexOf(daihao) === -1;
        var currentJsz = tempUserInfo.isJSZ;

        var course = tempUserInfo.course;


        //如果都是驾驶证
        if( setJsz === currentJsz ){

        }
        //设置成驾驶证, 则设置成科目一
        else if( setJsz ){
            course = "kemu1";
        }
        //设置成资格证
        else{
            course = "zigezheng";
        }

        var userInfo = {
            cityCode : tempUserInfo.cityCode, name : tempUserInfo.name,
            daihao : daihao, course : course
        };

        cookie('userInfo', userInfo );
    };



    return {
        init: init,
        getTickCount: getTickCount,
        logEvent: logEvent,
        pageTrack: pageTrack,

        cookie : cookie,
        switchDaihao : switchDaihao
    }

});