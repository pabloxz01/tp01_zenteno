float a = 1.0; 
float b = -3.0; 
float c = 2.0; 
void setup() {
    size(400, 200);
    
    
    float discriminante = calcularDiscriminante(a, b, c);
    
    
    switch (compararDiscriminante(discriminante)) {
        case 1:
            
            calcularRaicesReales(a, b, c, discriminante);
            break;
        case 0:
           
            calcularRaizDoble(a, b);
            break;
        case -1:
           
            calcularRaicesComplejas(a, b, c, discriminante);
            break;
    }
}


float calcularDiscriminante(float a, float b, float c) {
    return b * b - 4 * a * c;
}


int compararDiscriminante(float discriminante) {
    if (discriminante > 0) {
        return 1; 
    } else if (discriminante == 0) {
        return 0; 
    } else {
        return -1; 
    }
}


void calcularRaicesReales(float a, float b, float c, float discriminante) {
    float raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    float raiz2 = (-b - sqrt(discriminante)) / (2 * a);
    println("Dos raíces reales distintas:");
    println("Raíz 1: " + raiz1);
    println("Raíz 2: " + raiz2);
}


void calcularRaizDoble(float a, float b) {
    float raiz = -b / (2 * a);
    println("Una raíz real doble:");
    println("Raíz: " + raiz);
}


void calcularRaicesComplejas(float a, float b, float c, float discriminante) {
    float parteReal = -b / (2 * a);
    float parteImaginaria = sqrt(-discriminante) / (2 * a);
    println("Dos raíces complejas:");
    println("Raíz 1: " + parteReal + " + " + parteImaginaria + "i");
    println("Raíz 2: " + parteReal + " - " + parteImaginaria + "i");
}
