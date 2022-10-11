public class Cases {
    public static List<Case> create(){
        List<Case> clist = new List<Case>();
        Case c = new Case();
        c.Status='new -working';
            c.Origin = 'phone';
        clist.add(c);
        insert clist;
        return clist;
        
        
    }
}