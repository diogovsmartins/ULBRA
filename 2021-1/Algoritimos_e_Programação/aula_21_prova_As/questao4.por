programa
{	/*QUESTAO(4)--Faça um programa que Leia 10 números inteiros e armazene em um vetor. 
	Em seguida escreva os elementos que são pares e 
	suas respectivas posições no vetor.*/
	
	funcao inicio()
	{
		const inteiro size=10
		inteiro vetor[size]

		para(inteiro i=0;i<size;i++){
			//preencher o vetor
			escreva("\nDigite um número para a posição "+i+" do vetor: ")
			leia(vetor[i])
		}
		para(inteiro i=0; i<size;i++){
			//mostrar números pares
			se(vetor[i]%2==0){
				escreva("\nO número: "+vetor[i]+" na posição "+i+" é par")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 27; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 9, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */