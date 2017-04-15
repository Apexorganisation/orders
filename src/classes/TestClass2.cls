@istest
private class TestClass2 {
    @istest
    static void create(){
        TestExample2 te=new TestExample2();
        te.accName='Testing';
        te.accIndustry='Banking';
        te.create();
        Integer count=[select count() from Account where name=:te.accName and industry=:te.accIndustry];
        system.assertEquals(count,1);
    }
}