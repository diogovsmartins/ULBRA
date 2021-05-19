programa
{
	
	funcao inicio()
	{
		inteiro notas, valor
		
		escreva("Digite um valor em R$: ")
		leia(valor)
		
		se(valor>=100){
			notas=valor/100
			valor=valor%100
			escreva("\nNotas de 100 R$: ",notas)
		}se(valor>=50){
			notas=valor/50
			valor=valor%50
			escreva("\nNotas de 50 R$: ", notas)
		}se(valor>=10){
			notas=valor/10
			valor=valor%10
			escreva("\nNotas de 10 R$: ", notas)
		}se(valor>=5){
			notas=valor/5
			valor=valor%5
			escreva("\nNotas de 5 R$: ", notas)
		}se(valor>=2){
			notas=valor/2
			valor=valor%2
			escreva("\nNotas de 2 R$: ", notas)
		}se(valor>=1){
			escreva("\nNotas de 1 R$: ", (valor/1))		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */