public class OrderClass {
    list<Error_Msg__mdt> ErrorMetadataList;
    Map<string,string> ErrorMetadataMap=new Map<string,string>();
    public OrderClass(){
        for(Error_Msg__mdt Error:[select  MasterLabel,Order_Msg__c from Error_Msg__mdt ])
        {
          ErrorMetadataMap.put(Error.MasterLabel,Error.Order_Msg__c);
        }
    }
    public void orderValidations(SFDC_Order__c ord){
        integer no_of_MatchingRecords=[select count() from SFDC_Location__c where (ERP_Customer_Number__c =:ord.Ship_To_ERP_Customer_Number__c and
              ERP_OU__c =:ord.Ship_To_ERP_OU__c and Name =:ord.Ship_To_ERP_Location_ID__c)];
    if (no_of_MatchingRecords<1){    
       ord.Error_Message__c=ErrorMetadataMap.get('Shippment Error');
       ord.Process_Status__c='Not Processed';
    }
    else{
        ord.Error_Message__c='';
        ord.Process_Status__c='Processed';
    } 
    if(ord.Quantity__c < 5)
     ord.Quantity__c.addError(ErrorMetadataMap.get('Quantity validation'));
    integer  no_of_MatchingProducts=[select count() from SFDC_Product__c where Product_Code__c = :ord.Product_Code__c];
    if (no_of_MatchingProducts < 1)
      ord.Product_Code__c.addError(ErrorMetadataMap.get('Product Vallidation'));
    }
    public void newIP(SFDC_Order__c ord){    
    SFDC_Installed__c ip=new SFDC_Installed__c();
    ip.Name='ddj';
    ip.System_ID__c='01'; 
    ip.Order_Id_s__c=ord.ID;
    ip.Product_ID__c=[select ID from SFDC_Product__c where Name= :ord.Product_Code__c limit 1].ID;
    ip.Account__c=ord.Account_ID__c;
    ip.Location_ID__c=[select ID from SFDC_Location__c where Name= :ord.Account_ID__c].ID;
    insert ip;    
	}
}