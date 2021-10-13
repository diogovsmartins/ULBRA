programa
{	/*Uma pequena loja de artesanato possui apenas um vendedor e comercializa dez tipos de objetos. O
	vendedor recebe, mensalmente, salário de R$ 545,00, acrescido de 5% do valor total de suas vendas.
	O valor unitário dos objetos deve ser informado e armazenado em um vetor; a quantidade vendida de
	cada peça deve ficar em outro vetor, mas na mesma posição. Crie um programa que receba os preços
	e as quantidades vendidas, armazenando-os em seus respectivos vetores (ambos com tamanho dez).
	Depois, determine e mostre:
	■■ um relatório contendo: quantidade vendida, valor unitário e valor total de cada objeto. Ao final,
	deverão ser mostrados o valor geral das vendas e o valor da comissão que será paga ao vendedor; e
	■■ o valor do objeto mais vendido e sua posição no vetor (não se preocupe com empates).*/
	
	funcao inicio()
	{
		cadeia objetos[10], objeto
		real valores[10],valor, total[10], valorGeral=0, salario
		inteiro qtdVen[10], qtd, i, maisVend=0
		//escolhendo os objetos//
		para(i=0; i!=10; i++){
			escreva("Digite o nome para o objeto "+(i+1)+" :")
			leia(objeto)
			objetos[i]=objeto
		}
		//declarando os valores dos objetos//
		para(i=0; i!=10; i++){
			escreva("Digite o valor do objeto "+objetos[i]+" :")
			leia(valor)
			valores[i]=valor
		}
		//declarando a quantidade de itens vendidos//
		para(i=0; i!=10;i++){
			escreva("Agora digite a quantidade que deseja comprar do produto "+objetos[i]+" :")
			leia(qtd)
			qtdVen[i]=qtd
			total[i]=qtdVen[i]*valores[i]
			valorGeral+=qtdVen[i]*valores[i]
				se(total[i]>total[maisVend]){
					maisVend=i
					
				}
		}
		salario=(0.05*valorGeral)+545
		//relatorio, vendas e comissão//
		para(i=0;i!=10;i++){
			escreva("\nA quantidade vendida do "+objetos[i]+" é "+qtdVen[i]+", seu valor unitário é "+valores[i]+" e o valor total das vendas dele é: "+total[i])
		}
		escreva("\nO valor total das vendas é de: "+valorGeral)
		escreva("\n A comissão que será paga ao vendedor é de:"+salario)
		escreva("\n O valor do objeto mais vendido é :"+total[maisVend]+" e sua posição no vetor é: "+maisVend)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */