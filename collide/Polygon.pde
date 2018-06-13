class Polygon{

  Point center;
  float slant;
  ArrayList<Point> pointList = new ArrayList();
  PShape shape;
  
  Polygon(Point center, float slant, float _height, float _width, int sides){
    center = new Point(center.x,center.y);
    this.slant = slant;
    
    shape = createShape();
    shape.beginShape();
    shape.noFill();
    shape.stroke(255);
    for(int i = 0; i <= sides; i++){
      pointList.add(new Point(center.x + _width * cos(radians(360/sides * i+slant)),center.y + _height * sin(radians(360/sides * i+slant))));
      shape.vertex(pointList.get(i).x,pointList.get(i).y);
    }    
    
  }
  
  void draw(){
    shape(shape);
  }
  
  boolean rayCast(Point point){
    
  }
    
}
