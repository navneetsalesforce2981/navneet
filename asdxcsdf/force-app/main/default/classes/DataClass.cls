public class DataClass {
 @AuraEnabled
    public static List <sObject> fetchData(string objectName , String field1 , String field2 , String lm) {
        if(field1!=field2){
              List<sObject> sobjList = Database.query('Select '+field1+','+field2+' from '+objectName+' Limit '+lm);
        system.debug(sobjList);
        return sobjList; 
        }
        else{
               List<sObject> sobjList = Database.query('Select '+field2+' from '+objectName+' Limit '+lm);
        system.debug(sobjList);
        return sobjList; 
        }
        
        
    
    }
}