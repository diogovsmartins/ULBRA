programa
{
	
	funcao inicio()
	{
		inteiro i
		real a, b, c

		escreva("Digite um valor para a.")
		leia(a)
		escreva("Digite um valor para b.")
		leia(b)
		escreva("Digite um valor para c.")
		leia(c)

		escreva("Digite um 1, 2 ou 3.")
		leia(i)

		/*Menu 1,2 e 3*/
		
		se(i==1){
			escreva("\nO usuário digitou 1.")
			escreva("\nA ordem a ser mostrada deve ser crescente.")
			/*Decidindo ordem crescente*/
				se((a>=b) e (a>=c))  
			se (b>=c){
				escreva("\n",c,b,a)
			}senao{
				escreva("\n",b,c,a)
			}
			senao se((b>=a) e (b>=c))
			se(a>=c){
				escreva("\n",c,a,b)
			}senao{
				escreva("\n",a,c,b)
			}
			se((c>=a) e (c>=b))
			se(a>=b){
				escreva("\n",b,a,c)
			}senao{
				escreva("\n",a,b,c)
			}
				
		}
		senao se(i==2){
			escreva("\nO usuário digitou 2.")
			escreva("\nA ordem a ser mostrada deve ser decrescente.")
			/*Decidindo ordem decrescente*/
			se((a>=b) e (a>=c))  
			se (b>=c){
				escreva("\n",a,b,c)
			}senao{
				escreva("\n",a,c,b)
			}
			senao se((b>=a) e (b>=c))
			se(a>=c){
				escreva("\n",b,a,c)
			}senao{
				escreva("\n",b,c,a)
			}
			se((c>=a) e (c>=b))
			se(a>=b){
				escreva("\n",c,a,b)
			}senao{
				escreva("\n",c,b,a)
			}

		}

		senao se(i==3){
			escreva("\nO usuário digitou 3.")
			escreva("\nA ordem a ser mostrada é com o maior número no meio dos outros 2.")
			/*Decidindo maior número para por no meio*/
			se((a>=b) e (a>=c)){
				escreva("\n",b,a,c)
			}
			senao se((b>=a) e (b>=c))
			escreva("\n",a,b,c)
			senao escreva("\n",b,c,a)
			
		}
		senao{
			escreva("\nEntrada inválida, as entradas válidas são somente 1,2 e 3.")
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 725; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */