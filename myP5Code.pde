var bunny =  loadImage("https://www.pngarts.com/files/1/Rabbit-Bunny-Transparent-Image.png");

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
  
    drawcarrot(200, 300, color(200,0,200)); 
    drawcarrot(250, 300, color(0,200,200));
};
var carrot1 = 0;
var carrot2 = 0;
var drawapple = function(appleY, appleX) {
  // var appleY = 40;
  // var appleX = 40;
noStroke();
fill(224, 67, 78);
ellipse(appleX,appleY,40,40)
}

//🟢draw Function - will run on repeat
draw = function(){
  background(255,255,255,0);
    
    drawcarrot(200, 300, color(200,0,200)); 
    if (carrot1 == 0 ){drawcarrot(250, 300, color(0,200,200));} //when buny eat carrot
   if (carrot2 == 0 ){drawcarrot(200, 300, color(200,0,200));}//when buny eat carrot
image(bunny, mouseX, mouseY, 220, 100);

if (mouseX > 220 && mouseX < 280 && mouseY > 280 && mouseY < 330){carrot1 = 210}
if (mouseX > 220 && mouseX < 280 && mouseY > 280 && mouseY < 330){carrot2 = 210}

drawapple(300,330) //apple
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawcarrot Function - will run when called
var drawcarrot = function(fishX, fishY, fishColor){
  textSize(35)
  fill(fishColor);
  text("🥕", fishX, fishY);
};




