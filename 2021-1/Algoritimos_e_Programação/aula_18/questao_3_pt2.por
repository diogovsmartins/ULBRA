programa
{	/*Faça um programa para controlar o estoque de mercadorias de uma empresa. Inicialmente, o programa de-
verá preencher dois vetores com dez posições cada, onde o primeiro corresponde ao código do produto e o

segundo, ao total desse produto em estoque. Logo após, o programa deverá ler um conjunto indeterminado
de dados contendo o código de um cliente e o código do produto que ele deseja comprar, juntamente com a
quantidade. Código do cliente igual a zero indica fim do programa. O programa deverá verificar:
■■ se o código do produto solicitado existe. Se existir, tentar atender ao pedido; caso contrário, exibir
mensagem Código inexistente;
■■ cada pedido feito por um cliente só pode ser atendido integralmente. Caso isso não seja possível,
escrever a mensagem Não temos estoque suficiente dessa mercadoria. Se puder atendê-lo, escrever
a mensagem Pedido atendido. Obrigado e volte sempre;
■■ efetuar a atualização do estoque somente se o pedido for atendido integralmente;
■■ no final do programa, escrever os códigos dos produtos com seus respectivos estoques já atualizados.*/
	funcao inicio()
	{	//variavel pro tamanho
		const inteiro size = 15
		//variavel pro tamanho
		//variaveis pros arrays
		cadeia produtos[size]
		inteiro estoque[size]={10, 15, 20, 25, 10, 50, 35, 60, 20, 10, 30, 10, 15, 20, 10}
		//variaveis pros arrays
		inteiro cliente, i, quantidade
		cadeia produto

		logico achou

			para(i=0;i<size;i++){
				escreva("Escreva o nome de um produto para inseri-lo no estoque: ")
				leia(produtos[i])
			}

		faca{
			achou=falso
			
			escreva("\nDigite o código de cliente (0 para parar): ")
			leia(cliente)
			
			se(cliente==0){
				pare
			}
			escreva("Digite o nome do produto que deseja comprar: ")
			leia(produto)

			para(i = 0; i < size; i++){
				se(produto == produtos[i]){
					achou=verdadeiro
					pare
				}
			}
			
			se(achou==falso){
				escreva("\nProduto não encontrado, tente novamente.")
			}
			escreva("Quantos ",produtos[i],"(s) deseja comprar? ")
			leia(quantidade)
			se(achou==verdadeiro){
				se(quantidade <= estoque[i]){
					estoque[i]=estoque[i]-quantidade
					escreva("\nPedido atendido. Obrigado e volte sempre!")
				}senao{
					escreva("Não temos estoque suficiente dessa mercadoria.\n")
				}
				para(i=0;i<size;i++){
					escreva("\nProduto "+produtos[i]+" | Estoque: "+estoque[i]+" unidades")
				}
			}
		}enquanto(cliente !=0)
		
	}	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1680; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */