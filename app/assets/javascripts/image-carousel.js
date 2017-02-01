// <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
// <script type="text/javascript">
var carouselSettings = {
        animateTime : 3000,
        startAt : 1
    },
    activeSlide;

function animateCarousel() {
    activeSlide++;
    if(activeSlide > $(".carousel-data ul li").length) activeSlide = 1;
    loadNewSlide();
}

function loadNewSlide() {
    var currentDataNode = $(".carousel-data ul li").eq(activeSlide-1);
    $(".cnav-button").removeClass("current-cnav");
    $(".carousel-image-title .carousel-image a").attr("href", currentDataNode.find("a").attr("href"));
    $(".carousel-image-title img").attr("src", currentDataNode.find("img").attr("src")).hide();
    $(".carousel-image-title .carousel-image img").fadeIn("slow");
    $(".carousel-title").html(currentDataNode.find("span").html());
    $(".cnav-button").eq(activeSlide-1).addClass("current-cnav");
}

$(document).ready(function(){
    // Show carousel navigation buttons
    var navCounter = 1;
    $(".carousel-data li").each( function() {
        $(".carousel-nav").append("<div class='cnav-button'>"+navCounter+"</div>");
        navCounter++;
    });

    // Load first carousel slide
    activeSlide = carouselSettings.startAt;
    loadNewSlide();

    // Init carousel animation time loop
    var animateTime = setInterval('animateCarousel()', carouselSettings.animateTime);

    // Navigation button click event handler
    $(".cnav-button").click( function(){
        clearInterval(animateTime);
        var slideClicked = parseInt($(this).text());
        if(slideClicked != activeSlide){
            activeSlide = slideClicked;
            loadNewSlide();
        }
    });
});
// </script>

