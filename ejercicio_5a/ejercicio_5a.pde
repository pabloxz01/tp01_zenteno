void setup() {
    size(400, 200);


    float A = 4;
    float B = 5;
    float C = 1;

   
    float resultado = B * A - (pow(B, 2) / (4 * C));

    
    println("El resultado de la expresión B * A - B ^ 2 / (4 * C) es: " + resultado);
}
