programa
{	/*Faça um programa que preencha dois vetores de dez elementos numéricos cada um e mostre o vetorresultante
	da intercalação deles.*/
	
	funcao inicio()
	{
		inteiro vetor[10], vetor2[10], resultante[20], i, j=0, k=1

		para(i=0;i<10;i++){
			escreva("\nDigite um numero"+i+": ")
			leia(vetor[i])
			resultante[j]=vetor[i]
			j+=2
		}
		para(i=0;i<10;i++){
			escreva("\nDigite um numero"+i+": ")
			leia(vetor2[i])
			resultante[k]=vetor2[i]
			k+=2
		}
		para(i=0;i<20;i++){
			escreva("O resultado da intercalação dos vetores é: "+resultante[i]+". ")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 7, 10, 5}-{vetor2, 7, 21, 6}-{resultante, 7, 33, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */