programa
{
	funcao inicio()
	{
		inteiro idade=0
		inteiro idadeMenor21=0
		inteiro idadeMaior50=0
		inteiro idadeIntermediaria=0
		inteiro i=1

		faca{
			escreva("Digite a idade da pessoa, caso não tenha mais idades para digitar, insira o código -99 :\n ")
			leia(idade)
			i++

			se(idade!=-99){
				se(idade < 21){
					idadeMenor21++
				}
				
				senao se(idade<50){
					idadeIntermediaria++
				}
		
				senao{
					idadeMaior50++
				}
			}	
		}
			
		
		enquanto(idade != -99)

		escreva("\nPessoas com menos de 21 anos: "+idadeMenor21)
		escreva("\nPessoas com mais de 50 anos: "+idadeMaior50)
		escreva("\nPessoas com idade entre 21 e 50 anos: "+idadeIntermediaria)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */