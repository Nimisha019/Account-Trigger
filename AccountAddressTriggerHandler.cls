public class AccountAddressTriggerHandler {
    public void beforeInsert(List<Account> lstAccount){
        for(Account objAcc : lstAccount){
            if(objAcc.Match_Billing_Address__c && objAcc.BillingPostalCode != null)
                objAcc.ShippingPostalCode = objAcc.BillingPostalCode;
        }
    }
}