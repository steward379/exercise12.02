class Car{
  float x;
  float y;
  float speed;
  PImage carImg;
  
  void reset(){
    x = - carImg.width;
    y = floor(random(0, 500 - carImg.height));
  }
  
  void display(){
    image(carImg, x, y);
  }
  
  void moveForward(){
    x += speed;
  }
  
  Car( int x, int y){
    this.x = x;
    this.y = y;
    this.speed = 10;
    this.carImg = loadImage("car.png");
  }
  
  Car(int x, int y, float speed){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.carImg = loadImage("car.png");
  }
}
