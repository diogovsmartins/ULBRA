programa
{
		//Solicitar a idade de 5 pessoas e imprimir a média de idade lidas.
	
	funcao inicio()
	{
		inteiro idade, soma = 0, media, i
		
		para(i = 0; i < 5; i++){
			escreva("Digite a idade :")
			leia (idade)
			soma = idade + soma
		}
			escreva("\n A soma é: "+ soma)
			media = soma/5
			escreva("\n A média das idades é:"+ media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */