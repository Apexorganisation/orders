trigger AppDetails on Application__c (before insert) {
        for(Application__c a:trigger.new){
        if(a.Application_Type__c=='Insurance'){
            a.Mobile__c='888';
        }
        }
}