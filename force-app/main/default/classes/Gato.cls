public class Gato {
	public String nome,raca;
    public Decimal peso;
    
    public void miar() {
        System.debug(nome+' disse: MIAAAAAUU.');
    }
     public void andar() {
        System.debug(nome+' está andando.');
    }
    public void ronronar() {
        System.debug(nome+' está ronronando.');
    }
    public void infoGato() {
        System.debug('nome: '+nome+' peso: '+peso+' raça: '+raca);
    }
}