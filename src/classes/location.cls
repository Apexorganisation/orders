public class location{
    public SFDC_Location__c loc{set;get;}
    public SFDC_Account__c sfdc{set;get;}
    public location(){
        sfdc=[select ERP_Customer_Number__c,ERP_OU__c from SFDC_Account__c where id=:System.currentPageReference().getParameters().get('ID')];
    	loc=new  SFDC_Location__c(); 
    	loc.ERP_Customer_Number__c=sfdc.ERP_Customer_Number__c;
    	loc.ERP_OU__c=sfdc.ERP_OU__c;
    }
    public SFDC_Location__c getLoc(){
        return loc;
    }

}