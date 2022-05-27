int a=7;
int b=0;
int x=50;
int y=50;

PImage[] images = new PImage[a];

void setup() {
  size(400, 400);
  
 for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "mario"+i+".gif" );
  }
}

void draw() {
  background(256,256,0);
  frameRate(100);
  image(images[b], x, y);
 // b=int(random(images.length));
 
  if (key==CODED){
    if (keyCode==RIGHT && x<=360){
      x=x+10; 
      b=0;
      keyCode=TAB;
    } else if(keyCode==LEFT && x>=10){
      x=x-10;
      b=2;
      keyCode=TAB;
    } else if(keyCode==UP && y>=10){
      y=y-10;
      b=6;
      keyCode=TAB;
    } else if(keyCode==DOWN && y<=360){
      y=y+10;
      b=4;
      keyCode=TAB;
    } 
  }
  
  for (int i =0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      for (int j =0; j < sauces.size(); j++) {
        Enemysaucer sauce = sauces.get(j);
        if (sauces.size()<=0) {
          laser.gameMode = '2';
        }
      }
      laser.display(); 
      laser.fire();
      for (int j =0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);      
        if (rock.laserIntersection(laser)) {
          lasers.remove(laser);
          rocks.remove(rock);
          score=score+100;
        }
      }
}
