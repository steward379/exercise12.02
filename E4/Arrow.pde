class Arrow {
  
float x ;
float y ;
PImage img ;
final int ArrowLength;
final int numberOfArrowPerSide;

Arrow(){
    img = loadImage("arrow.png") ;
    ArrowLength = 30;
    numberOfArrowPerSide = 10;
    final int FixImageOffset = ArrowLength / 2 ;
}
  
void display(){
    imageMode(CENTER);
    image(img,0,0);
}
  
void mouseDraw(){  
    for (int i = 0  ; i < numberOfArrowPerSide ; i++){
     for (int j = 0 ; j < numberOfArrowPerSide ; j++){
  
       int currentArrowX = fixImageOffset  + i * ArrowLength ;
       int currentArrowY = fixImageOffset  + j * ArrowLength ;
  
       pushMatrix();
       translate(currentArrowX,currentArrowY);
       rotate( atan2(mouseY - currentArrowY , mouseX - currentArrowX )) ;
       arrow.display();
       popMatrix();
     }
    }
  }
  
}
