public class Contact_Controller {
 @AuraEnabled
    public static String getDetails(String username, String password)
    { 
        List<Account> con_List=[Select Id,Username__c,Password__c from Account where Username__c =: username Limit 1];
        if(con_List.size() == 0)
        {
           return 'User does not exist'; 
        }
        else
        {
            if(con_List[0].Password__c==password)
            {
                return 'Login successfull!!!!';
            }
            else
            {
                return 'Invalid password please try again!!!!';
            }
        }
    }
}