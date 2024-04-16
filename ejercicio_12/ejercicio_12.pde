import controlP5.*;

ControlP5 cp5;
String nombre = "";  
void setup() {
    size(400, 200); 
    cp5 = new ControlP5(this);

    cp5.addTextfield("nombre")
        .setPosition(50, 50) 
        .setSize(200, 30)    
        .setLabel("Ingrese su nombre:");

   
    cp5.addButton("confirmar")
        .setPosition(260, 50) 
        .setSize(80, 30)     
        .setLabel("Confirmar");
}

void draw() {
    
}


void confirmar() {
   
    nombre = cp5.get(Textfield.class, "nombre").getText();
    println("¡Hola, " + nombre + "! Bienvenido(a).");
}
