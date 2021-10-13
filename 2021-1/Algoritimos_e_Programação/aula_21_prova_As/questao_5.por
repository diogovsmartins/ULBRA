programa
{	/*QUESTAO(5)--Escreva um algoritmo que leia o preço de compra 
	e o preço e venda e o nome de 10 mercadorias e calcule e escreva 
	a quantidade de mercadorias proporcionam
	(1) um lucro menor que 10%,
	(2) um lucro maior ou igual a 10% e menor ou igual a 20% e
	(3) um lucro maior do que 20%*/
	
	funcao inicio()
	{
		const inteiro size=10
		cadeia itemName[size]
		real sellingPrice[size], buyingPrice[size], difference[size]

		para(inteiro i=0;i<size;i++){
			escreva("Digite o nome do item "+i+" : ")
			leia(itemName[i])
		}
		escreva("\n")
		para(inteiro i=0;i<size;i++){
			escreva("Digite o preço de compra item "+itemName[i]+" : ")
			leia(buyingPrice[i])
		}
		escreva("\n")
		para(inteiro i=0;i<size;i++){
			escreva("Digite o preço de venda do item "+itemName[i]+" : ")
			leia(sellingPrice[i])
		}
		para(inteiro i=0;i<size;i++){
			difference[i]=(sellingPrice[i]-buyingPrice[i])
			se(difference[i]<buyingPrice[i]/10){
				escreva("\nO lucro do produto "+itemName[i]+" é menor do que 10%")
			}
			senao se((difference[i]>buyingPrice[i]/10)e(difference[i]<=buyingPrice[i]/5)){
				escreva("\nO lucro do produto "+itemName[i]+" é maior que 10% e menor que 20%")				
			}
			senao se(difference[i]>buyingPrice[i]/5){
				escreva("\nO lucro do produto "+itemName[i]+" é maior do que 20%")
			}
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1018; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */