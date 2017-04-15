trigger orderTrigger on SFDC_Order__c (before insert,before update,after insert) {
    Orderclass ord=new Orderclass();
    if ((trigger.isInsert && trigger.isBefore) || (trigger.isUpdate && trigger.isBefore))
 	{
        ord.orderValidations(trigger.new[0]);
    }
    else if (trigger.isInsert && trigger.isAfter)
    {
        ord.newIP(trigger.new[0]); 
  	}
}