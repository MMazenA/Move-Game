void instruct(){
  loss.pause();
  background(backstart);
textSize(200);
fill(255,0,0);
text("Move",1920/2-250,1080/2+00);

textSize(100);
fill(255,255,255);
text("5 Squares and its over",1920/2-520,1080/2+150);

textSize(90);
text("Don't get hit",1920/2-280,1080/2+250);
fill(255,255,255);
int clockTime=s.time()/1000;
if(clockTime>2){
screen=0;};  
}
