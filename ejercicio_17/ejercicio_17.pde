float linkX;
float linkY;
float tesoroX = 300;
float tesoroY = 150;

float radioLink = 20;
float tamañoTesoro = 30;

void setup() {
    size(400, 200);
    linkX = width / 2;
    linkY = height / 2;
}

void draw() {
    background(255);
    linkX = mouseX;
    linkY = mouseY;
    fill(0, 0, 255);
    ellipse(linkX, linkY, radioLink * 2, radioLink * 2);
    fill(255, 215, 0);
    rect(tesoroX, tesoroY, tamañoTesoro, tamañoTesoro);
    float distancia = calcularDistancia(linkX, linkY, tesoroX, tesoroY);
    float umbral = 30;

    if (distancia <= umbral) {
        fill(255);
        rect(tesoroX, tesoroY, tamañoTesoro, tamañoTesoro);
    }
}

float calcularDistancia(float x1, float y1, float x2, float y2) {
    float catetoX = x2 - x1;
    float catetoY = y2 - y1;
    return sqrt(catetoX * catetoX + catetoY * catetoY);
}
