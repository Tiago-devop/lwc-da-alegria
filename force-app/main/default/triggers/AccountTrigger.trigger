trigger AccountTrigger on Account (before insert, before update) {
    
    // Validação se o telefone estiver em branco
    
    // $!Record > Registro que disparou o flow
    // Trigger.new > Registro que disparou a trigger
    // Trigger.new é uma Lista
    // Trigger.new do tipo List<Account>
    for( Account itemAcc : Trigger.new){
        // Pegara todos os registros que acionaram a trigger
        if(itemAcc.phone == null){
            // Quero dar um erro
            itemAcc.Phone.addError('Por favor lindeza, preencha o telefone');
        }
        if(itemAcc.CNPJ__c == null) {
            itemAcc.CNPJ__c.addError('Por favor, Preencha o CNPJ');
        }
        if(itemAcc.industry == 'Technology' || itemAcc.industry == 'Finance') {
            itemAcc.rating = 'Hot';
        }
        
        if(itemAcc.AnnualRevenue == null || itemAcc.AnnualRevenue < 0) {
            itemAcc.AnnualRevenue.addError('Não permitir que a receita anual seja nula ou negativa.');
        } else if (itemAcc.AnnualRevenue < 100000) {
            itemAcc.Rating = 'cold';
        } else if (itemAcc.AnnualRevenue >= 100000 && itemAcc.AnnualRevenue < 500000) {
            itemAcc.Rating = 'warm';
        } else if (itemAcc.AnnualRevenue >= 500000) {
            itemAcc.rating = 'hot';
        }
      
    }  
    // Pegar qual registro / quais registros dispararam a trigger
    // Verificar se o telefone do(s) registro(s) estão em branco
    // Caso sim, mostro um erro
    // Caso não, faço nada, só olho
}