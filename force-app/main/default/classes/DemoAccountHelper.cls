/**
 * @description Simple helper class for demonstration purposes
 * This class provides basic Account-related utility methods
 */
public with sharing class DemoAccountHelper {
    
    /**
     * @description Returns a greeting message with the account name
     * @param accountName The name of the account
     * @return String A formatted greeting message
     */
    public static String getAccountGreeting(String accountName) {
        if (String.isBlank(accountName)) {
            return 'Hello, Guest!';
        }
        return 'Hello, ' + accountName + '!';
    }
    
    /**
     * @description Counts the number of accounts in the org
     * @return Integer The total count of accounts
     */
    public static Integer getAccountCount() {
        return [SELECT COUNT() FROM Account];
    }
    
    /**
     * @description Checks if an account name is valid (not blank and reasonable length)
     * @param accountName The name to validate
     * @return Boolean True if valid, false otherwise
     */
    public static Boolean isValidAccountName(String accountName) {
        return String.isNotBlank(accountName) && accountName.length() <= 255;
    }
    
    /**
     * @description Returns the current date as a formatted string
     * @return String Today's date in YYYY-MM-DD format
     */
    public static String getTodayFormatted() {
        return String.valueOf(Date.today());
    }
}