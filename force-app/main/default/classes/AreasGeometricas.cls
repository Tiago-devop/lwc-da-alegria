public class AreasGeometricas {
	public void quadrado(Decimal a,Decimal b){
        Decimal resultado = a*b;
        System.debug('A área do quadrado é :'+resultado);
    }
    
    public void retangulo(Decimal a,Decimal b){
        Decimal resultado = a*b;
        System.debug('A área do retângulo é :'+resultado);
    }
    public void triangulo(Decimal a,Decimal b){
        Decimal resultado = a*b/2;
        System.debug('A área do triângulo é :'+resultado);
    }
    public void paralelograma(Decimal a,Decimal b){
        Decimal resultado = a*b;
        System.debug('A área do paralelograma é :'+resultado);
    }
    public void trapezio(Decimal a,Decimal b,Decimal c){
        Decimal resultado = (a+b)*c/2;
        System.debug('A área do trapézio é :'+resultado);
    }
}