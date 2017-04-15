global class optyBatch implements Database.Batchable<Sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select ownerId,StageName from opportunity'); 
    }
    global void execute(Database.BatchableContext bc,List<opportunity> scope){
        user u=[select id from user where alias='dk'];
        for(opportunity op:scope){
            if(op.stagename!='closed won'&& op.stageName!='closed lost'){
                op.ownerId=u.id;
			}
		}
        update scope;       
	}
    global void finish(Database.BatchableContext bc){  
    }
}