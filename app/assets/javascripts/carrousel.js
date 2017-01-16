var carrousel = {

nbSlide : 0,
nbCurrent: 1,
elemCurrent: null,
elem: null,
timer : null,

init : function(elem){
    this.nbSlide = elem.find(".slide").length;

//Créer la pagination
elem.append('<div class="navigation"></div>');
for(var i=1;i<=this.nbSlide;i++){
  elem.find(".navigation").append("<span>"+i+"</span>");
  }

elem.find(".navigation span").click(function(){ carrousel.gotoSlide($(this).text());})

// initialisation du carrousel
this.elem=elem;
elem.find(".slide").hide();
elem.find(".slide:first").show();
this.elemCurrent = elem.find(".slide:first");
this.elem.find(".navigation span:first").addClass("active");

//on cree le timer
carrousel.play();
//stop quand on passe la souris sur la photo

elem.mouseover(carrousel.stop);
elem.mouseout(carrousel.play);
},

gotoSlide : function(num){
  if(num==this.nbCurrent){return false; }
this.elemCurrent.fadeOut();
this.elem.find("#slide"+num).fadeIn();
this.elem.find(".navigation span").removeClass("active")
this.elem.find(".navigation span:eq("+(num-1)+")").addClass("active");
this.nbCurrent = num;
this.elemCurrent = this.elem.find("#slide"+num);
},

next : function(){
  var num = parseInt(this.nbCurrent) + 1;
  if(num>this.nbSlide){
    num = 1;
  }
  this.gotoSlide(num);
},

prev : function(){
  var num = parseInt(this.nbCurrent) - 1;
  if(num<1){
    num = this.nbSlide;
  }
  this.gotoSlide(num);
},

stop : function(){
  window.clearInterval(carrousel.timer);
},

play : function(){
window.clearInterval(carrousel.timer);
carrousel.timer = window.setInterval("carrousel.next()",5000);
}


}
$(function(){
  carrousel.init($("#carrousel"));
});
