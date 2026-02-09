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
var drawflower = function(flowerY, flowerX) {
  // var flowerY = 40;
  // var flowerX = 40;
noStroke();
fill(255, 254, 250);
ellipse(flowerX-15,flowerY,20,20); // petals
ellipse(flowerX,flowerY-15,20,20);
ellipse(flowerX,flowerY+15,20,20);
ellipse(flowerX+15,flowerY,20,20);
fill(255, 228, 153);
ellipse(flowerX,flowerY,20,20); // middle
};
var drawflower2 = function(flower2Y, flower2X) {
  // var flower2Y = 40;
  // var flower2X = 40;
noStroke();
fill(245, 144, 154);
ellipse(flower2X-10,flower2Y,10,10); // petals
ellipse(flower2X,flower2Y-10,10,10);
ellipse(flower2X,flower2Y+10,10,10);
ellipse(flower2X+10,flower2Y,10,10);
fill(255, 228, 153);
ellipse(flower2X,flower2Y,10,10); // middle
};
var drawflower3 = function(flower3Y, flower3X) {
  // var flower3Y = 40;
  // var flower3X = 40;
noStroke();
fill(146, 116, 168);
ellipse(flower3X-5,flower3Y,5,5); // petals
ellipse(flower3X,flower3Y-5,5,5);
ellipse(flower3X,flower3Y+5,5,5);
ellipse(flower3X+5,flower3Y,5,5);
fill(255, 228, 153);
ellipse(flower3X,flower3Y,5,5); // middle
}

//🟢draw Function - will run on repeat
draw = function(){
  background(255,255,255,0);
            drawflower(300,120); // flowers1
            drawflower(340,280); // flowers1
          drawflower(300,390); // flowers1


          drawflower2(340,420); // flowers2
          drawflower2(290,70); // flowers2
          drawflower2(300,250); // flowers2

          drawflower3(300,280); // flowers3
          drawflower3(340,90); // flowers3
          drawflower3(340,460); // flowers3
   // drawcarrot(200, 300, color(200,0,200)); 
    if (carrot1 == 0 ){drawcarrot(250, 300, color(0,200,200));} //when buny eat carrot
   if (carrot2 == 0 ){drawcarrot(200, 300, color(200,0,200));}//when buny eat carrot
image(bunny, mouseX, mouseY, 220, 100);

if (mouseX > 220 && mouseX < 280 && mouseY > 280 && mouseY < 330){carrot1 = 210}
if (mouseX > 150 && mouseX < 220 && mouseY > 280 && mouseY < 330){carrot2 = 210}


image(bunny, mouseX, mouseY, 220, 100);
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




