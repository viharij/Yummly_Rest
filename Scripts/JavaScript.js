
      $('#slideMenu').animate({ 'right': '0px' }, 2500);

    Yummly.Search("APPETIZER", searchId);
    $('#Button1').addClass("recentTopic");



    function navTopic(topic, id) {
    $('.recentTopic').removeClass("recentTopic");
    var $id = $('#' + id);
    $($id).addClass("recentTopic");
    $("#image_Con").empty();
    Yummly.Search(topic, searchId);

}



function searchId(data) {


    for (var i = 0; i < data.matches.length; i++) {
        (function (recipe) {
            //  alert(recipe.id);

            Yummly.Recipe(recipe.id, populateresult);
        })(data.matches[i]);
    }
}

//Yummly.Search("Appetizer", populateSearchResult);

function populateresult(data) {

    var $section = $("#image_Con");
   
    
    for (var i = 0; i < data.images.length; i++) {

        (function (recipe) {
            console.log(recipe);
            var $div = $("<div></div>").appendTo($section);
            var $a = $("<a> </a>").appendTo($div);
            // $('a').attr("href", "Detail.aspx?" + data.id); 
            $a.click(function () {
                window.open("Detail.aspx?" + data.id, "_blank");

            });
            var $img = $("<img />");
            $a.append($img);
            $a.find('img').attr("src", recipe.hostedLargeUrl).hide();
            console.log(recipe.hostedLargeUrl);
            $section.find('div').attr("class", "Image_block");
            $section.find('img').attr("class", "imgTest");
            
            var $p = $("<p></p>").text(data.name).appendTo($div)
            $section.find('p').attr("class", "imageName");

            // window.location.replace("Detail.aspx?" + data.id);

        })(data.images[i]);
    }

    $('img').fadeIn(2500);

}

        //Search functionality
$('#onGo').click(
    function () {
        navTopic($("#SearchBar").val(), 'SearchBar');
    });



  











