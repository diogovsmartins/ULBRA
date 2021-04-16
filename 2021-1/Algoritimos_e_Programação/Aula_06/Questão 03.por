programa
{	// Escreva um algoritmo que leia a idade de um atleta 
    //e escreva na tela em que categoria ele se enquadra, seguindo o quadro abaixo:
    //*de 5 a 10 anos = infantil
    //*de 11 a 17 anos = juvenil
    //*de 18 a 30 anos = Profissional
    //*acima de 30 anos =Sênior


	
	funcao inicio()
	{
		inteiro num

		escreva("Digite quantos anos você tem: ")
		leia(num)
		
		se(num<5)
		{
			escreva("Você é muito novo então não está em nenhuma categoria.")
		}
		se ((num>=5) e (num<=10)) 
		{
			escreva("Você está na categoria Infantil.")
		}
		se ((num>=11) e (num<=17))
		{
			escreva("Você está na categoria Juvenil.")
		}
		se ((num>=18) e (num<=30))
		{
			escreva("Você está na categoria Profissional.")
		}
		se ((num>30))
		{
			escreva("Você está na categoria Sênior.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 801; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */