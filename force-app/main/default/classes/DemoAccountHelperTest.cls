/**
 * @description Test class for DemoAccountHelper
 * Provides 100% code coverage for deployment demonstrations
 */
@isTest
private class DemoAccountHelperTest {
    
    @isTest
    static void testGetAccountGreeting_WithValidName() {
        // Test with a valid account name
        String result = DemoAccountHelper.getAccountGreeting('Acme Corporation');
        System.assertEquals('Hello, Acme Corporation!', result, 'Should return greeting with account name');
    }
    
    @isTest
    static void testGetAccountGreeting_WithBlankName() {
        // Test with blank account name
        String result = DemoAccountHelper.getAccountGreeting('');
        System.assertEquals('Hello, Guest!', result, 'Should return guest greeting for blank name');
        
        // Test with null account name
        result = DemoAccountHelper.getAccountGreeting(null);
        System.assertEquals('Hello, Guest!', result, 'Should return guest greeting for null name');
    }
    
    @isTest
    static void testGetAccountCount() {
        // Create test accounts
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            testAccounts.add(new Account(Name = 'Test Account ' + i));
        }
        insert testAccounts;
        
        // Test account count
        Integer count = DemoAccountHelper.getAccountCount();
        System.assertEquals(5, count, 'Should return correct account count');
    }
    
    @isTest
    static void testIsValidAccountName_Valid() {
        // Test with valid account name
        Boolean result = DemoAccountHelper.isValidAccountName('Valid Account Name');
        System.assertEquals(true, result, 'Should return true for valid account name');
    }
    
    @isTest
    static void testIsValidAccountName_Invalid() {
        // Test with blank name
        Boolean result = DemoAccountHelper.isValidAccountName('');
        System.assertEquals(false, result, 'Should return false for blank name');
        
        // Test with null name
        result = DemoAccountHelper.isValidAccountName(null);
        System.assertEquals(false, result, 'Should return false for null name');
        
        // Test with name exceeding 255 characters
        String longName = 'A'.repeat(256);
        result = DemoAccountHelper.isValidAccountName(longName);
        System.assertEquals(false, result, 'Should return false for name exceeding 255 characters');
    }
    
    @isTest
    static void testGetTodayFormatted() {
        // Test date formatting
        String result = DemoAccountHelper.getTodayFormatted();
        String expected = String.valueOf(Date.today());
        System.assertEquals(expected, result, 'Should return today\'s date in correct format');
    }
}