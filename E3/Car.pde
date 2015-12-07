/*
  把 E2 的 E2.pde 的程式碼貼進來
  將小雞加進遊戲中，小雞可以上下左右移動，
  碰到車子要回到原點。
  請參考 Chicken 裡面的方法，以及 isHit 方程。

*/

Car [] cars;
Chicken chicken;
float speedRan = random(3.0, 5.0);
   
void setup(){
  size(500,500);
  cars = new Car[10];
  chicken = new Chicken(width/2, 0);
  for (int i = 0; i < cars.length; i ++ ){
    int y = 0;
    float speed = random(3.0, 5.0);
    cars[i] = new Car (-30, y, speed);
    y += 50;
  } 
}

void draw () {
  background(255);
  
  chicken.display();
  
  for (int i = 0; i < cars.length; i ++ ){  
    cars[i].display();
    cars[i].moveForward();
    if (cars[i].x > width ){ 
      cars[i].reset();  
    }  
  
    if (isHit (chicken.x, chicken.y ,chicken.img.width, chicken.img.height, 
          cars[i].x, cars[i].y, cars[i].carImg.width, cars[i].carImg.height)
    == true){
     chicken.reset(); 
    }
  }
}

void keyPressed() {
  if (key == CODED ) {
    switch(keyCode) {
    case UP:
      chicken.moveUp();
      break;
    case DOWN:
      chicken.moveDown();
      break;
    case LEFT:
      chicken.moveLeft();
      break;
    case RIGHT:
      chicken.moveRight();
      break;
    }
  }
}

boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return (
    ax+aw > bx       &&
    ax    < bx + bw  &&
    ay+ah > by       &&
    ay    < by + bh  );
}
