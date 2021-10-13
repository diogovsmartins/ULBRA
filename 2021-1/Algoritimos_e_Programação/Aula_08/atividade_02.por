programa
{	//Sabendo que triângulo é uma Figura geométrica de três lados 
	//onde cada um dos lados é menor que a soma dos outros dois,
	//queremos fazer um algoritmo que receba três valores e verifique
	//se eles podem ser os comprimentos dos lados de um triângulo.

	
	funcao inicio()
	{
		real v1, v2, v3, somav1_v2, somav2_v3, somav3_v1

		escreva("Determine um valor para v1: ")
		leia(v1)
		escreva("Determine um valor para v2: ")
		leia(v2)
		escreva("Determine um valor para v3: ")
		leia(v3)
		somav1_v2=v1+v2
		somav2_v3=v2+v3
		somav3_v1=v3+v1

		se(v1<somav2_v3){
			escreva("\nO valor determinado para v1 pode ser usado como um dos lados de um triângulo")
		}senao{
			escreva("\nO valor determinado para v1 não pode ser usado como um dos lados de um triângulo.")
		}
		se(v2<somav3_v1){
			escreva("\nO valor determinado para v2 pode ser usado como um dos lados de um triângulo.")
		}senao{
			escreva("\nO valor determinado para v2 não pode ser usado como um dos lados de um triângulo.")
		}
		se(v3<somav1_v2){
			escreva("\nO valor determinado para v3 pode ser usado como um dos lados de um triângulo.")
		}senao{
			escreva("\nO valor determinado para v3 não pode ser usado como um dos lados de um triângulo.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */