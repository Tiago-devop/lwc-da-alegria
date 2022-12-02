trigger LeadTrigger on Lead (before insert, before update, after insert, after update) {
    
    
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LeadBO.categorizaEmpresa(Trigger.new);
        }else if(Trigger.IsUpdate){
            LeadBO.categorizaEmpresa(Trigger.new);
        }
    } else if (Trigger.isAfter){
        if(Trigger.isInsert) {
            LeadBO.criarTarefa(Trigger.new);
        } else if(Trigger.isUpdate){
            
        }
    }
}