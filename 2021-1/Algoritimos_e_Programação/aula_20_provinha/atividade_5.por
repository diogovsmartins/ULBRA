programa
{	/*5. Faça um programa de consulta de telefones a partir 
	de um nome informado por uma chave de dados: leia nomes de pessoas 
	com seus respectivos telefones, sendo a quantidade determinada pelo usuário. 
	Em seguida, pergunte ao usuário qual o nome que ele deseja consultar o telefone. 
	Após sua resposta, exiba o telefone da pessoa procurada.
	*/
	
	funcao inicio()
	{	/*constante para o tamanho dos vetores, 2 vetores, um para nomes e um para os números
	uma variavel para confirmação, um contador j para o tamanho total dos vetores no momento
	em que o usuário desejar parar e a variavel contato para buscar qual é o nome do 
	contato que o usuário quer procurar.*/
		const inteiro size=1000
		cadeia vetorNome[size], vetorTelefone[size], confirmacao="", contato
		inteiro j=0
		//preencher os dados
		para(inteiro i=0;i<size;i++){
			escreva("\nEscreva o nome do contato "+(i+1)+" : ")
			leia(contato)
			vetorNome[i]=contato
			escreva("Escreva o telefone do contato "+(i+1)+" : ")
			leia(vetorTelefone[i])

			escreva("Deseja continuar adicionando contatos à sua agenda? 'sim' ou 'nao': ")
			leia(confirmacao)
			se(confirmacao!="sim"){
				pare
			}
			j++
		}
		//mostrar os contatos que o usuário quiser procurar.
		faca{
			escreva("\nDigite o nome do contato que deseja buscar: ")
			leia(contato)
			para(inteiro i=0;i<=j;i++){
				se(contato==vetorNome[i]){
				escreva("O número do "+vetorNome[i]+" é: "+vetorTelefone[i])
				}
			}
			escreva("\nDeseja continuar buscando seus contatos? 'sim' ou 'nao': ")
			leia(confirmacao)
		}enquanto(confirmacao=="sim")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1243; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */