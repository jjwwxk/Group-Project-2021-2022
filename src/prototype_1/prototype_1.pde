int a=7;
int b=0;
int x=50;
int y=50;
int dir=0;

PImage[] images = new PImage[a];
ArrayList<Laser> lasers = new ArrayList<Laser>();


void setup() {
  size(400, 400);
  lasers = new ArrayList();

  
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
      dir=2;
      keyCode=TAB;
    } else if(keyCode==LEFT && x>=10){
      x=x-10;
      b=2;
      dir=4;
      keyCode=TAB;
    } else if(keyCode==UP && y>=10){
      y=y-10;
      b=6;
      dir=1;
      keyCode=TAB;
    } else if(keyCode==DOWN && y<=360){
      y=y+10;
      b=4;
      dir=3;
      keyCode=TAB;
    } 
  }
  
  for (int i =0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      //for (int j =0; j < sauces.size(); j++) {
      //  Enemysaucer sauce = sauces.get(j);
      //  if (sauces.size()<=0) {
      //    laser.gameMode = '2';
      //  }
      //}
      laser.display(); 
      laser.fire(dir);
      //for (int j =0; j < rocks.size(); j++) {
      //  Rock rock = rocks.get(j);      
      //  if (rock.laserIntersection(laser)) {
      //    lasers.remove(laser);
      //    rocks.remove(rock);
      //    score=score+100;
      //  }
      }
}

void mousePressed() {
  //if (s1.displayMode =='1') {
    lasers.add(new Laser(x-24, y-40));
    lasers.add(new Laser(x-10, y-40));
    //file[2].amp(-1);
    //file[2].play();
 // }
}
