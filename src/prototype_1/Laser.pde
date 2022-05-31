class Laser {
  int w, h, x, y, speed, rad;
  PImage laz;
  char gameMode;
  Laser(int x, int y) {
    rad = 4;
    this.x=x;
    this.y=y;
    laz = loadImage("Musicnote2.png");
    y=0;
    w=10;
    h=10;
    speed=1;
    gameMode='1';
  }
  void fire(int dir2) {
    if (dir2==1){
      y-=speed;
    } else if (dir2==2){
      x+=speed;
    }else if (dir2==3){
      y+=speed;
    } else if (dir2==4){
      x-=speed;
    }
  }
  boolean reachTop() {
    if (y<-20) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    if (gameMode == '1') {
      image(laz, x, y, w, h);
    }
    if (gameMode =='2') {
      rad=rad*int(1.5);
      
      image(laz, x-16, y-30, w*2, h*2);
    }
  }
}
