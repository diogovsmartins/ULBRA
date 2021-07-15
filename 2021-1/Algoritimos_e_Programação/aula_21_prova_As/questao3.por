programa
{	/*QUESTAO(3)--Faça um programa que leia um vetor de cinco posições para números reais 
	e, depois,um código inteiro. Se o código for zero, finalize o programa; 
	se for 1, mostre o vetor na ordem que foi digitada se for 2, 
	mostre o vetor na ordem inversa. Caso, o código for diferente de 0, 1 e 2 
	escreva uma mensagem falando que o código é inválido. 
	O programa deve encerrar apenas ao digitar 0.*/
	
	funcao inicio()
	{
		const inteiro size=5
		real vetor[size]
		inteiro codigo

		faca{
			para(inteiro i=0;i<size;i++){
				escreva("\nDigite um número para a posição "+i+" do vetor: ")
			leia(vetor[i])
			}
			escreva("\nDigite o codigo, 0 para parar, 1 para mostrar o vetor, 2 para mostrar na ordem inversa: ")
			leia(codigo)
			
			se(codigo==0){
				pare
			}
			senao se(codigo==1){
				para(inteiro j=0; j<size;j++){
					escreva(vetor[j]+" . ")
				}
			}
			senao se(codigo==2){
				para(inteiro k=4;k>=0;k--){
					escreva(vetor[k]+" . ")
				}
			}
			senao{
				escreva("Você digitou um código inválido, por favor digite 0,1 ou 2.\n")
			}
			
		}enquanto(codigo!=0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1060; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */