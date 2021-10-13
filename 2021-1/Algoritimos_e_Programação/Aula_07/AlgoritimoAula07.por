programa
{
	
	funcao inicio()
	{
		inteiro i
		real a=1.0
		real b=1.0
		real c=1.0
		real maior=1.0, menor=1.0, meio=1.0


		escreva("\nDigite valores diferentes para a, b e c abaixo. ")
		escreva("\nDigite um valor para a: ")
		leia(a)
		escreva("\nDigite um valor para b: ")
		leia(b)
		escreva("\nDigite um valor para c: ")
		leia(c)
		/*Decidindo o maior, menor e médio*/
		
		se((a>=b) e (a>=c)){
			maior=a
			se(b>=c){
				meio=b
				menor=c
				}
			senao{
				meio=c
				menor=b
					}
		}
		
		senao se((b>=a) e (b>=c)){
			maior=b
			se(a>=c){
				meio=a
				menor=c
				}
			senao{
				meio=c
				menor=a
					}
		}
			
	 senao se((c>=a) e (c>=b)){
			maior=c
			se(a>=b){
				meio=a
				menor=b
				}
			senao{
				meio=b
				menor=a
					}
		}
		
		/* Menu*/
		escreva("Digite 1, 2 ou 3: ")
		leia(i)
		
		se (i==1) 
		
		{
			escreva("\nO usuário digitou 1.")
			escreva("\nA ordem a ser mostrada é crescente.")
			escreva("\n",menor, meio, maior )
			escreva("\nFim do programa.")
		}

		
		senao se (i==2)
		{
			escreva("\nO usuário digitou 2.")
			escreva("\nA ordem a ser mostrada é decrescente.")
			escreva("\n",maior, meio, menor)
			escreva("\nFim do programa.")
		}

		
		senao se (i==3)
		{
			escreva("\nO usuário digitou 3.")
			escreva("\nA ordem a ser mostrada é com o maior número no meio.")
			escreva("\n", menor, maior, meio)
			escreva("\nFim do programa.")
		}

		
		senao
		{
			escreva("Entrada inválida. As entradas válidas são 1, 2 e 3.")
			escreva("\nFim do programa.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */