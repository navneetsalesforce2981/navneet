({
    sendMessage : function(component, event) {
         var recordId = component.get('v.recordId');
        var isSigned = false;
        var action = component.get("c.abc");
        action.setParams({
          
            id1:recordId 
        });
       
        $A.enqueueAction(action);
    }
})