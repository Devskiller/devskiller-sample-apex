@isTest
private class CalculatorTest {

    @isTest
    private static void shouldAddTwoNumbers() {
        //given
        CustomNumber__c num1 = createCustomNumber(2);
        CustomNumber__c num2 = createCustomNumber(3);
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            Integer result = calc.add(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(5, result);
    }

    @isTest
    private static void shouldSubtractTwoNumbers() {
        //given
        CustomNumber__c num1 = createCustomNumber(5);
        CustomNumber__c num2 = createCustomNumber(3);
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            Integer result = calc.subtract(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(2, result);
    }

    @isTest
    private static void shouldMultiplyTwoNumbers() {
        //given
        CustomNumber__c num1 = createCustomNumber(2);
        CustomNumber__c num2 = createCustomNumber(3);
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            Integer result = calc.multiply(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(6, result);
    }

    @isTest
    private static void shouldDivideTwoNumbers() {
        //given
        CustomNumber__c num1 = createCustomNumber(6);
        CustomNumber__c num2 = createCustomNumber(3);
        Calculator calc = new Calculator();

        //when
        Test.startTest();
            Integer result = calc.divide(num1, num2);
        Test.stopTest();
        
        //then
        System.assertEquals(2, result);
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