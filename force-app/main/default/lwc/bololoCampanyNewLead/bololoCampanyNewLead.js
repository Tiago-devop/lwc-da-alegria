import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';

export default class BololoCampanyNewLead extends NavigationMixin(LightningElement) {

    recordId

    handleReset() {
        const fieldsInput = this.template.querySelectorAll('lightning-input-field')
        if (fieldsInput) {
            fieldsInput.forEach(field => {
                field.reset()
            })
        }
    }

    handleSuccess(event) {
        // console.log('Conta Criada')
        // console.log('Id da conta' + event.detail.id)
        this.recordId = event.detail.id
        const toastEvent = new ShowToastEvent({
            title: 'Parabens',
            message: `A conta: ${event.detail.id} foi criada com sucesso!`,
            variant: 'success'
        })
        this.dispatchEvent(toastEvent)

        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: event.detail.id,
                objectApiName: 'Lead',
                actionName: 'view'
            }
        })
    }

}