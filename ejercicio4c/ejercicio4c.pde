void setup() {
    size(400, 200);
  
    
    float x=4;
    float y=2;
   
  
    float resultado1 = pow(x,2)+pow(y,2);
    float resultado2=  pow(resultado1,(1/2));
  
    println("El resultado de la expresión (x ^ 2 + y ^ 2) ^ (1 / 2) es : " + resultado2);
}
