import { LightningElement } from 'lwc';

export default class NovaContaView extends LightningElement {
    visivel = false
    recordId

    handleReset() {
        const fieldsInput = this.template.querySelectorAll('lightning-input-field')
        if(fieldsInput) {
            fieldsInput.forEach(field => {
                field.reset()
            })
        }
        this.visivel = false
    }

    handleSuccess(event) {
        console.log('Conta Criada')
        console.log('Id da conta' + event.detail.id)
        this.recordId = event.detail.id
        this.visivel = true
    }
}