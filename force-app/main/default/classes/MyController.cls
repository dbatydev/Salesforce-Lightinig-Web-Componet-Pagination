public with sharing class MyController {
    @AuraEnabled(cacheable= true)
    public static List<Contact> getContacts(){
        return [SELECT Id, Name FROM Contact];
    }

    @AuraEnabled(cacheable= true)
    public static List<Account> getAccounts(){
        return [SELECT Id, Name FROM Account];
    }
}
