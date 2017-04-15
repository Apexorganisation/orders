@istest
private class TestClass3 {
    @istest
    static void create(){
        TestExample3 te=new TestExample3();
        te.accName='Testing';
        te.accIndustry='Banking';
        te.create();
        Integer count=[select count() from Account where name=:te.accName];
        system.assertEquals(count,1);
        Integer size=[select count() from Account];
        system.assertEquals(count,size);
    }

}