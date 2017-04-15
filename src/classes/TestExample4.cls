public class TestExample4 {
    public string accName;
    public string accIndustry;
    public void create(){
        Account acc=New Account();
        acc.Name=accName;
        acc.Industry=accIndustry;
        if(accIndustry=='Banking'){
            acc.Ownership='public';
            acc.AnnualRevenue=100000;
        }else{
            acc.ownership='private';
            acc.AnnualRevenue=50000;
        }
        insert acc;
    }

}