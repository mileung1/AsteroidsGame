public class Asteroids extends Floater{
  public Asteroids(){
    corners = 12;
    int speed1 = (int)(Math.random() * 4) - 2;
    int speed2 = (int)(Math.random() * 3) - 1;
    int direction = (int)Math.random() * 360;
    xCorners = new int[corners];
    yCorners = new int[corners];
    int[] xS = {2,5,10,8,10,3,-6,-7,-6,-9,-11,-8};
    int[] yS = {16,7,7,3,-10,-13,-10,-11,-3,0,4,18};
    xCorners = xS;
    yCorners = yS;
    myColor = 128;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500; 
    myXspeed = speed1;
    myYspeed = speed2;
    myPointDirection = direction;
  }
}
