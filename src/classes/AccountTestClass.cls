@istest
private class AccountTestClass {
    testmethod static void testme(){
        Account acc=new account();
        acc.Name='TCS';
        acc.Industry='Banking';
        insert acc;
        Account a=[select name,phone from account where id=:acc.Id];
        system.assertequals(a.phone,'888');
    }

}