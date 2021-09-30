void loser(){
game.pause();
loss.loop();
ploop.pause();

float x=color(#ffffff);

fill(#ffffff);
rect(400,400,1100,900);
background(backend);//REMOVE TO SHOW IN GAME LOSE SCREEN

textSize(200);
text("YOU LOSE",1920/2-450,1080/2+50);
textSize(30);
int clockTime=s.time()/1000-2;
fill(#ffffff);
text("Your time=",1920/2-420,1080/2+150);

fill(#ffffff);   
text(clockTime,1920/2-230,1080/2+152);

textSize(40);
text("Click your mouse to exit",1920/2-425,1080/2+110);
textSize(30);


text("Mazen Mirza",1720,1071);
textSize(30);
noLoop();
}
