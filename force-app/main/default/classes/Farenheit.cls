public class Farenheit {    
//Pega a temperatura em Fahrenheit e vai retornar ela em Celsius
    public static Decimal FahrenheitToCelsius(Decimal fh){
        decimal cs =(fh - 32) * 5/9;
        return cs.setscale(2);
    }        
}