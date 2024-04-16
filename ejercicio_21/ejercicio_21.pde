
float xInicial = 0; 
float yInicial = 0; 
float anchoEscalon = 50; 
float altoEscalon = 50; 


float pelotaX = xInicial; 
float pelotaY = yInicial; 
float radioPelota = 10; 
float velocidadPelota = 1.5; 

void setup() {
    size(500, 500);
}

void draw() {
    background(255); 

   
    float x = xInicial;
    float y = yInicial;

    
    while (x <= width && y <= height) {
     
        stroke(0); 
        line(x, y, x + anchoEscalon, y);     
        line(x + anchoEscalon, y, x + anchoEscalon, y + altoEscalon);      
        stroke(255, 0, 0);
        point(x, y); 
        point(x + anchoEscalon, y + altoEscalon); 

        x += anchoEscalon;
        y += altoEscalon;
    }

    // Dibujar la pelota en color rojo
    fill(255, 0, 0);
    ellipse(pelotaX, pelotaY, radioPelota * 2, radioPelota * 2);

 
    pelotaY += velocidadPelota * altoEscalon / anchoEscalon;
    pelotaX += velocidadPelota;

   
    if (pelotaX > width || pelotaY > height) {
        pelotaX = xInicial;
        pelotaY = yInicial;
    }
}
