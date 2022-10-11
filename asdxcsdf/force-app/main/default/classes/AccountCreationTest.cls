@istest
public class AccountCreationTest {
@istest
    public static void creat(){
        Account ac = new Account(name = 'shiva');
        insert ac;
        Contact cn = new Contact(lastname = 'fgh',AccountId = ac.Id);
        insert cn;
        
        
         Contact acc1=[Select Id, lastName from Contact  ];
        
         List<Contact> cmp = AccountCreation.add();
         system.assert(!cmp.isempty());
        system.assertEquals(cmp.size(), 110);
    }
}