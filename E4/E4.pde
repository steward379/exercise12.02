Arrow arrow;

final int ArrowLength = 30 ;
final int numberOfArrowPerSide = 10 ;
final int fixImageOffset = ArrowLength / 2 ;

void setup (){
  size(300 , 300) ;
  imageMode(CENTER);
  arrow = new Arrow();
}

void draw(){
  background(255);
  arrow.mouseDraw();
}
