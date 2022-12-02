public with sharing class OpportunityController {
    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getListOpportunity() {
        return [SELECT id, Name, Amount, CreatedDate, StageName FROM Opportunity WHERE StageName = 'Negotiation/Review' LIMIT 5];
    }
}
