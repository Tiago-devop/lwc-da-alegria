trigger OpportunityTrigger on Opportunity (before update, before insert) {
    List<Opportunity> ListaOpportunidade = [SELECT Id, AccountId, Account.Vip__c FROM Opportunity];
    Map<Id, Boolean> mapFromListaOpp = new Map<Id, Boolean>();
    Account AccObj = new Account();
    
    for(Opportunity itemOpp : ListaOpportunidade ) {
        mapFromListaOpp.put(itemOpp.Id, itemOpp.Account.Vip__c);
    }
    
    for(Opportunity itemOpp: Trigger.new) {
        
        if(itemOpp.Amount >= 50000 && itemOpp.StageName == 'Closed won') {
            Task novaTarefa = new Task();
            novaTarefa.Subject = 'Parabenizar a empresa pela nova aquisição.'; 
            insert novaTarefa; 
        }
        // if(mapFromListaOpp.get(itemOpp.Id)) {
        //     itemOpp.Amount = itemOpp.Amount * 0.9;
        // }
        if(itemOpp.Amount >= 100000 && itemOpp.Amount <= 200000) {
            itemOpp.StageName = 'value proposition';
        } else if(itemOpp.Amount > 500000) {
            itemOpp.StageName = 'negotiation/review';
        } else {
            itemOpp.StageName = 'Prospecting';
        } 
    } 
}