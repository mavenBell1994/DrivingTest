/*
 * config v0.0.1
 *
 * name: xiaojia
 * date: 2013/8/22
 */

define('jkbd-sdk!app/Config', ['jkbd-sdk!app/user'], function (UserApi) {

    "use strict";

    var Simple = this.Simple;

    //var HOST = window.simple.nodeConfig.webHosts.runhost;
    var HOST = "http://" + window.location.host;


    Simple.UserApi = UserApi;


    return {

        Initialize: function () {

        },

        Data: {
            appInfo: {},
            userInfo: {
                course : {
                    type : 'kemu1',
                    name : "科目一"
                },
                car: {
                    name: "小车",
                    type: "car",
                    daihao : 'c1',
                    isJSZ : true
                },
                district: {
                    city: {},
                    school: {},
                    province: {}
                },
                user: {
                    name : "我是车神"
                }
            },

            appuser : 'jiakaobaodian-web'
        },

        Ajax : {
            params : {_r : "11258564547825243087"}
        },

        Hosts: {

            //node 代理
            "node" :  HOST + '/api',

            //模拟考试相关
            'mnks' : {
                agent: HOST + '/api/app-sdk',
                original: 'http://api2.jiakaobaodian.com'
            },

            //同步
            'cloud' : HOST + '/api/cloud',

            //资讯相关
            'news' : {
                agent: HOST + '/api/news-sdk',
                original: 'http://cms.jiaxiaozhijia.com'
            },

            // seo新闻站
            "snews" : 'news.site.jiakaobaodian.com',

            // 试题点评
            'dianping': {
                agent: HOST + '/api/jkbd/shiti-dianping',
                original: 'http://dianping.kakamobi.com'
            },
            //photo美女致
            "telepathy": "http://telepathy.kakamobi.com",

            //驾考社区、车友圈
            'bbs' : HOST + "/api/bbs",


            //排行榜相关
            'jkbd-sdk-course1': 'http://ke1.jiakaobaodian.com',
            'jkbd-sdk-course4': 'http://ke4.jiakaobaodian.com',
            'jkbd-sdk-zigezheng' : 'http://zige.jiakaobaodian.com'

        }

    }

});