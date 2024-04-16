void setup() {
    size(400, 200);
    
    float num1 = 12.5;  
    float num2 = 4.0;   

    float suma = sumar(num1, num2);
    println("Suma: " + suma);

    float resta = restar(num1, num2);
    println("Resta: " + resta);

    float multiplicacion = multiplicar(num1, num2);
    println("Multiplicación: " + multiplicacion);

    float division = dividir(num1, num2);
    println("División: " + division);
}
