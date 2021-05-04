programa
{	//O hotel Pica-Pau cobra 50,00 Reais a diária e mais uma taxa de serviços. A taxa de serviços é de:
	//1,50 por dia, se número de diárias <15
	//1,00 por dia, se número de diárias =15
	//0,50 por dia, se número de diárias >15
	//FUP que lê o número de diárias e calcula o total a ser pago pelo cliente.

	
	funcao inicio()
	{
		inteiro dias, diaria
		real total, servicos

		escreva("Digite quantos dias você irá ficar hospedado: ")
		leia(dias)
		diaria=dias*50

		se(dias<15){
			servicos= dias*1.5
		}senao se(dias>15){
			servicos=dias*0.5
		}senao{
			servicos=dias*1.0
		}
		total=servicos + diaria

		escreva("O valor total a pagar pelas suas diárias é de: ",diaria," R$\n")
		escreva("O valor que será cobrado pelos serviços do hotel é de: ",servicos," R$\n")
		escreva("E o total a ser pago pela sua estadia na pousada é de: ",total," R$")
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 798; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */