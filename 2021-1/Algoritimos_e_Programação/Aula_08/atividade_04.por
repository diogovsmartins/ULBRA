programa
{
	// Escreva um algoritmo que leia a idade de um atleta e escreva na tela 
	//em que categoria ele se enquadra, seguindo o quadro abaixo: 
	//Faixa Etária Categoria de 5 a 10 anos Infantil 
	//de 11 a 17 anos Juvenil 
	//de 18 a 30 anos Profissional 
	//acima de 30 anos Sênior

	
	funcao inicio()
	{
		inteiro idade
		
		escreva("Digite sua idade: ")
		leia(idade)
		
		se(idade<=5){
			escreva("Você não está em nenhuma categoria porque você é muito jovem.")
		}
		senao se((idade>=5) e (idade<=10)){
			escreva("Você está na categoria Infantil.")
		}
		senao se((idade>=11) e (idade<=17)){
			escreva("Você está na categoria Juvenil.")
		}
		senao se((idade>=18) e (idade<=30)){
			escreva("Você está na categoria Profissional")
		}
		senao{
			escreva("Você está na categoria senior.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 816; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */