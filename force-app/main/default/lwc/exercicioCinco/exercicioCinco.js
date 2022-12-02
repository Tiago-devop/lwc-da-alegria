import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT from '@salesforce/schema/Contact';
import LAST_NAME from '@salesforce/schema/Contact.LastName';
import FIRST_NAME from '@salesforce/schema/Contact.FirstName';

export default class ExercicioCinco extends LightningElement {
    objectApiName = CONTACT
    
    fields = [FIRST_NAME, LAST_NAME]

    handleSuccess(event) {
        const evt = new ShowToastEvent({
            title: 'Contato Criado Com Sucesso!',
            message: `Id da operação ${event.detail.id}`,
            variant: 'success', 
        })
        this.dispatchEvent(evt)
    }
}