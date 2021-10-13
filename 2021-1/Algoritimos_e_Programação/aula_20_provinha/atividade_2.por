programa
{	/*2. Leia um conjunto de notas, cuja quantidade seja determinada 
	pelo usuário. Calcule a média de todas elas. Exiba o conjunto das notas 
	maiores do que a média calculada. Em seguida, de forma agrupada, 
	exiba o outro conjunto de notas (menores do que a média).
	*/
	
	/*faca{i++
			escreva("\nDigite a nota do aluno: ")
			leia(vetorNotas[i])
			soma+=vetorNotas[i]
			media=soma/i
			escreva("Deseja continuar inserindo notas? Digite 'sim' ou 'nao'")
			leia(confirmacao)
		}enquanto((confirmacao=="sim")e(i!=100))*/
	
	funcao inicio()
	{	/* Criar variavel para o vetor do conjunto de notas, contador para determinar 
		o tamanho do laço,outro contador para o segundo laço,
		uma variavel para confirmação e encerramento do loop
		variavel para somar as notas e calcular a media.
		*/
		const inteiro size=100
		inteiro i=0, j=0
		real vetorNotas[size], soma=0.0, mediaTurma=0.0
		cadeia confirmacao=""
		//calcular as notas, somar e fazer a media
		para(i=0;i<size;i++){
			j++
			escreva("\nDigite a nota do aluno "+(i+1)+" : ")
			leia(vetorNotas[i])
			soma+=vetorNotas[i]
			mediaTurma=soma/j
			escreva("\nDeseja continuar? 'sim' ou 'nao' :")
			leia(confirmacao)
			se(confirmacao!="sim"){
				pare
			}
			
		}
		//mostrar as notas maiores do que a media geral da turma
		para(i=0;i<j;i++){
			se(vetorNotas[i]>mediaTurma){
				escreva("\nNota maior que a media: "+vetorNotas[i])
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1044; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorNotas, 25, 7, 10}-{mediaTurma, 25, 35, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */