public class Particle{
  PVector position;
  PVector velocity;
  float radius,m;
  Particle(){
    velocity = new PVector();
    position = new PVector();
    velocity.x = random(-1,1);
    velocity.y = random(-1,1);
    position.x = random(20,width);
    position.y = random(20,height);
    radius = 10;
    m = radius*.1;
  }
  

  
  void move(){
    position.add(velocity);
  }
  void bounce(){
  
    if(position.x > width || position.x < 0){
      velocity.x = velocity.x*-1;
    }
    if(position.y > height || position.y < 0){
      velocity.y = velocity.y*-1;
    }
  }
  void show(){
    ellipse(position.x,position.y,radius,radius);
  }
  void unir(Particle p){
    stroke(255);
    
    if(dist(p.position.x,p.position.y, this.position.x,this.position.y)<100){
      float xd=dist(p.position.x,p.position.y, this.position.x,this.position.y);
      xd= 11-(xd/10);
      strokeWeight(xd*.15);
    line(this.position.x,this.position.y, p.position.x,p.position.y);
    }
  }
}
