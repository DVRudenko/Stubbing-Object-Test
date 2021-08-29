public with sharing class ObjectManager {
    // Method to stub
    public List<Account> getAccounts(){
        return [SELECT Id, Name FROM Account];
    }
}
