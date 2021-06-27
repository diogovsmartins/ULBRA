programa
{
	
	funcao inicio()
	{
		
		const inteiro vetor1 = 5, vetor2 = 3

		inteiro i,j

		inteiro logica[vetor1], linguagem[vetor2]


		para(i=0;i<vetor1;i++){
			escreva("Digite o código de inscrição do estudante "+i+"que cursa lógica de programação :")
			leia(logica[i])
		}

		para(i=0;i< vetor2;i++){
			escreva("Digite o código de inscrição do estudante "+i+"que cursa linguagem de programação :")
			leia(linguagem[i])
		}


		escreva("The enrolment codes that're the same on both classes: ")
		para(i=0;i< vetor2; i++){
			
			para(j=0;j<vetor1;j++){

				se(linguagem[i] == logica[j]){
					escreva(linguagem[i], ", ")
					pare
				}
			}
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 561; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */