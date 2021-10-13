programa
{	/*
	Faça um programa que receba o nome e a nota de oito alunos e mostre o relatório a seguir:
	Digite o nome do 1o
	
	aluno: Carlos
	Digite a nota do Carlos: 8
	Digite o nome do 2o
	
	aluno: Pedro
	Digite a nota do Pedro: 5
	Relatórios de notas
	Carlos 8.0
	Pedro 5.0
	..
	..
	..
	Média da classe = ??*/
	
	funcao inicio()
	{
		//declarar um vetor para os nomes dos alunos e um para as notas 
		const inteiro size=3
		real notaAluno[size], media=0
		cadeia nomeAluno[size]	
		//laço para preencher o vetor
		para(inteiro i=0; i<size;i++){
			
			escreva("Digite o nome do aluno: ")
			leia(nomeAluno[i])
			escreva("Digite a nota para o aluno: ")
			leia(notaAluno[i])
			media+=notaAluno[i]
		}
		//mostrar os resultados dos vetor
		media=media/size
		para(inteiro i=0; i<size;i++){
			escreva("O aluno "+nomeAluno[i]+" obteve a nota: "+notaAluno[i]+"\n")
		}
		escreva("A media da turma é: "+media)

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 747; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notaAluno, 24, 7, 9}-{nomeAluno, 25, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */