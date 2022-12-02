public class LeadBO {
    
    public static void categorizaEmpresa(List<Lead> lstLeadDatrigger) {
        
        for(Lead itemLead: lstLeadDatrigger) {
            
            if(itemLead.NumberOfEmployees < 1000) {
                itemLead.TamanhoEmpresa__c = 'pequena';  
            }
            
        }
    }
    
    public static void criarTarefa(List<Lead> lstLeadDatrigger) {
        List<Task> lstTaskInsert = new List<Task>();
        for(Lead itemLead: lstLeadDatrigger) {
            if(itemLead.AnnualRevenue > 50000 ) {
                Task novaTarefa = new Task();
                novaTarefa.Subject = 'verificar se o cadastro está completo associado ao lead.';
                lstTaskInsert.add(novaTarefa); 
            }
        }
        if(lstTaskInsert.size() > 0) {
            insert lstTaskInsert;
        }
    }
}