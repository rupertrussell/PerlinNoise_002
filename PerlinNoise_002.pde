// PerlinNoise_002 by Rupert Russell
// 18/09/2020

int noiseValue = 0;
int size = 160;
float noiseScale = 255;
float grey;

void setup() {
  size(4535, 5480);
  strokeWeight(3);
  noLoop();
}

void draw() {

  int seed = (int(random(255)));
  noiseSeed(seed);
  background(204);
  for (int xN = 0; xN < 27; xN++) {
    for (int yN = 0; yN < 33; yN++) {
      grey = noise(noiseValue) *noiseScale ;
      fill(grey * 1.5, grey * 0.3, grey *0.2);
      stroke(0);
      square(size * xN, size * yN, size);
      noiseValue++;
    }
  }
  save("noise3_" + seed + ".png");
  println("noise3_ " + seed + ".png");
  // exit();
}

void mouseClicked() {
  draw();
}
