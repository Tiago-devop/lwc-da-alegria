import { LightningElement } from 'lwc';

export default class WcSolucoes extends LightningElement {
    visivel = false
    recordId

    handleReset() {
        const fieldsInput = this.template.querySelectorAll('lightning-input-field')
        if(fieldsInput) fieldsInput.forEach(field => field.reset())
        this.visivel = false
    }

    handleSuccess(event) {
        this.recordId = event.detail.id
        this.visivel = true
    }
}