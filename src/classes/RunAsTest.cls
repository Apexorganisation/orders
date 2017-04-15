@isTest
private class RunAsTest {

    @isTest static void mixedDml() {
        Profile p = [select id from profile where name='DTDC'];
        UserRole r = [Select id from userrole where name='COO'];
        User u = new User(alias = 'standt', email='standarduser@testorg.com', 
                emailencodingkey='UTF-8', lastname='Testing', 
                languagelocalekey='en_US', 
                localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
                timezonesidkey='America/Los_Angeles', 
                username='standarduser3234234@testorg.com');
        insert u;
        Account a =new Account();
        insert a;
    }
}