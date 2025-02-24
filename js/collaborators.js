
let Enter = document.querySelector(".Enter");

Enter.addEventListener("click", (e) => {
    e.preventDefault()

    let user = document.querySelector("#userColl").value;
    let passwold = document.querySelector("#passColl").value; 

    if (user == "" || passwold == "") {
        alert("Preencha todos os campos corretamente.")
    }else if (user == 12345678910 && passwold == 123) {
        location.replace("work.html")
        }else{
        alert("Usuario ou senha invalidos.")
    }
})