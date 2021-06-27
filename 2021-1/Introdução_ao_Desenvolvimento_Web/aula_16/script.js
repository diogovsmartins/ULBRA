// 1- Elabore uma página que contenha os scripts usando as funções prompt e alert que :
// Leia um valor e imprima os resultados: “É maior que 10” ou “Não é maior que 10” ou ainda “É igual a 10”

// var valor = prompt('Digite um valor');
// valor = parseInt(valor);

// if(valor>10){
//     alert('valor maior que 10')
// }else if(valor<10){
//     alert('valor menor que 10')
// }else if(valor===10){
//     alert('valor igual a 10')
// }

// Some dois valores lidos e imprima o resultado

// var n1 , n2
// var n1 = prompt('Digite um valor: ')
// n1=parseInt(n1)
// var n2 = prompt('Digite outro valor:')
// n2=parseInt(n2)
// alert('A soma dos valores é: '+ (n1+n2))

// Leia 2 valores e a operação a ser realizada (+, -, * ou /) e imprima o resultado (use um switch)

/* var n1 
var n2
var operacao

var n1=prompt('Digite um valor para n1');
n1=parseInt(n1);
var n2=prompt('Digite um valor para n2');
n2=parseInt(n2);
var operacao= prompt('Digite qual será a operação feita (+, -, *, /');
switch(operacao){
    case '+':
        alert(n1+n2);
    break;
    case '-':
        alert(n1-n2);
    break;
    case '*':
        alert(n1*n2);
    break;
    case '/':
        alert(n1/n2);
    break;
} */



// Leia um nome e um valor n e imprima o nome n vezes usando o laço for

/* var nome
nome= prompt('digite um nome');
var valor
valor=prompt('digite um valor');
var i

for(i=0; i<5; i++){
    alert('Bom dia '+nome);
    alert('O valor digitado foi '+valor);
} */

// Leia um nome, endereço e e-mail, armazene em um array, depois imprima na tela;

/* var variavel=[];

variavel [0]=prompt("nome :");
variavel [1]= prompt("endereço :");  
variavel [2]=prompt("Email :");

alert('Os dados digitados são: '+variavel[0] + variavel[1] + variavel[2]); */

// Faça o mesmo procedimento com um objeto

    var objeto1=prompt('Digite um objeto: ');
    var objeto2=prompt('Digite mais um objeto: ');
    var objeto3=prompt('Digite um último objeto :');

    var objetos={primeiro:objeto1, segundo:objeto2, terceiro:objeto3}

    alert('Os objetos digitados em ordem são: '+objetos.primeiro+" "+objetos.segundo +" "+objetos.terceiro);

