programa
{	/*Faça um programa que preencha um vetor com os nomes de sete alunos e carregue outro vetor com a média
	final desses alunos. Calcule e mostre:
	■■ o nome do aluno com maior média (desconsiderar empates);
	
	■■ para cada aluno não aprovado, isto é, com média menor que 7, mostrar quanto esse aluno precisa ti-
	rar na prova de exame final para ser aprovado. Considerar que a média para aprovação no exame é 5.*/
	
	funcao inicio()
	{
		const inteiro size=3
		cadeia alunos[size]
		real media[size]
		
		inteiro maiorMedia=0

		para(inteiro i=0; i<size;i++){
			escreva("Digite um nome para o aluno"+i+": ")
			leia(alunos[i])
			escreva("Digite a media final do aluno "+alunos[i]+": ")
			leia(media[i])
			se(maiorMedia>media[i]){
				maiorMedia=i
			}
		}
		para(inteiro i=0;i<size;i++){
			se(media[i]<5){
				escreva("O aluno "+alunos[i]+" não foi aprovado por "+(media[i]-5)+" ponto(s)")
			}
		}
		escreva("\nO aluno com a maior media é "+alunos[maiorMedia]+"e sua média foi de: "+media[maiorMedia])
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */