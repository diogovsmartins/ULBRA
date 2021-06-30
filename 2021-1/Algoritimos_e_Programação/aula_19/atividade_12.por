programa
{	/*12. Faça um programa que receba cinco números e mostre a saída a seguir:
	Digite o 1o número 5
	Digite o 2o número 3
	Digite o 3o número 2
	Digite o 4o número 0
	Digite o 5o número 2
	Os números digitados foram: 5 + 3 + 2 + 0 + 2 = 12*/
	
	funcao inicio()
	{
		//delcrar uma variavel para vetor, uma variavel para soma e uma constante para o tamanho do vetor

		const inteiro size=5
		inteiro vetor[size], soma=0
		//laço de repetição para preencher o vetor e economizar codigo
		para(inteiro i=0; i<size;i++){
			escreva("Digite um número: ")
			leia(vetor[i])
			soma+=vetor[i]
		}
		//saida mostrando os numeros digitados e a soma deles
		escreva("Os números digitados foram: "+vetor[0]+" + "+vetor[1]+" + "+vetor[2]+" + "+vetor[3]+" + "+vetor[4]+" e a soma deles é: "+soma)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 755; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */