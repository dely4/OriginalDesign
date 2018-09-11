//setup up the window and some constants
float ballx = 0;
float bally = 928;
float x_vel = 2;
float y_vel = -1.156666;
float gravity = 0.0027778;
float counter = 0;
void setup(){
  size(1000,950);
}
void draw(){
 background(255);
 basketball(ballx,bally);
 if(ballx>=888){
   x_vel = -0.04;
 }
 ballx+= x_vel;
 bally+= y_vel;
  y_vel+= gravity;
 scenery();
}
void basketball(float x, float y){
  fill(255,150,0);
  ellipse(x,y,20,20);
}
void scenery(){
  fill(0,0,0);
  rect(900,650,10,280);
  fill(255,200,0);
  rect(830,700,70,10);
  //sides of hoop
  line(830,710,840,770);
  line(900,710,890,770);
  //net lines going left
  line(890,710,880,770);
  line(880,710,870,770);
  line(870,710,860,770);
  line(860,710,850,770);
  line(850,710,840,770);
  line(840,710,835,740);
  //net lines going right
  line(890,770,880,710);
  line(880,770,870,710);
  line(870,770,860,710);
  line(860,770,850,710);
  line(850,770,840,710);
  line(890,710,895,740);
  //bottom of the hoop
  line(840,770,890,770);
  //middle of hoop
  line(835,740,895,740);
}

