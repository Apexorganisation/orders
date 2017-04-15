public class TestExample3 {
    public string accName;
    public string accIndustry;
    public void create(){
        Integer count=[select count() from account where name=:accName];
        if(count==0){
            Account acc=new Account();
            acc.Name=accName;
            acc.Industry=accIndustry;
            insert acc;
        }
    }

}