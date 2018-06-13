class staightSide {
  Point start;
  Point end;
  Point center;
  float derivative;
  
  staightSide(Point start, Point end, Point center){
    this.start = start;
    this.end = end;
    this.center = center;
    derivative = slope();
  }
  
  
  void draw(){
    stroke(#FFFFFF);
    strokeWeight(2);
    line(start.x,start.y, end.x, end.y);
    ellipse(center.x,center.y,5,5);
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
}
