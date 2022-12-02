@isTest
public class CalculadoraTest {
    @isTest public static void testarMetodoSomar() {
        Integer resultado = Calculadora.somar(5,7);
        System.assert(resultado == 12, 'Resultado fora do esperado');
    }
    @isTest public static void testarMetodosubtrair() {
        Integer resultado = Calculadora.subtrair(5, 2);
        System.assert(resultado == 3, 'Resultado fora do esperado');
    }
     @isTest public static void testarMetodoMultiplicar() {
        Integer resultado = Calculadora.multiplicar(2, 5);
        System.assert(resultado == 10, 'Resultado fora do esperado');
    }
    @isTest public static void testarMetododividir() {
        Decimal resultado = Calculadora.dividir(10, 2);
        System.assert(resultado == 5, 'Resultado fora do esperado');
    }
    
}