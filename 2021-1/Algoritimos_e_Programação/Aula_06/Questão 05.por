programa
{	//FUA que lê o código da peça 1, a quantidade vendida de peças 1, 
	//o valor unitário da peça 1, o código da peça 2, a quantidade vendida de peças 2 
	//e o valor unitário da peça 2. O algoritmo deve calcular o valor total a ser pago pela compra. 



	
	funcao inicio()
	{
		inteiro p1, p2, quanp1, quanp2
		real valp1, valp2, total
		
	
		escreva("Digite o número da peça 1: ")
		leia(p1)
		escreva("Digite o número da peça 2: ")
		leia(p2)
		escreva("Digite a quantidade de peças de numero "+p1+" que foram vendidas: ")
		leia(quanp1)
		escreva("Digite a quantidade de peças de numero "+p2+" que foram vendidas: ")
		leia(quanp2)
		escreva("Digite o valor da peça de número"+p1+" :")
		leia(valp1)
		escreva("Digite o valor da peça de número"+p2+" :")
		leia(valp2)
		total= (valp1*quanp1) + (valp2*quanp2)
		escreva ("O valor total a pagar pela compra das peças "+p1+" e "+p2+" é de:"+total+"R$")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 926; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */