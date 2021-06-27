programa
{	/*Faça um programa que receba o total das vendas de cada vendedor de uma loja e armazene-as em um vetor.
	Receba também o percentual de comissão a que cada vendedor tem direito e armazene-os em outro vetor.
	Receba os nomes desses vendedores e armazene-os em um terceiro vetor. Existem apenas dez vendedores na
	loja. Calcule e mostre:
	■■ um relatório com os nomes dos vendedores e os valores a receber referentes à comissão;
	■■ o total das vendas de todos os vendedores;
	■■ o maior valor a receber e o nome de quem o receberá;
	■■ o menor valor a receber e o nome de quem o receberá.*/
	
	funcao inicio()
	{
		const inteiro size=10

		real totalVendas[size]
		real percentual[size]
		cadeia vendedores[size]
		real totalDasVendas=0.0
		inteiro menor=0
		inteiro maior=0

		para(inteiro i=0;i<size;i++){
			escreva("\nDigite Nome: ")
			leia(vendedores[i])
			escreva("\nDigite valor total das vendas: ")
			leia(totalVendas[i])
			totalDasVendas+=totalVendas[i]
			escreva("\nDigite comissão: ")
			leia(percentual[i])
			
			se(percentual[menor]>percentual[i]){
				menor=i
			}
			se(percentual[maior]<percentual[i]){
				maior=i
			}
			
			
		}
		para(inteiro i=0; i<size;i++){
			escreva("\nO vendedor"+vendedores[i]+" deve receber de comissão "+percentual[i]+"\n")
		}
		escreva("\nTotal das vendas: "+totalDasVendas)
		escreva("\nO vendedor com o maior valor a receber é: "+vendedores[maior])
		escreva("\nO maior valor a receber é: "+percentual[maior])
		escreva("\nO vendedor com o menor valor a receber é: "+vendedores[menor])
		escreva("\nO menor valor a receber é: "+percentual[menor])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1624; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */