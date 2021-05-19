programa
{ /*18 Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade, sexo (M/F)
e salário. Faça um programa que calcule e mostre:
■■ a média dos salários do grupo; CONCLUIDO
■■ a maior e a menor idade do grupo; 
■■ a quantidade de mulheres com salário até R$ 200,00;
■■ a idade e o sexo da pessoa que possui o menor salário.
Finalize a entrada de dados ao ser digitada uma idade negativa.*/
	
		
	funcao inicio()
	{

        inteiro  maioridade, menoridade, qtd_mulheres = 0, qtd_habitantes = 0
        inteiro idade=0, idade_menorsalario=0, i=0, mulheres_200=0
        cadeia sexo, sexo_menorsalario="0"
        real salario, menor_salario = 0.0, soma_salario = 0.0

        maioridade = 0
        menoridade = 200


                enquanto (idade >= 0){
				i++
                    escreva("\n Informe a idade do entrevistado: ")
                    leia(idade)

                          se(idade < 0){
                            pare
                        }

                            se(idade > maioridade){
                            maioridade = idade

                        }
                            se(idade < menoridade){
                            menoridade = idade
                        }

                    escreva("\n Agora , informe o sexo: ")
                    leia(sexo)

                    escreva("\nPor ultimo, informe o salario (DIGITE SEM VIRGULA): ")
                    leia(salario)

                        se(sexo == "F"){
                            qtd_mulheres = qtd_mulheres + 1
                            }

                        se(salario >= 0){
                        soma_salario = soma_salario + salario
                        qtd_habitantes = qtd_habitantes + 1
                        }

                        se(menor_salario == 0) {
                        menor_salario = salario
                        idade_menorsalario = idade
                        sexo_menorsalario = sexo
                        }
					
					se((salario >=200)e(sexo == "F")){
                           mulheres_200 = i
                        }

                            se(salario <= menor_salario){
                            menor_salario = salario
                            idade_menorsalario = idade
                            sexo_menorsalario = sexo
                        }

                }

                escreva("\n A menor idade é: ", menoridade)
                escreva("\n A maior idade é: ", maioridade)
                escreva("\n A quantidade de pessoas na entrevista é: ", qtd_habitantes)
                escreva("\n A media salarial da populacao é: ", (soma_salario / qtd_habitantes))
                escreva("\n A idade da pessoa e o sexo de menor salario foi:  ",idade_menorsalario, "do sexo: ", idade_menorsalario, sexo_menorsalario)
                escreva("\n A quantidade de mulheres na região com salário até R$ 200,00 é: ", mulheres_200)
                escreva("\n A quantidade de mulheres é: ", qtd_mulheres)
		}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */