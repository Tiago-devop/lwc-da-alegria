public class Conversor {
    
    public Void minutoEmSegundos(Decimal n1){
        Decimal result = n1 * 60;
        System.debug('A Conversão de '+n1+' minutos para segundos é '+ result);
    }
    public Void horaEmSegundos(Decimal n1){
        Decimal result = ((n1 * 60) * 60);
        System.debug('A Conversão de '+n1+' horas para segundos é '+ result);
    }
    public Void segundosEmMinutos(Decimal n1){
        Decimal result = n1 / 60;
        System.debug('A Conversão de '+n1+' segundos para minutos é '+ result);
    }
    public Void segundosEmHoras(Decimal n1){
        Decimal result = ((n1 / 60) / 60);
        
        System.debug('A Conversão de '+n1+' segundos para Horas é '+ result);
    }
    public Void horaEmMinuto(Decimal n1){
        Decimal result = n1 * 60;
        
        System.debug('A Conversão de '+n1+' hora para Minuto é '+ result);
    }
    public Void kilometroParaMilimetro(Decimal n1){
        Decimal result = ((((((n1 * 10)*10)*10)*10)*10)*10);
        
        System.debug('A Conversão de '+n1+' Kilometro para Milimetro é: '+ result);
    }
    public Void kilometroParaMetro(Decimal n1){
        Decimal result = (((n1 * 10)*10)*10);
        
        System.debug('A Conversão de '+n1+' Kilometro para Metro é: '+ result);
    }
    public Void calcularQuadrado(Decimal n1){
        Decimal result = n1 * n1;
        
        System.debug('O quadrado de '+n1+' é: '+ result);
    }
    public Void fahrenheitParaCelsius(Decimal n1){
        Decimal result = (n1 - 30) / 2;
        
        System.debug('Fahrenheit ('+n1+') para Celsius é: '+ result+'c°');
    }
    public Void celsiusParafahrenheit(Decimal n1){
        Decimal result = (n1 * 1.8) + 32;
        
        System.debug('Celsius ('+n1+') para Fahrenheit é: '+ result+'c°');
    }
}