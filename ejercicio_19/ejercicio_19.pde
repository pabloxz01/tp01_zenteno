float yPos; 
float velocidad = 2; 
boolean moviendoHaciaAbajo = true; 


float elipseAncho = 80;
float elipseAlto = 80;

void setup() {
    size(400, 200);
   
    yPos = 0;
}

void draw() {
    background(0);


    stroke(255);

  
    if (moviendoHaciaAbajo) {
        line(0, yPos, width, yPos); 
        fill(255); 
        ellipse(width / 2, yPos + 40, elipseAncho, elipseAlto); 
    } else {
        fill(255); 
        ellipse(width / 2, yPos - 40, elipseAncho, elipseAlto);
        line(0, yPos, width, yPos);
    }

    
    if (moviendoHaciaAbajo) {
        yPos += velocidad; 
        if (yPos >= height) {
            
            moviendoHaciaAbajo = false;
        }
    } else {
        yPos -= velocidad; 
        if (yPos <= 0) {
      
            moviendoHaciaAbajo = true;
        }
    }
}
