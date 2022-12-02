public class OpportunityC {
    @AuraEnabled
    public static List<Opportunity> getOpportunitiesNR() {
        return [SELECT Name, Amount, stageName, closeDate from Opportunity WHERE stageName = 'Negotiation/Review'];
    }
}