Spaceship bob = new Spaceship();
Stars[] nightSky = new Stars[100];
ArrayList <Asteroids> rocks = new ArrayList <Asteroids>();
public void setup() 
{
  background(0);
  size(500,500);
  //creates stars 
  for(int i = 0;i < nightSky.length; i++){
    nightSky[i] = new Stars();
  }
  //creates asteroids
  for(int i = 0; i < 20; i++){
    rocks.add(new Asteroids()); 
  }
}
public void draw() {
  background(0);
  //draws stars
  for(int i = 0; i < nightSky.length; i++){
  nightSky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
  rocks.get(i).show(); 
  rocks.get(i).move();
  rocks.get(i).turn((int)(Math.random()*7));
  }
  //draws spaceship
  bob.show();
  bob.move();
  //draw asteroids
  
}

public void keyPressed(){
  if(key == 'h') //hyperspace
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.hyperspaceX(Math.random()*500);
    bob.hyperspaceY(Math.random()*500);
    bob.direction(Math.random()*500);
  }
  if(key == 'w') //accelerate
  {
    bob.accelerate(0.5);
  }
  if(key == 'a') //turn left
  {
    bob.turn(-15);
  }
  if(key == 'd') //turn right
  {
    bob.turn(15);
  }
}
