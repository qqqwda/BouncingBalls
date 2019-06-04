PImage fondo;
void setup(){
  size(600,337);
  fondo = loadImage("Fondo.jpg");
  background(0);

}
void draw(){
  //image(fondo,0,0);
  for(int i = 0; i <1000;i++){
  float x = random(width);
  float y = random(height);
  color c = fondo.get(int(x),int(y));
  
  fill(c,25);
  noStroke();
  ellipse(x,y,8,8);
  }
}
