programa
{	/*10   Elabore um algoritmo que dada a idade de uma pessoa ele classifica-o em uma das seguintes categorias:
o   Menor de 16 anos - Não eleitor
o   Com 16 e menor de 18 anos – Eleitor, com voto facultativo
o   Com 18 e menor de 70 anos – Eleitor, com voto obrigatório
o   Com 70 ou mais– Eleitor, com voto facultativo
O programa deve encerrar ao digitar a idade 0. Ao fim deve ser mostrado o total de eleitores, o total de eleitores com votos obrigatório e os não eleitores.
*/
	
	funcao inicio()
	{
		inteiro idade, neleitor=0, eleitor=0, facultativo=0, obrigatorio=0
		
		faca{
			escreva("\n Digite a idade da pessoa:")
			leia(idade)
			se((idade<16)e(idade!=0)){
				escreva("\nEssa pessoa não tem idade para voltar ainda.")
				neleitor++
			}
			senao se((idade>=16)e(idade<18)){
				escreva("\nEssa pessoa já pode votar, mas o seu foto ainda é facultativo.")
				facultativo++
				eleitor++			
			}
			senao se((idade>=18)e(idade<70)){
				escreva("\nEssa pessoa já é maior de idade, portanto seu voto é obrigatório.")
				obrigatorio++
				eleitor++
			}senao se(idade>=70){
				escreva("\nEssa pessoa é maior de idade, mas devido à idade seu voto é facultativo.")
				facultativo++
				eleitor++
			}
		}enquanto(idade!=0)
			escreva("\nFoi digitado idade=0. Programa encerrado.\n")
			escreva("\nO número de pessoas que são considerados eleitores é: "+eleitor)
			escreva("\nO número de pessoas que não são considerados eleitores: "+neleitor)
			escreva("\nO número de pessoas as quais o voto é facultativo: "+facultativo)
			escreva("\nO número de pessoas as quais o voto é obrigatório: "+obrigatorio)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1094; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */