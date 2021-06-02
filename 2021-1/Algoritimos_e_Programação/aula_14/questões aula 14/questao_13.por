programa
{	/*Faça um programa que receba a idade e o peso de quinze pessoas, 
	e que calcule e mostre as médias dos
	pesos das pessoas da mesma faixa etária. 
	As faixas etárias são: de 1 a 10 anos, de 11 a 20 anos, de 21 a
	30 anos e de 31 anos para cima.*/
	
	funcao inicio()
	{
		inteiro idade, peso, soma_f1=0, soma_f2=0, soma_f3=0, soma_f4=0, media, i, f1=0, f2=0, f3=0, f4=0

		para(i=1;i<=15;i++){
			escreva("\nDigite a idade do participante número ",i," :")
			leia(idade)
			escreva("\nDigite o peso do participante número ",i," :")
			leia(peso)
			se((idade>=1)e(idade<=10)){
				soma_f1+=peso
				f1++
			}
			senao se((idade>=11)e(idade<=20)){
				soma_f2+=peso
				f2++
			}
			senao se((idade>=21)e(idade<=30)){
				soma_f3+=peso
				f3++
			}
			senao{
				soma_f4+=peso
				f4++
			}
			
		}
		se(f1>=1){
			escreva("\nA media da faixa etaria 1 é: "+soma_f1/f1)
		}
		se(f2>=1){
			escreva("\nA media da faixa etaria 2 é: "+soma_f2/f2)
		}
		se(f3>=1){
			escreva("\nA media da faixa etaria 3 é: "+soma_f3/f3)
		}
		se(f4>=1){
			escreva("\nA media da faixa etaria 4 é: "+soma_f4/f4)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */