trigger AccountTrigger on Account (before insert) {
    for(Account a:trigger.new){
        if(a.industry=='Banking'){
            a.phone='888';
        }
    }

}