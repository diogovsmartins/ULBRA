programa
{	/*Uma empresa fez uma pesquisa de mercado para saber se as pessoas gostaram ou não de um novo pro-
	duto lançado. Para isso, forneceu o sexo do entrevistado e sua resposta (S — sim; ou N — não). Sabe-se
	
	que foram entrevistadas dez pessoas. Faça um programa que calcule e mostre:
	■■ o número de pessoas que responderam sim;
	■■ o número de pessoas que responderam não;
	■■ o número de mulheres que responderam sim; e
	■■ a percentagem de homens que responderam não, entre todos os homens analisados.*/
		
	funcao inicio()
	{
		inteiro pessoas, homem=0, homens=0, mulher=0, sim=0, n=0, porcentagem=0
		cadeia resposta, sexo

		para(pessoas=1;pessoas<=10;pessoas++){
			escreva("\nDigite o sexo do entrevistado "+pessoas+"(M ou F) :")
			leia(sexo)
			escreva("\nQual a resposta do entrevistado "+pessoas+" (S ou N): ")
			leia(resposta)
			
			se(sexo=="M"){
				homens++
			}
			se((sexo=="M")e(resposta=="N")){
				homem++
			}
			se((sexo=="F")e(resposta=="S")){
				mulher++
			}
			se(resposta=="S"){
				sim++
			}
			se(resposta=="N"){
				n++
			}
		}
			se(sim>0){
				escreva("\nA quantidade de entrevistados que respondeu sim à pesquisa é: "+sim)
			}se(n>0){
				escreva("\nA quantidade de entrevistados que respondeu não à pesquisa é: "+n)
			}se(mulher>0){
				escreva("\nO número de mulheres entrevistadas que respondeu sim é: "+mulher)
			}
			se((homens>0)e(homens>0)){
				porcentagem=(homem*100)/homens
				escreva("\nA percentagem de homens que responderam não dentre todos os homens analisados é: "+porcentagem+"%")
				
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1450; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */