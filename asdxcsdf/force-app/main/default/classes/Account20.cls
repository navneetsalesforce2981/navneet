public class Account20 {
   public static  List<Account> creation(){
        List<Account> list1 = new List<Account> ();
        for(integer i=0;i<=20;i++){
            Account ac = new Account() ;
            ac.Name= 'Navneet'+i;
            list1.add(ac);
        }
        insert list1;
        return list1;
    }
}