public class Pizzaria {
    
	public void pedirPizza(String pizza){
        if(pizza == 'Calabresa') {
           System.debug('Pizza de Calabresa, valor R$ 45,00'); 
        } else if(pizza == '4 Queijos') {
            System.debug('Pizza 4 Queijos, valor R$ 50,00');
        } else if(pizza == 'Maria Bonita') {
            System.debug('Pizza Maria Bonita, R$ 60,00');
        } else {
            System.debug('Não possuímos essa Pizza.');
        }
        
    }
}