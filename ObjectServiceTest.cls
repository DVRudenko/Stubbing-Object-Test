@isTest 
public class ObjectServiceTest {   

    @isTest 
    private static void testObjectService_Low() {
        // Use the mocked object in the test.
        System.assertEquals('Low', createTestMock(9));
    }

    @isTest 
    private static void testObjectService_Medium() {
        // Use the mocked object in the test.
        System.assertEquals('Medium', createTestMock(20));
    }

    @isTest 
    private static void testObjectService_High() {
        // Use the mocked object in the test.
        System.assertEquals('High', createTestMock(35));
    }

    private static String createTestMock(Integer amount) {
        // Create a mock version of the ObjectManager class.
        ObjectManager mockMethod = (ObjectManager) Test.createStub(ObjectManager.class, new MockProvider(amount));
        return new ObjectService().needToTestMethod(mockMethod);
    }
}
