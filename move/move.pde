import lord_of_galaxy.timing_utils.*;
import ddf.minim.*;

Minim minim;
AudioPlayer game;
AudioPlayer loss;
AudioPlayer begin;
AudioPlayer blop,blop2,blop3,blop4,blop5,blop6,blop7,blop8,blop9,blop10,blop11,blop12,blop13,blop14,blop15,blop16,blop17,blop18,blop19,blop20;
AudioPlayer ploop;
Stopwatch s;
Stopwatch start;
Stopwatch end;
PImage myCursor,backstart,backend,backgame;
boolean collision;
int circleCenterX;
int circleCenterY;
int circleRadius;
int radius=40;
int loser=0;
color c = color(0);
float xx = random(0 + radius, width - radius);
float yy = random(0 + radius, height - radius);
int unit = 40;
int count;
int screen=3;
int test=2;
boolean showimage = true;
int squares=0;
//SQUARE BOOLEAN ARRAY
boolean[][]  square = new boolean[10][10];
int timing;
boolean gameOver = false;

  

void setup(){
  fullScreen();
  pixelDensity(1);
 myCursor = loadImage("circle3.png");
 backstart = loadImage("back2.jpg");
  backend = loadImage("back3.jpg");
   backgame = loadImage("backend.jpg");
 noCursor();
  //Stopwatch
  s = new Stopwatch(this);
  start = new Stopwatch(this);
 s.start(); 
 smooth(20);
 
  minim = new Minim(this);
  game = minim.loadFile("game.mp3", 2048);
  game.loop();
  
   minim = new Minim(this);
  loss = minim.loadFile("gamover.mp3", 2048);
  loss.loop();
  
     minim = new Minim(this);
  begin = minim.loadFile("start.wav", 2048);
  begin.play();
  
       minim = new Minim(this);
       
blop = minim.loadFile("blop.wav", 2048);
blop2 = minim.loadFile("blop2.wav", 2048);
blop3 = minim.loadFile("blop3.wav", 2048);
blop4 = minim.loadFile("blop4.wav", 2048);
blop5 = minim.loadFile("blop5.wav", 2048);
blop6 = minim.loadFile("blop6.wav", 2048);
blop7 = minim.loadFile("blop7.wav", 2048);
blop8 = minim.loadFile("blop8.wav", 2048);
blop9 = minim.loadFile("blop9.wav", 2048);
blop10 = minim.loadFile("blop10.wav", 2048);
blop11 = minim.loadFile("blop11.wav", 2048);
blop12 = minim.loadFile("blop12.wav", 2048);
blop13 = minim.loadFile("blop13.wav", 2048);
blop14 = minim.loadFile("blop14.wav", 2048);
blop15 = minim.loadFile("blop15.wav", 2048);
blop16 = minim.loadFile("blop16.wav", 2048);
blop17 = minim.loadFile("blop17.wav", 2048);
blop18 = minim.loadFile("blop18.wav", 2048);
blop19 = minim.loadFile("blop19.wav", 2048);
blop20 = minim.loadFile("blop20.wav", 2048);
ploop = minim.loadFile("glitch.mp3",2048);

ploop.loop();
ploop.pause();


  
}


void draw(){
if (screen==3)  
instruct();
  
if(screen==0){
game();
;
}
if(screen==1){
loser();
}
}

void game(){
  //sound();
  //loss.pause();
background(backgame);
balls();
//TIME
fill(0, 102, 153);
textSize(30);
//USES MILISECONDS
int clockTime=s.time()/1000-2;
fill(0, 102, 153);
text(clockTime,1830,80); //CLOCK, POSITION
fill(0, 102, 153);
text("Timer",1800,40);
fill(255);
imageMode(CENTER);
image(myCursor, mouseX,mouseY); //MOUSE


collide();
ballcreate();
coin();
}

void mouseClicked(){
if(screen==3){
screen=0;
  }
  
  if(screen==1){
    exit();
  }
  }
  
  

     
    
    
    
    
    
    
    
  
 
