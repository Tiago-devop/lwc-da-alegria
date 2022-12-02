trigger CaseTrigger on Case (before insert) {  
    for(Case itemCase : Trigger.new) {
        if(itemCase.Type == null) {
            itemCase.Type = 'OTHER';     
        }
    }
}