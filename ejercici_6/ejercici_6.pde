void setup() {
    size(400, 200);
    int x=3;
    int y=4;
    int z=1;
    
    int r1  =y+z;
    
    println("El resultado de la expresión : " + r1);
    
    if (x>=r1){
      println("el valor de x es mayor o igual al de " + r1);
      
    }
    else{
      println("el valor de x = "+x+ " es menor al de  " +r1);
    }
}
