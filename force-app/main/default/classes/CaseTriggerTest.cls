@isTest public class CaseTriggerTest {
    
    @IsTest
    public static void cenarioNull(){
        // insiro um registro
        // Status
        // Origem do Caso
        
        Case itemCase 	= new Case();
        itemCase.Status = 'New';
        itemCase.Origin = 'Phone';
        insert itemCase;
        
        // PEGAR O REGISTRO VIA QUERY
        
        Case casoRetornado = [SELECT Id, Type FROM Case];
        
        // |DEBUG|casoRetornado:Case:{Id=5008Z00001ywaInQAI, Type=Electronic}
        
        System.debug('casoRetornado:'+casoRetornado);
        
        // verifico se o registro está com o valor esperado
        System.assert( casoRetornado.Type == 'Other' , 'o itemCase não ta igual a Other');
        
        // @TestSetup
    }
    
    @IsTest
    public static void cenarioComValor(){
        
    }
}