programa
{	/*1. Faça um programa que preencha um vetor com nove números inteiros, calcule e mostre os números
	primos e suas respectivas posições.*/
	
	funcao inicio()
	{
		inteiro numeros[9], num, i, j, div=0

		//Parte do código que define os números do vetor. O tamanho do vetor é definido pelo tamanho
		//do laço utilizado para a variavel i, no caso 9 números, todos os espaços serão preenchidos
		//pelos números digitados na variavel num pelo usuário e guardados dentro dos slots de memória
		//correspondentes ao número do laço no momento digitado.
		para(i=0; i !=9; i+=1){
			escreva("Digite um número "+(i+1)+" :")
			leia(num)
			numeros[i]= num
		}
		//verificar se o números da lista são primos
		escreva("Os números digitados que são primos são: ")
		para(i=0; i!=9;i+=1){
			div=0
			//verificação de quantas vezes o número é divisivel
			para(j=1;j<= numeros[i]; j+=1){
			se(numeros[i] % j==0){
				div+=1
				}
			}
			//condição pro número ser primo, ser divisivel apenas por ele e por 1 então div tem q ser =2
			se(div==2){
				escreva("\nOs números primos são"+(i++)+" :"+numeros[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1035; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 7, 10, 7}-{num, 7, 22, 3}-{div, 7, 33, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */