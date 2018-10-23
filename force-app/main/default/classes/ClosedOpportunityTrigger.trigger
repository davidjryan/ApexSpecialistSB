trigger ClosedOpportunityTrigger on Opportunity (after insert, after update ) {

    List<Task> taskList = new List<Task>();

    for (Opportunity o : [SELECT Id, StageName FROM Opportunity WHERE Id IN :Trigger.new]) {
        if (o.StageName == 'Closed Won') {

            taskList.add(new Task(WhatId=o.Id, Subject='Follow Up Test Task'));
        }
    }

    if (taskList.size() > 0) {
        insert taskList;
    }
}