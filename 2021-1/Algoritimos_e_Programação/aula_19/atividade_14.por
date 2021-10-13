programa
{	/*
	Faça um programa que receba o nome e duas notas de seis alunos e mostre o relatório a seguir. 
	Relatório de notas:
	
	ALUNO 1a
	PROVA 2a
	PROVA MÉDIA SITUAÇÃO
	Carlos 8,0 9,0 8,5 Aprovado
	Pedro 4,0 5,0 4,5 Reprovado
	
	■■ média da classe = ?
	■■ percentual de alunos aprovados = ?%
	■■ percentual de alunos de exame = ?%
	■■ percentual de alunos reprovados = ?%*/
	
	funcao inicio()
	{
		//declarar o vetor com o numero de alunos
		const inteiro size=6
		cadeia vetorAlunos[size]
		real nota1[size], nota2[size],notaFinal[size], media=0
		inteiro aprovados=0, reprovados=0

 		/*preencher com um laço de repetição do tamanho do size, atribuir os nomes, notas, media e calcular
 		a soma das medias finais dos alunos e checar quem será aprovado e quem será reprovado.*/
 		para(inteiro i=0;i<size;i++){
 			escreva("Escreva o nome do aluno: "+i+" : ")
 			leia(vetorAlunos[i])
 			escreva("Digite a nota 1 do aluno(a) "+vetorAlunos[i]+" : ")
 			leia(nota1[i])
 			escreva("Digite a nota 2 do aluno(a) "+vetorAlunos[i]+" : ")
 			leia(nota2[i])
			notaFinal[i]=(nota1[i]+nota2[i])/2
			escreva("Media final do aluno "+vetorAlunos[i]+" foi de: "+notaFinal[i]+"\n\n")
 			media+=(nota1[i]+nota2[i])/2
 			se(notaFinal[i]>=7){
 				aprovados++
 			}senao{
 				reprovados++
 			}
 		}
 		//saida que mostra o relatório com a media de aprovados, reprovados e media geral da turma.
		escreva("\nRelatorio da turma: ")
		escreva("\nAlunos aprovados: "+(aprovados*100)/size+"%")
		escreva("\nAlunos reprovados: "+(reprovados*100)/size+"%")
		escreva("\nMedia geral da turma: "+media/size)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorAlunos, 21, 9, 11}-{nota1, 22, 7, 5}-{nota2, 22, 20, 5}-{notaFinal, 22, 32, 9}-{aprovados, 23, 10, 9}-{reprovados, 23, 23, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */