@isTest
public class MockProvider implements System.StubProvider {
   Integer amount;

   public MockProvider(Integer amount){
      this.amount = amount;
   }
    public Object handleMethodCall(Object stubbedObject, String stubbedMethodName, 
        Type returnType, List<Type> listOfParamTypes, List<String> listOfParamNames, 
        List<Object> listOfArgs) {

        List<Account> accs = new List<Account>();    
        for (Integer i=0; i<amount;i++)    {
            accs.add(new Account(Name = 'name' + i));
        }
        return accs;
     }
}
