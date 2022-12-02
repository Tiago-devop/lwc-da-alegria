trigger DespesaTrigger on Despesa__c (before insert, before update) {
    for(Despesa__c itemDes: Trigger.new) {
        if(itemDes.Valor__c > 200) {
            itemDes.Valor__c.addError('Valor não pode ser maior que 200');
        }
    }
}