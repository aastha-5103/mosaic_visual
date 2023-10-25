import processing.video.*;
Capture video;

void setup() {
  fullScreen();
  video = new Capture(this, width, height, 30);  
  video.start(); 
  noStroke();
  background(255);
}
void draw() { 
      if(video.available()){    
        video.read();  
      }
      /*int a = int(random(3,20));
      int b = int(random(4,25));
      int c = int(random(5,20));
      int d = int(random(5,25));
        
      int x = int(random(video.width));
      int y = int(random(video.height));
      int x1 = int(random(video.width));
      int y1 = int(random(video.height));
      int x2 = int(random(video.width));
      int y2 = int(random(video.height));
      int x3 = int(random(video.width));
      int y3 = int(random(video.height));
      
      int o=int(random(100,200));
      color pix = video.get(x, y);
      fill(pix, o);
      rect(x,y,a,a);
      ellipse(x1,y1,b,b);
      rect(x2,y2,c,c);      
      ellipse(x3,y3,d,d);*/
      
      for(int i=0; i<500; i++) {
        loadPix();
      }

}

void loadPix() {
  int a = int(random(5,15));
  int b = int(random(5,15));
  
  int x = int(random(video.width));
  int y = int(random(video.height));
  int x1 = int(random(video.width));
  int y1 = int(random(video.height));
  
  int o=int(random(50,255));
  color pix = video.get(x, y);
  fill(pix, o);
  rect(x,y,a,a);
  ellipse(x1,y1,b,b);
}
