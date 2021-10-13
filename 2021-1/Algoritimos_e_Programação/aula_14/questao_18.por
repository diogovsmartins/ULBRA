programa
{ /*18 Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade, sexo (M/F)
e salário. Faça um programa que calcule e mostre:
■■ a média dos salários do grupo; CONCLUIDO
■■ a maior e a menor idade do grupo; CONCLUIDO
■■ a quantidade de mulheres com salário até R$ 200,00;
■■ a idade e o sexo da pessoa que possui o menor salário. CONCLUIDO
Finalize a entrada de dados ao ser digitada uma idade negativa.*/
	
		
	funcao inicio()
	{

        inteiro  maior_idade, menor_idade, qtd_mulheres = 0, qtd_habitantes = 0
        inteiro idade=0, idade_menorsalario=0, i=0, mulheres_200=0
        cadeia sexo, sexo_menorsalario="0"
        real salario, menor_salario = 0.0, soma_salario = 0.0

        maior_idade = 0
        menor_idade = 200


                enquanto (idade >= 0){
				i++
                    escreva("\n Informe a idade do entrevistado: ")
                    leia(idade)

                          se(idade < 0){
                            pare
                        }

                            se(idade > maior_idade){
                            maior_idade = idade

                        }
                            se(idade < menor_idade){
                            menor_idade = idade
                        }

                    escreva("\n Agora , informe o sexo (M/F): ")
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
					
					se((salario <=200)e(sexo == "F")){
                           mulheres_200 = i
                        }

                            se(salario <= menor_salario){
                            menor_salario = salario
                            idade_menorsalario = idade
                            sexo_menorsalario = sexo
                        }

                }

                escreva("\n A menor idade é: ", menor_idade)
                escreva("\n A maior idade é: ", maior_idade)
                escreva("\n A quantidade de pessoas na entrevista é: ", qtd_habitantes)
                escreva("\n A media salarial da populacao é: ", (soma_salario / qtd_habitantes))
                escreva("\n A idade da pessoa e o sexo de menor salario foi:  ",idade_menorsalario, " pertencente ao sexo: ", sexo_menorsalario)
                escreva("\n A quantidade de mulheres na região com salário até R$ 200,00 é: ", mulheres_200)
		}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2074; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */