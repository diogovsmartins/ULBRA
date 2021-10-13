programa
{	
/*	3. Leia um conjunto de alunos, cada uma com o nome e a nota.
	Em seguida, exiba o nome dos alunos que possuem nota maior do que a média da turma.*/
	
	funcao inicio()
	{	
		/*criar variavel constante para o tamanho máximo do vetor, 2 conadores um para 
		o primeiro laço e outro para não mostrar elementos inexistentes no ultimo para
		um vetor para os nomes e um vetor para as notas, uma variavel para confirmar
		a continuidade do primeiro para, uma variavel pra acumular as notas e uma para 
		calcular a media.*/
		const inteiro size=100
		inteiro i=0, j=0
		cadeia vetorNome[size], confirmacao=""
		real vetorNotas[size], mediaTurma=0.0, soma=0.0
		
		/*Laço para preencher os vetores com os nomes e as notas na mesma posição 
		para facilitar pegar os dados depois utilizando um para*/
		para(i=0;i<size;i++){
			j++
			escreva("Digite o nome do aluno "+(i+1)+" : ")
			leia(vetorNome[i])
			escreva("Digite a nota do aluno "+vetorNome[i]+" : ")
			leia(vetorNotas[i])
			soma+=vetorNotas[i]
			mediaTurma=soma/j
			escreva("Deseja continuar cadastrando as notas dos alunos? 'sim' ou 'nao': ")
			leia(confirmacao)
			se(confirmacao!="sim"){
				pare
			}
			
		}
		/*checar as notas que são maiores que a media e entregar como saida os nomes*/
		escreva("\nOs alunos que possuem nota acima da media da turma são: ")
		para(i=0;i<j;i++){
			se(vetorNotas[i]>mediaTurma){
				escreva("\n"+vetorNome[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorNome, 15, 9, 9}-{vetorNotas, 16, 7, 10}-{mediaTurma, 16, 25, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */