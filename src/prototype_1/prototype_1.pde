int a=1;
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
  background(0);
  image(images[b], x, y);
  b=int(random(images.length));
  if (key==CODED){
    if (keyCode==RIGHT){
      x=x+10; 
      keyCode=TAB;
    } else if(keyCode==LEFT){
      x=x-10;
      keyCode=TAB;
    } else if(keyCode==UP){
      y=y-10;
      keyCode=TAB;
    } else if(keyCode==DOWN){
      y=y+10;
      keyCode=TAB;
    } 
  }
}
