@isTest
private class RandomNumbersTest {

	@isTest
	private static void shouldAddTwoRandomNumbers() {
        //given
        CustomNumber__c num1 = createRandomCustomNumber();
        CustomNumber__c num2 = createRandomCustomNumber();        
        Integer result;
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            result = calc.add(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(Integer.valueof(num1.Value__c + num2.Value__c), result);
	}


	@isTest
	private static void shouldSubtractTwoRandomNumbers() {
        //given
        CustomNumber__c num1 = createRandomCustomNumber();
        CustomNumber__c num2 = createRandomCustomNumber();        
        Integer result;
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            result = calc.subtract(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(Integer.valueof(num1.Value__c - num2.Value__c), result);
	}

	@isTest
	private static void shouldMultiplyTwoRandomNumbers() {
        //given
        CustomNumber__c num1 = createRandomCustomNumber();
        CustomNumber__c num2 = createRandomCustomNumber();        
        Integer result;
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            result = calc.multiply(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(Integer.valueof(num1.Value__c * num2.Value__c), result);
	}

	@isTest
	private static void shouldDivideTwoRandomNumbers() {
		//given
        CustomNumber__c num1 = createRandomCustomNumber();
        CustomNumber__c num2 = createRandomCustomNumber();        
        Integer result;
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            result = calc.divide(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(Integer.valueof(num1.Value__c / num2.Value__c), result);
    }
    
    private static CustomNumber__c createRandomCustomNumber() {
        Integer randomNumber = Integer.valueof((Math.random() * 100)) + 1;
        CustomNumber__c num = new CustomNumber__c(
            Name = 'CustomNumber_' + randomNumber,
            Value__c = randomNumber
        );
        
        insert num;

        return num;
    }

}