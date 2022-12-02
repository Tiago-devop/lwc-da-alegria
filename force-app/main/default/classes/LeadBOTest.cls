@isTest public class LeadBOTest {
    
    @isTest public static void ganhosAnuaisNull() {
        Lead itemLead 	= new Lead();
        itemLead.LastName = 'LaMierda';
        itemLead.Company = 'MARAMURA';
        itemLead.AnnualRevenue = 1;
        insert itemLead;
        
        Lead casoRetornado = [SELECT Id, AnnualRevenue FROM Lead];
        List<Task> taskCasoRetornado = [SELECT Id, Subject FROM Task WHERE WhoId =: itemLead.Id];
        
        System.assert( casoRetornado.AnnualRevenue > 0 , 'Empresa sem valores');
        System.assert( taskCasoRetornado.size() > 0 , 'Não Tem Task');
    }
}