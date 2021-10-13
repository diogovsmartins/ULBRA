programa
{	//Faça um programa que calcule a média de 5 números
	//inteiros dados como entrada e imprima o resultado.


	
	funcao inicio()
	{
		real num, media, soma=0
		inteiro i

		para(i=0; i <5; i++){
			escreva("Digite um número: ")
			leia(num)
			soma+=num
		}
		media=soma/i
		escreva("a media dos seus números é: "+media)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 158; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */