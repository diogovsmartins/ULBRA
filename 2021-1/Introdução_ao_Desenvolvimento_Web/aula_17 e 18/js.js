function btn(){
   var n1=document.getElementById('n1').value;
   var n2=document.getElementById('n2').value;
   var operacao=document.getElementById('operacao').value;
   var resultado=document.getElementById('resultado')
   n1=parseInt(n1)
   n2=parseInt(n2)
   

   switch(operacao){
      case '+':
         resultado.value= n1+n2
         break;
      case '-':
         resultado.value= n1-n2
         break;
      case '*':
         resultado.value= n1*n2
         break;
      case '/':
         resultado.value= n1/n2
         break;
   }
   

   console.log(n1)
   console.log(n2)
   console.log(operacao)
}
//TDE ATIVIDADE 2//
function calcularKwh(){
   var qtdKwh=parseFloat(document.getElementById('kwh').value);
   var valorUnit=parseFloat(document.getElementById('valorUnit').value);
   var resultadoAt2;

   if(qtdKwh>200){
      resultadoAt2=1.5*(valorUnit*qtdKwh)
   }
   else if(qtdKwh>100){
      resultadoAt2=1.25*(valorUnit*qtdKwh)
   }
   else{
      resultadoAt2=valorUnit*qtdKwh
   }
   console.log('Valor kwhs'+resultadoAt2)
   document.getElementById('resultadoAt2').value= resultadoAt2
}

//TDE ATIVIDADE 3//
function checarMaior(){
   var inputs=document.getElementById('inputs').value;
   var inputs=inputs.split(',');
   var resultadoAt3=document.getElementById('resultadoAt3');

   i=0, maior=0
   for(i;i<inputs.length;i++){
      if(inputs[i]>maior){
         maior=inputs[i];
      }
   }
   /* resultadoAt3.value=maior; */
   console.log(maior)

}  


/* TDE ATIVIDADE 4 */

function verifyAges(){
   var idades= document.getElementById('idades').value;

   idades=idades.split(',');
   var i=0, maiores=0, menores=0, iguais18=0;
   var resultado=document.getElementById('resultAt4').textContent;

   for(i;i<idades.length;i++){
      if(idades[i]>18){
         maiores++;
      }
      else if(idades[i]<18){
         menores++
      }
      else if(idades[i]==18){
         iguais18++
      }
   }
  resultado=document.getElementById('resultAt4').innerHTML=("menores de 18: "+menores+'<br>'+'Maiores de 18: '+maiores+'<br>'+'iguais a 18: '+iguais18);
   
   console.log(maiores+'.'+menores+'.'+iguais18)
}




