programa
{
	/*Cada espectador de um cinema respondeu a um questionário no qual constava sua idade e sua opinião
	
	em relação ao filme: ótimo — 3; bom — 2; regular — 1. Faça um programa que receba a idade e a opi-
	nião de quinze espectadores, calcule e mostre:
	
	■■ a média das idades das pessoas que responderam ótimo;
	■■ a quantidade de pessoas que responderam regular; e
	■■ a percentagem de pessoas que responderam bom, entre todos os espectadores analisados.*/
	inclua biblioteca Matematica -->mat
	
	funcao inicio()
	{
		inteiro espectador, idade, somaidade=0, opiniao, regular=0, bom=0, otimo=0
		inteiro porcentagem=0

		para(espectador=1;espectador<=15;espectador++){
			escreva("\nDigite a idade do espectador "+espectador+" :")
			leia(idade)
			escreva("\n Qual a opinião do "+espectador+" sobre o filme? (digite 3 para ótimo, 2 para bom e 1 para regular: ")
			leia(opiniao)
			se(opiniao==3){
				somaidade+=idade
				otimo++
			}
			se(opiniao==2){
				bom++
				porcentagem=(bom*100)/15
			}
			se(opiniao==1){
				regular++
			}
		}
		escreva("\nA quantidade de pessoas que respondeu regular é: "+regular)
		se(otimo>0){
			escreva("\nA media da idade das pessoas que responderam ótimo é: "+somaidade/otimo)	
		}
		se(bom>0){
			escreva("\nA porcentagem de pessoas que responderam bom entre os espectadors analisados é: "+porcentagem+"%")	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */