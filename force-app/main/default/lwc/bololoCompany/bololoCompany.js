import { LightningElement, wire } from 'lwc';
import getListOpportunity from '@salesforce/apex/OpportunityController.getListOpportunity';

export default class BololoCompany extends LightningElement {
    opportunities
    error
    columns = [
        { label: 'Nome', fieldName: 'Name' },
        { label: 'Valor', fieldName: 'Amount' },
        { label: 'Fase', fieldName: 'StageName' },
        { label: 'Data Criação', fieldName: 'CreatedDate'}
    ]

    @wire(getListOpportunity) wiredOpportunities({ error, data }) {
        if (data) {
            this.opportunities = data
            this.error = undefined
            console.log(data)
        } else if (error) {
            this.error = error
            this.opportunities = undefined
        }
    }
}