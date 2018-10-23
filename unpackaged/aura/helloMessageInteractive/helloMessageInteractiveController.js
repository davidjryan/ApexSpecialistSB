({
	handleClick : function(component, event, helper) {
		const btnClicked = event.getSource();
        const btnMessage = btnClicked.get("v.label");
        component.set("v.message", btnMessage);
	}
})