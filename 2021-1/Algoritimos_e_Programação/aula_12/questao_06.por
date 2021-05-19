programa
{	//Escrever um programa que receba vários números inteiros no teclado 
	//e no final imprimir a média dos números múltiplos de 3. Para sair digitar 0(zero). 

	
	funcao inicio()
	{
		inteiro num=0, i=0, media=0, soma=0
			
			enquanto(num>0){
				i++
				escreva("Digite um número "+i+": ")
				leia(num)
				se(num%3==0){
					soma=num+soma
					escreva(soma)
					escreva("A media dos números multiplos de 3 é: ", soma)
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */