programa
{
	
	funcao inicio()
	{
		inteiro canal, pessoa, soma_pessoa=0
		real sc_4=0, sc_5=0, sc_7=0, sc_12=0

		faca{
			escreva("\nDigite o canal(4,5,7,12 ou 0 para parar.) : ")
			leia(canal)
			se(canal==0){
				pare
			}
			escreva("Quantidade de pessoas que assistem esse canal: ")
			leia(pessoa)

			soma_pessoa += pessoa

			se(canal==4){
				sc_4+=pessoa
			}senao se(canal==5){
				sc_5+=pessoa
			}senao se(canal==7){
				sc_7+=pessoa
			}senao se(canal==12){
				sc_12+=pessoa
			}
			
		}enquanto(canal !=0)

		se(sc_4!=0){
			escreva("\nCanal 4: "+(sc_4/soma_pessoa)*100,"%")
		}
		se(sc_5!=0){
			escreva("\nCanal 4: "+(sc_5/soma_pessoa)*100,"%")
		}
		se(sc_7!=0){
			escreva("\nCanal 4: "+(sc_7/soma_pessoa)*100,"%")
		}
		se(sc_12!=0){
			escreva("\nCanal 4: "+(sc_12/soma_pessoa)*100,"%")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 600; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma_pessoa, 6, 25, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */