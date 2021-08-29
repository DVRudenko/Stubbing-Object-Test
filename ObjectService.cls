public with sharing class ObjectService {
    // Method to test 
    public String needToTestMethod(ObjectManager obj){
        Integer amount = obj.getAccounts().size();
        System.debug('needToTestMethod = ' + amount);
        if (amount<10){
            return 'Low';
        } else if (amount>=10 && amount<30){
            return 'Medium';
        }
        return 'High';
    }
}
