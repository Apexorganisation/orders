public class DMLLimits {
    public void getDML(){
        list<Account> accs=[select id,name,industry,phone from account where industry='Electronics'];
        for(integer i=1;i<=151;i++){
            List<contact> con=[select lastName, firstName from contact];
                       
        }
    }

}