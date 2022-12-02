trigger ContactTrigger on Contact (before update) {
    /*
    List<Contact> contactObj = new List<Contact>([SELECT LastModifiedById,LastModifiedDate FROM Contact LIMIT 100]);
    
    for(Contact contactObj: Trigger.new) {      
        contactObj.Description = 'LastModifiedById: ' +LastModifiedById+ ' LastModifiedDate ' +LastModifiedDate; 
        
    }
*/
}

// LastModifiedById,LastModifiedDate