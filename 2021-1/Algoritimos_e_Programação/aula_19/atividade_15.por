programa
{	/*
	Faça um programa que receba o nome de oito clientes e armazene-os em um vetor. Em um segundo vetor,
	armazene a quantidade de DVDs locados em 2011 por cada um dos oito clientes. Sabe-se que, para cada
	dez locações, o cliente tem direito a uma locação grátis. Faça um programa que mostre o nome de todos
	os clientes, com a quantidade de locações grátis a que ele tem direito.*/
		
	funcao inicio()
	{	/*Declarar variaveis para o tamanho dos vetores, um vetor para os clientes, outro para os dvds 
	locados, uma variavel para a quantidade de locações gratis que ele terá*/
		const inteiro size=8
		cadeia nomeCliente[size]
		inteiro dvdsLocados[size], gratis
		/*Declarar um laço para preencher as 8 posições e economizar codigo e dividir a quantidade
		de dvds alugados na posição de "i" dentro do laço para descobrri quantas locações grátis 
		o cliente tem direito.*/
		para(inteiro i=0;i<size;i++){
			escreva("Digite o nome do cliente "+i+" : ")
			leia(nomeCliente[i])
			escreva("Digite a quantidade de DVDs que o cliente "+nomeCliente[i]+" alugou: ")
			leia(dvdsLocados[i])
			escreva("O cliente "+nomeCliente[i]+" tem direito a  "+dvdsLocados[i]/10+" locações gratuitas.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */