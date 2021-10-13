programa
{	//FUP que leia o número da conta bancária e o saldo de um cliente.
    //Caso a conta tenha saldo negativo, o programa deve enviar a seguinte mensagem: 
   //CONTA ESTOURADA, caso contrário CONTA NORMAL.

	
	funcao inicio()
	{
		cadeia n_conta
		inteiro saldo

		escreva("Digite o número da sua conta bancária: ")
		leia(n_conta)
		escreva("Digite o saldo da sua conta: ")
		leia(saldo)

		se(saldo<0){
			escreva("O saldo da conta: ",n_conta," se encontra ESTOURADO, seu saldo é de: ", saldo)
		}senao{
			escreva("O saldo da conta: ",n_conta," está NORMAL. Seu saldo é de: ", saldo)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */