function calcular(){
    var peso=document.getElementById("peso").value;
    var altura=document.getElementById("altura").value;

    var imc=peso/(altura*altura)
    var resultado=document.getElementById('result');
    resultado.value=imc.toFixed(2)
    
    if(imc<=18.5){
        alert("Você está abaixo do seu peso ideal.")
     }
     else if(imc>=18.5 && imc<25){
         alert("Você está dentro do seu peso ideal.");
     }
     else if(imc>25 && imc<30){
         alert("Você está levemente acima do seu peso ideal.");
     }
     else if(imc>30){
         alert("Você está bem acima do peso, consulte um médico.");
     }
   
}
