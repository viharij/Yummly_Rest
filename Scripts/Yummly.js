//Yummly.Search("onion", function(data){ console.log(data); });

(function (global, $) {

    function YummlyRequest(data) {
        if (typeof (data) == "object" && data !== null) {
            for (var i in data) {
                this[i] = data[i];
            }
        }
    };
    YummlyRequest.prototype._app_id = "ff09f5ad";
    YummlyRequest.prototype._app_key = "c7518a94a47823ba3abb3ccb731cf72a";
    //YummlyRequest.prototype.requirePictures = true;
    YummlyRequest.URL = "http://api.yummly.com/v1/api/";

    function getUrl(method, data, path) {
        // alert("method:" + method + "</br>" + "data:" + data + "</br>" + "path:" + path);
        if (typeof (data) == "string") {

            path = data;
            data = undefined;
        }
        var request = new YummlyRequest(data);
        var url = YummlyRequest.URL + method;
        if (path) {
            url += "/" + path;
        }

        url += "?" + $.param(request);

        //  console.log(url);
        //  alert("url:" + url);
       return url;
};


    function Yummly() {
    };

    Yummly.Search = function Yummly_Search(query, callback) {
        var url = getUrl("recipes", { q: query });
       // alert("urlSearch:" + url);
        var options = {
            // data: new YummlyRequest({ q: query }),
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        // console.log(url)
        $.ajax(url, options);
    };


    Yummly.Recipe = function Yummly_Recipe(recipeId, callback) {
        var url = getUrl("recipe", undefined, recipeId);
        //alert("urlGet:" + url);
        //  console.log(url);
        var options = {
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };

        $.ajax(url, options);
    };
    global.Yummly = Yummly;


   

})(window, jQuery);
