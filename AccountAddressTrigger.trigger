//Test Change
trigger AccountAddressTrigger on Account (before insert) {
    AccountAddressTriggerHandler objHandler = new AccountAddressTriggerHandler();
    if(trigger.isBefore && trigger.isInsert)
            objHandler.beforeInsert(trigger.new);
}
