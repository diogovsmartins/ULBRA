programa
{	/* 7.Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de 21 anos. 
	Total de pessoas com mais de 50 anos. O programa termina quando a idade for =-99.
	*/

	
	funcao inicio()
	{
		inteiro idade=0, menor21=0, maior50=0

		enquanto(idade!=-99){
			escreva("\nDigite uma idade: ")
			leia(idade)
			se((idade<21)e(idade!=-99)){
				menor21++
			}
			senao se(idade>50){
				maior50++
			}
		}
		escreva("\nFoi digitada a idade -99 e o programa foi encerrado.")
		escreva("\nO número de pessoas com menos de 21 anos é: "+menor21)
		escreva("\nO número de pessoas com idade maior que 50 é: "+maior50)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */