import { LightningElement } from 'lwc';

export default class YusukiUrameshi extends LightningElement {
    num1
    num2
    result

    handleChange(event) {
        let inputNum = event.target.name
        let value = event.detail.value
        if (inputNum == 'num1') {
            this.num1 = value
        }
        if (inputNum == 'num2') {
            this.num2 = value
        }
    }

    handleClick(event) {
        let button = event.target.name
        
        if (button == 'sum' && this.num1 && this.num2) {
            this.result = this.somar()
        }
        if (button == 'sub' && this.num1 && this.num2) {
            this.result = this.sub()
        }
        if (button == 'mult' && this.num1 && this.num2) {
            this.result = this.mult()
        }
        if (button == 'div' && this.num1 && this.num2) {
            this.result = this.div()
        }
        if(button == 'div' && this.num1 == 0 || this.num2 == 0) {
            this.result = 'NÃO é Possivel calcular'
        }
    }

    handleReset() {
        this.result = ''
        let inputs = this.template.querySelectorAll('lightning-input')
        inputs.forEach(input => {
            if (input.name == 'num1') {
                input.value = ''
                this.num1 = ''
            }
            if (input.name == 'num2') {
                input.value = ''
                this.num2 = ''
            }
        })
    }

    somar() {
        return +this.num1 + +this.num2
    }

    sub() {
        return +this.num1 - +this.num2
    }

    mult() {
        return +this.num1 * +this.num2
    }

    div() {
        return +this.num1 / +this.num2
    }
}