class straightSide {
  Point start;
  Point end;
  Point shapeCenter;
  float derivative;
  
  straightSide(Point start, Point end, Point shapeCenter){
    this.start = start;
    this.end = end;
    this.shapeCenter = shapeCenter;
    derivative = slope();
  }
    
  void draw(){
    stroke(#FFFFFF);
    strokeWeight(2);
    line(start.x,start.y, end.x, end.y);
    ellipse(shapeCenter.x,shapeCenter.y,5,5);
  }
  
 
  String toString(){
    return "(" + start.toString() + ", " + end.toString() + ")";
  }
  
  
  float slope(){
    if((end.x - start.x)!=0){ 
      return ((end.y - start.y)/(end.x - start.x));
    }
    return 10000;
  }
  
  float position(float xPos){
      return xPos*derivative;
  }
  
  Point sidePoint(Point point){
      float x = (-start.x + start.y + 2*(point.y))/((point.y/point.x)-derivative);
      float y = derivative * x - start.x + start.y;
      return new Point(x,y);
  }
  
  boolean intersect(Point point){
      
      float x = (-start.x + start.y + 2*(point.y))/((point.y/point.x)-derivative);
      float y = derivative * x - start.x + start.y;
      println(x);
      println(y);
      if(y-start.y == derivative*(x-start.x)) return true;
      return false;
  }
}
