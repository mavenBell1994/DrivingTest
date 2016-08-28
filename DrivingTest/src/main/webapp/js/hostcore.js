

define('jkbd-sdk!app/hostcore', function () {

    "use strict";

    var dataType = "json";

    try{
        dataType = (window && window.browser && window.browser.ie && window.browser.version <= 9) ? "jsonp" : "json";
    }catch (e){

    }


    return {
        dataType : dataType
    }

});