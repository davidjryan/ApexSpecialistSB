({
	doInit : function(component, event, helper) {
		const myDate = comopnent.get('v.expense.Date__c');
		if(myDate) {
			component.set('v.formatdate', new Date(myDate));
		}
	}
})