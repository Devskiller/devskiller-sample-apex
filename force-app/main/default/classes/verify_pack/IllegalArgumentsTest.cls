@isTest
private class IllegalArgumentsTest {

    @isTest
	private static void shouldThrowExceptionForDivisionByZero() {
		//given
        CustomNumber__c num1 = createCustomNumber(10);
        CustomNumber__c num2 = createCustomNumber(0);
		Calculator calc = new Calculator();
        Exception expectedException;

		try {
			//when
            calc.divide(num1, num2);
		} catch (System.MathException e) {
            expectedException = e;
        }
        
        //then
        System.assertNotEquals(null, expectedException);
    }
    
    private static CustomNumber__c createCustomNumber(Integer value) {
        CustomNumber__c num = new CustomNumber__c(
            Name = 'CustomNumber_' + value,
            Value__c = value
        );
        
        insert num;

        return num;
    }

}