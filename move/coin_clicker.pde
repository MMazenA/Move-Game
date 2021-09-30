void coin(){
  fill(255,0,0);
  if (squares >= 5){
    gameOver = true
  ;}

   if (gameOver == false) {
    for (int i = 0; i < 10; i ++) {//I INCREMENT
      for (int j = 0; j < 10; j ++) {//J INCREMENT
        if ( square[i][j] == true) {//IF SQUARE EXISTS DRAW IT
          rect(i * 100, j * 100, 100, 100);
          if (dist(mouseX, mouseY, i * 100 +50, j * 100+ 50) < 50) {//IF HOVER
             square[i][j] = false;//TIME FIXER
            squares --;//REMOVE SQUARE
            ploop.loop();
          }
          if (dist(mouseX, mouseY, i * 100 +50, j * 100+ 50) > 50) {//IF HOVER
          ploop.play();
            ploop.pause();
          }
        }
      }
    }
  } 
  
  else {
    screen=1;
  }
 



 //SQUARE TIMER
    if (millis() > timing) {//FALLS BEHIND
    // Add a new random block
    
    int i = (int) random(9);
    int j = (int) random(9);
     square[i][j] = true;//MAKES TRUE AGAIN AND DRAWS SQUARE AFTER TIMING SECONDS
    squares ++;

    timing = millis() + 1500;//REFRESHES
    }
}
  
