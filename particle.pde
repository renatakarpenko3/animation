PVector[] locs;
float []c;
PVector []speeds;
int num = 250;

void setup() {
  size(600, 500);
  noStroke();
  fill(50);
  
  locs = new PVector[num];
  c = new float[num];
  speeds = new PVector[num];
  
  for (int i = 0; i < c.length; i++){
    c[i] = random(255);
    locs[i] = new PVector(random(width), random(height));
    //y[i] = random(height);
    //x[i] = random(width);
    speeds[i] = new PVector(random(-1, 2), random(-1, 2));
    //speedx[i] = random(-1, 2);
    //speedy[i] = random(-1, 2);
  }

}


void draw() { 
  background(160);  
  display();
  update();
}

void update() {
   for (int i = 0; i < c.length; i++) {
      locs[i].add(speeds[i]);
      //y[i] += speedy[i];
      //x[i] += speedx[i];
}
}

void display() {
  for (int i = 0; i < c.length; i++) {
      noStroke();
      fill(c[i]);
      ellipse(locs[i].x, locs[i].y, 15, 15);
}}

void mousePressed(){
  background(160);
  for (int i = 0; i < c.length; i++) {
     locs[i].x = mouseX;
     locs[i].y = mouseY;

  }
}

void keyPressed(){
  for (int i = 0; i< c.length; i ++){
      locs[i].x -=3;
      locs[i].y -=3;
      c[i] +=50;
  }
}
