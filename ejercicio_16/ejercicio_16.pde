void setup() {
    size(400, 200);
 
    float fahrenheit = 68.0;

    float celsius = convertirFahrenheitACelsius(fahrenheit);
   
    println(fahrenheit + " grados Fahrenheit es igual a " + celsius + " grados Celsius.");
}

float convertirFahrenheitACelsius(float fahrenheit) {
    
    return (fahrenheit - 32) * (5.0 / 9.0);
}
