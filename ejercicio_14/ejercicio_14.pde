void setup() {
    size(400, 200);  
    float catetoA = 3.0;  
    float catetoB = 4.0;  

    
    float hipotenusa = sqrt(catetoA * catetoB + catetoB * catetoB);

   
    println("La hipotenusa del triángulo rectángulo es: " + hipotenusa);
}
