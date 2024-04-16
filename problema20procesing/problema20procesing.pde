void setup() {
  size(440, 420);
  noLoop();
}

void draw() {
  background(255);
  
  int ancho = 40;
  int alto = 20;
  int distancia = 20;
  
  int rectaX = (ancho - distancia) / (ancho + distancia);
  int rectaY = (alto - distancia) / (alto + distancia);
  
  for (int i = 0; i < rectaX; i++) {
    for (int j = 0; j < rectaY; j++) {
      int x = i * (ancho+ distancia) + distancia;
      int y = j * (alto+ distancia) + distancia;
      fill(255, 0, 0);
      rect(x, y, ancho, alto);
    }
  }
}
