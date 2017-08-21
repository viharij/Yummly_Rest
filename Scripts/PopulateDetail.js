/// <reference path="../Appetizers.aspx" />
/// <reference path="../Appetizers.aspx" />
$(function () {
    //---Get the recipe Id by URL---
    var url = window.location.href;
    var arrUrl = url.split("?");
    var getId = arrUrl[1];

    Yummly.Recipe(getId, populateresult);
    function populateresult(data) {
        //---Display image ---
        for (var j = 0; j < data.images.length; j++) {
            (function (recipe) {
                var $h = $('<h1></h1>').text(data.name).appendTo('.Top_Container');
                $h.attr("class", "detailName");
                var $img = $('<img />').appendTo('.sample_image_Con');
                $img.attr("src", recipe.hostedLargeUrl).attr("class", "detailImg");

            })(data.images[j]);

        }
        //---Display ingredients---
        // console.log("GetData:" + data.ingredientLines);

        var ingredient = JSON.stringify(data.ingredientLines);
        var Arringreds = ingredient.split(",");
        //console.log("test:" + Arringreds);

        for (var i = 0; i < Arringreds.length; i++) {
            var $ul = $('<ul></ul>');
            $('#tab-1').append($ul);
            var $li = $('<li></li>').text(Arringreds[i].replace(/"/g, " ")).appendTo($ul);
        }

        //---Display nutrition facts---
        for (var i = 0; i < data.nutritionEstimates.length; i++) {
            (function (recipe) {

                switch (recipe.attribute) {
                    case 'ENERC_KCAL':

                        $('#tab-2').find('tr:eq(1)').find('b').after(recipe.value);
                        break;

                    case 'NA':
                        var NA_P = Math.round(recipe.value / 2.4 * 100);

                        $('#tab-2').find('tr:eq(7)').find('b:eq(0)').after(recipe.value);
                        $('#tab-2').find('tr:eq(7)').find('b:eq(1)').prepend(NA_P);

                        break;

                    case 'CHOCDF':
                        var CHOCDF_P = Math.round(recipe.value / 300 * 100);

                        $('#tab-2').find('tr:eq(8)').find('b:eq(0)').after(recipe.value);
                        $('#tab-2').find('tr:eq(8)').find('b:eq(1)').prepend(CHOCDF_P);
                        break;

                    case 'SUGAR':

                        $('#tab-2').find('tr:eq(10)').find('b:eq(0)').after(recipe.value);
                        break;

                    case 'VITA_IU':
                        var VITA_P = Math.round(recipe.value / 5000 * 100);
                        $('#tab-2').find('tr:eq(12)').find('b:eq(0)').after(VITA_P);
                        break;

                    case 'VITC':
                        var VITC_P = Math.round(recipe.value / 0.06 * 100);
                        $('#tab-2').find('tr:eq(12)').find('b:eq(1)').after(VITC_P);
                        break;

                    case 'CA':
                        var CA_P = Math.round(recipe.value * 100);
                        $('#tab-2').find('tr:eq(13)').find('b:eq(0)').after(CA_P);
                        break;
                }

            })(data.nutritionEstimates[i]);

        }

        // ---Display Recipe Link---
        // console.log("sourceTest:" + data.source.sourceDisplayName);
        var $a = $('<a></a>').attr("class", "detailRecipe").attr("href", data.source.sourceRecipeUrl);
        $a.text("Click here and see complete recipe on " + data.source.sourceDisplayName);
        $('#tab-3').find('p').append($a);



    }

    $('#detailContainer').tabs();



    
});