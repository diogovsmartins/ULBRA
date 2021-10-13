programa
{	/*Faça um programa que preencha um vetor com quinze elementos inteiros e verifique a existência 
	de elementos iguais a 30, mostrando as posições em que apareceram.*/
	
	funcao inicio()
	{
		inteiro array[15], i, equal30=0

		 para(i=0; i<15; i++){
		 	escreva("\nDigite um número que desejar : ")
		 	leia(array[i])
		 	se(array[i]==30){
		 		equal30++
		 		escreva("Este número é igual a 30, e a posição em que ele se encontra no vetor é: "+i)
		 	}
		 	escreva("\n_____________________________________________")
		 }
		 	escreva("\nExistem "+equal30+" números iguais a 30")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 592; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 7, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */