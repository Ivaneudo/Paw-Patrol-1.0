let inputCpf = document.querySelector("#cpf")

inputCpf.addEventListener('keypress', () => {
     let inputCpfLength = inputCpf.value.length

     if (inputCpfLength === 3 || inputCpfLength === 7){
	inputCpf.value += '.'
     }
     else if (inputCpfLength === 11){
	inputCpf.value += '-'
     }
})

let inputTel = document.querySelector("#telefone")

inputTel.addEventListener('keypress', () => {
     let inputTelLength = inputTel.value.length

     if (inputTelLength === 0){
	inputTel.value = '(' + inputTel.value
     }
     if(inputTelLength === 3){
	inputTel.value += ') '
     }
     else if(inputTelLength === 9){
	inputTel.value += '-'
     }
})
