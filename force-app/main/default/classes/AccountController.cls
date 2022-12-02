public with sharing class AccountController {
    @AuraEnabled(cacheable=true) 
    public static List<Account> getListAccount() {
        return [SELECT id, name, phone, rating FROM Account ORDER BY createdDate DESC LIMIT 5];
    } 
}