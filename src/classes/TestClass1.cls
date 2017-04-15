@istest
private class TestClass1 {
    @istest
    static void testMe(){
        TestExample1 te=new TestExample1();
        te.aVal=30;
        te.bval=20;
        te.add();
        system.assertEquals(te.cVal, 50);
    }

}