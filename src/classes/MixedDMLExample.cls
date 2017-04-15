public class MixedDMLExample {
		public void create(){
			Profile p = [SELECT Id FROM Profile WHERE Name='HDFC'];
			UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
            User u = new User(alias ='Rohit', email='Roo@gmail.com', 
					emailencodingkey='UTF-8', lastname='Sharma', 
				languagelocalekey='en_US', 
				localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
				timezonesidkey='America/Los_Angeles', 
				username='Roo@gmail.com');
			insert u;
			List<Opportunity> opps=[select stageName,Closedate from Opportunity where stagename='Prospect' ];
     		for(Opportunity op : opps ){
                op.stageName='closed won' ;
     			op.closeDate=System.today();
            }
		update opps;
		}
	}