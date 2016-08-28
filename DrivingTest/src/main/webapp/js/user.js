/*
 * user
 *
 * name: caifuqiang
 * date: 2016.9.22
 */

define('jkbd-sdk!app/user', ['jkbd-sdk!data/constant', 'jkbd-sdk!core/Citycore', 'jkbd-sdk!app/public'], function (Constant, CityCore, PublicApi) {

    "use strict";

    var Simple = this.Simple;


    var UserInfo;
    var TempUserInfo;

    var init = function( params ){

        if( init.hasInit ) return;
        init.hasInit = true;

        UserInfo = Simple.Module['jkbd-sdk'].Data.userInfo = parseUserInfo(PublicApi.cookie("userInfo"));

        UserInfo = setUserInfo( params.$htmlsObject, true );

        syncUserInfo();

    };

    var syncUserInfo = function(){

        //给模板用的userInfo
        TempUserInfo = result.userInfo = $.extend({
            //name : userInfo.user.name,
            vary : UserInfo.vary,
            course : UserInfo.course.type,
            courseName : UserInfo.course.name
        }, CityCore.getInfoByCode(UserInfo.district.city.code), Constant.getInfoByDaihao(UserInfo.car.daihao));

    };


    //设置用户信息
    var setUserInfo = function(config, notSetCookie){
        //config = {carType : 1, daihao : 1, course : 1, cityPinyin : 1, cityCode :1, name : ''};

        if( config.vary !== undefined && UserInfo.vary != config.vary){
            UserInfo.vary = config.vary;
        }


        var cityInfo;
        if( config.cityPinyin && UserInfo.district.city.pinyin != config.cityPinyin ){
            cityInfo = CityCore.getInfoByPinyin(config.cityPinyin);
        }
        if( config.cityCode && UserInfo.district.city.code != config.cityCode ){
            cityInfo = CityCore.getInfoByCode(config.cityCode);
        }
        if( cityInfo ){
            UserInfo.district.city = {
                code : cityInfo.cityCode,
                name : cityInfo.cityName,
                pinyin : cityInfo.cityPinyin
            };
            UserInfo.district.province = {
                code : cityInfo.provinceCode,
                name : cityInfo.provinceName,
                pinyin : cityInfo.provincePinyin
            };
        }



        if( config.course && UserInfo.course.type != config.course ){
            var typeChange = (UserInfo.course.type !== "zigezheng") === (config.course !== "zigezheng");
            UserInfo.course = {
                type : config.course,
                name : Constant.courseNames[ config.course ]
            };
            //如果改变了资格证类型，又没有设置车型数据，则要重新设置车型代号
            if( typeChange && !config.daihao && !config.carType ){
                config.daihao = UserInfo.course.type == "zigezheng" ? "ky" : "c1";
            }
        }

        var carInfo;
        if( config.daihao && UserInfo.car.daihao != config.daihao ){
            carInfo = Constant.getInfoByDaihao( config.daihao );
        }else if( config.carType && UserInfo.car.type != config.carType  ){
            carInfo = Constant.getInfoByCarType( config.carType );
        }
        if( carInfo ){
            UserInfo.car = {
                type : carInfo.type,
                name : carInfo.carName,
                daihao : carInfo.daihao,
                isJSZ : carInfo.isJSZ
            };

            //如果改变了资格证类型，又没有设置科目数据，则要重新设置科目
            if( carInfo.isJSZ !== (UserInfo.course.type !== "zigezheng")  ){
                var course = carInfo.isJSZ ? "kemu1" : "zigezheng";
                UserInfo.course = {
                    type : course,
                    name : Constant.courseNames[ course ]
                };
            }
        }



        if( !notSetCookie ){
            PublicApi.cookie("userInfo", {
                cityCode : UserInfo.district.city.code,
                course : UserInfo.course.type,
                daihao : UserInfo.car.daihao,
                //name : userInfo.user.name,
                vary : UserInfo.vary
            });
        }


        syncUserInfo();

        return UserInfo;

    };


    //格式化基本信息
    var parseUserInfo = function(cookieUserInfo){

        //车型信息补充
        var carInfo = Constant.getInfoByDaihao( cookieUserInfo.daihao );

        //城市信息
        var cityInfo = CityCore.getInfoByCode(cookieUserInfo.cityCode);


        var result = {
            course : {
                type : cookieUserInfo.course,
                name : Constant.courseNames[ cookieUserInfo.course ]
            },
            car : {
                type : carInfo.carType,
                name : carInfo.carName,
                daihao : carInfo.daihao,
                isJSZ : carInfo.isJSZ
            },
            district : {
                city : {
                    code : cityInfo.cityCode,
                    name : cityInfo.cityName,
                    pinyin : cityInfo.cityPinyin
                },
                province : {
                    code : cityInfo.provinceCode,
                    name : cityInfo.provinceName,
                    pinyin : cityInfo.provincePinyin
                },
                school : {}
            },
            user : {
                name : "我是车神"
            },
            vary : cookieUserInfo.vary
        };


        return result;

    };





    var result = {
        userInfo : TempUserInfo,
        init : init,
        setUserInfo : setUserInfo
    };


    return result;

});