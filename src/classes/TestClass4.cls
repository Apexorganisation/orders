@istest
private class TestClass4 {
    @istest
    Static void create(){
        TestExample4 te=new TestExample4();
        te.accName='Testing';
        te.accIndustry='Banking';
        te.create();
        Account acc=[select id,name,industry from account where name=:te.accName and industry=:te.accIndustry];
        system.assertEquals(acc.Ownership,'public');
        system.assertEquals(acc.AnnualRevenue, 100000);
        te.accIndustry='Energy';
        te.create();
        Account acc1=[select id,name,industry from account where industry=:te.accIndustry];
        system.assertEquals(acc.Ownership,'private');
        system.assertEquals(acc.AnnualRevenue,50000);
    }
}