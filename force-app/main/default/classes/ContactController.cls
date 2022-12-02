public with sharing class ContactController {
    public static List<Contact> getListContact() {
        return [SELECT Id, Name FROM Contact LIMIT 5];
    }
}
