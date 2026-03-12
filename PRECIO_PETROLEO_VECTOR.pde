float[] precios = { 
  64.46, 62.65, 62.75, 63.10, 63.50, 63.57, 62.33, 65.19, 66.43, 66.39, 
  66.31, 66.00, 65.80, 65.63, 65.42, 65.21, 67.02, 68.50, 
  71.23, 74.56, 74.66, 78.00, 81.01, 85.50, 90.90, 93.00, 94.77, 83.45, 87.25 
};

void setup() {
  size(1000, 600);
  background(255);
  noLoop();
}

void draw() {
  stroke(0);
  line(70, 50, 70, height-100);

  textSize(12);
  textAlign(RIGHT, CENTER);

  for (int p = 50; p <= 100; p += 10) {
    float y = map(p, 50, 100, height-100, 50);
    stroke(200);
    line(70, y, width-40, y);
    stroke(0);
    fill(0);
    text(p, 60, y);
  }

  textSize(10);
  textAlign(CENTER);
  for (int i=0; i<precios.length; i++) {
    float x = map(i, 0, precios.length-1, 70, width-40);
    int dia = 11+i;
    String fecha;
    if (dia<=28) {
      fecha = nf(dia, 2)+"/02";
    } else {
      fecha = nf(dia-28, 2)+"/03";
    }
    fill(0);
    text(fecha, x, height-70);
  }

  stroke(0, 102, 204);
  noFill();
  beginShape();
  for (int i=0; i<precios.length; i++) {
    float x = map(i, 0, precios.length-1, 70, width-40);
    float y = map(precios[i], 50, 100, height-100, 50);
    vertex(x, y);
  }
  endShape();

  for (int i=0; i<precios.length; i++) {
    float x = map(i, 0, precios.length-1, 70, width-40);
    float y = map(precios[i], 50, 100, height-100, 50);
    fill(0, 102, 204);
    noStroke();
    ellipse(x, y, 6, 6);
  }

  fill(0);
  textSize(18);
  textAlign(CENTER);
  text("Precio del Petroleo WTI", width/2, 30);
}
