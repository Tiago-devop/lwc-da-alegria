public class Calculadora {
    
    public static Integer somar(Integer n1, Integer n2){
        Integer result = n1 + n2;
        System.debug('O resultado da soma entre '+n1+' e '+n2+ ' é: '+ result);
        return result;
    }
    public static Integer subtrair(Integer n1, Integer n2){
        Integer result = n1 - n2;
        System.debug('O resultado da subtração é: '+ result);
        return result;
    }
    public static Integer multiplicar(Integer n1, Integer n2){
        Integer result = n1 * n2;
        System.debug('O resultado da multiplicação é: '+ result);
        return result;
    }
    public static Decimal dividir(Decimal n1, Decimal n2){
        Decimal resN2 = n2 == 0 ? 1 : n2 ;
        Decimal result = n1 / resN2;
        if(result == n1) {
            System.debug('Não é possivel dividir por zero ou um');
        }
        System.debug('O resultado da divisão é: '+ result);
        return result;
    }
}