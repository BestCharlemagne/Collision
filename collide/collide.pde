ArrayList<Polygon> polygonList = new ArrayList();
ArrayList<PShape> pShapes = new ArrayList();

void setup(){
  size(500,500);
  polygonList.add(new Polygon(new Point(0,0),15,20,20,5));
}

void draw(){
  background(0);
  translate(width/2,height/2);
 for(Polygon polygon: polygonList){
  polygon.draw(); 
 }
 for(PShape shape: pShapes){
    shape(shape); 
 }
}

void mouseClicked(){
  PShape shape = createShape(ELLIPSE,mouseX-width/2,mouseY-height/2,5,5);
  pShapes.add(shape);
  println(mouseX-width/2);
}
