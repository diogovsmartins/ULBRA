programa
{	/*
	3-Façça um programa que lê treŝs números diferentes e mostra na tela uma mensagem 
	indicando qual é a soma dos valores e a média. 
	Caso a média seja maior que 20 mostrar a mensagem "SOMA MAIOR QUE 20"
	*/	
	
	funcao inicio()
	{
		inteiro n, soma=0, media,i
		para(i=0;i<3;i++){
			escreva("Digite um número: ")
			leia(n)
			soma+=n
		}
		media=soma/i
		escreva("\nA soma dos valores digitados é: "+soma)
		se(media<20){
			escreva("\nA media dos números digitados é: "+media)
		}senao{
			escreva("\nSOMA MAIOR QUE 20!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 55; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */