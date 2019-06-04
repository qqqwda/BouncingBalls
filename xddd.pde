import processing.sound.*;
Particle[] p = new Particle[80];
void setup(){  
background(6,68,86);
  size(1280,720);
  for(int i=0; i<80; i++){
    p[i] = new Particle();
  }
  
  
}
void draw(){
background(6,68,86);
  for(int i=0; i<p.length; i++){
    p[i].show();
    p[i].bounce();
    p[i].move();
    for(int j=0; j<p.length; j++){
      p[i].unir(p[j]);
    }
  }

}
