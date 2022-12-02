public class Doguinho {
    public String nome, raca, cor;
    public Decimal peso;
    public Integer idade;
    // Functions
    public void latir() {
        System.debug('RUF RUF RUF!!!');
    } 
    public void dormir() {
        System.debug('ZZZzzzz...!!!');
    } 
    public void comer() {
        System.debug('kwrkwrkwr!!!');
    } 
    public void cagar() {
        System.debug('broiickkkk!!!');
    }
    public void apresentar() {
        System.debug('Oi meu nome é '+nome+' minha Raça é '+raca+' minha cor é '+cor+' eu peso '+peso+' eu tenho '+idade+' anos.');
    } 
}