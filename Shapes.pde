//call the boolean and float
boolean drawS;
boolean drawH;
boolean drawA;
boolean drawP;
boolean drawE;
boolean drawT;
float x;
float y;
float easing = 0.05;
float mx;
float speed=2;
float size=100;

void setup() {
  size(720,480); //size of the screen
  noStroke(); //no stroke for all objects
  textSize(100); //set text size to 100
  rectMode(CENTER); //set rectangle mode to center
}

void draw() { 
  background(103,249,255); // background color
  
  float targetX = mouseX; //easing speed
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  fill(255);
  ellipse(x,y,66,66);  //easing ball
  
  fill(random(255),random(255),random(255));
  ellipse(mx,100,66,66); // a random color ball is moving at the bottom
  mx=mx+speed;
  if(mx>=720||mx<=0){
    speed=speed*-1;
  } //The random color ball will reverse when it hit the sides
  
  if (mousePressed == true){
    fill(252,255,82);
    rect(x, y, size,size); //a yellow rectangle will appear when you press your mouse
    noStroke(); //no stroke for the circle
    cursor(HAND);//when you press mouse, cursor icon will change to hand sign
    size ++;
    if(size>=480){
       size=100;
    }//when the size of the yellow rectangle as same as the height, the size of circle will set as 100
  } 

  if (drawS == true) { 
    text('S',40,100);
  } // text 'S' will appear when drawE is true
 if (drawH == true) { 
    text('H',100,100);
  } // text 'H' will appear when drawE is true
  if (drawA == true) { 
    text('A',170,100);
  } // text 'A' will appear when drawE is true
  if (drawP == true) { 
    text('P',240,100);
  } // text 'P' will appear when drawE is true
  if (drawE == true) { 
    text('E',295 ,100);
  } // text 'E' will appear when drawE is true
  if (drawT == true) { 
    text('S',40,100);
    text('H',100,100);
    text('A',170,100);
    text('P',240,100);
    text('E',295,100); //word "SHAPE" will appear when you press 'SPACE'
  }
}

void keyPressed() {
  if ((key == 'S') || (key == 's')) {
    drawS = true; //when 'S'/'s' is pressed, the 'C' will appear
  }
  if ((key == 'H') || (key == 'h')) {
    drawH = true; //when 'H'/'h' is pressed, the 'C' will appear
  }
  if ((key == 'A') || (key == 'a')) {
    drawA = true; //when 'A'/'a' is pressed, the 'C' will appear
  }
  if ((key == 'P') || (key == 'p')) {
    drawP = true; //when 'P'/'p' is pressed, the 'C' will appear
  }
  if ((key == 'E') || (key == 'e')) {
    drawE = true; //when 'E'/'e' is pressed, the 'C' will appear
  }
  if (key == ' ' ) {
    drawT = true; //when 'SPACE' is pressed, the word 'SHAPE' will appear
  }
  
}

void keyReleased() {
  drawS = false;
  drawH = false;
  drawA = false;
  drawP = false;
  drawE = false;
  drawT = false; //when key are released, the booleans are false
}

void mouseDragged() {
  background (255,211,237); //background will change color when your mouse is dragged
  
  if (mouseX < 360) {
     fill(301,37,75);
     rect(180,240,360,480);// left background 
  
  }else {
    fill(245,151,173);
    rect(540,240,360,480);// right background   
  }
  
  fill(162,255,200);
  triangle(x,y, width/4, 360, 3*width/4, 360);//When you drag your mouse, a triangle will appear in a different color background and drag your mouse to change the top edge of triangle
 
  fill(165,40,86);
  ellipse(mx,400,66,66); //moving ball in dark pink color
  mx=mx+speed; //ball is moving
  if(mx>=720||mx<=0){
    speed=speed*-1;
  } //The speed will be increase when drag your mouse
} 


