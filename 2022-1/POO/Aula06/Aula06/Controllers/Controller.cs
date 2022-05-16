using System;
using Aula06.UseCases;

namespace Aula06.Controllers
{
    public class Controller
    {
        private readonly UserUseCase UserUseCases = new();
        private readonly ChargesUseCase ChargesUseCase = new();

        public void Menu()
        {
            var operador = string.Empty;

            while (operador != "0")
            {
                Console.WriteLine
                ("Digite 0 para sair da aplicação." +
                 "\nDigite 1 para adicionar um usuário." +
                 "\nDigite 2 para listar um usuário." +
                 "\nDigite 3 para listar todos os usuários." +
                 "\nDigite 4 para deletar um usuário." +
                 "\nDigite 5 para atualizar um usuário." +
                 "\nDigite 6 para criar uma cobrança." +
                 "\nDigite 7 para remover uma cobrança." +
                 "\nDigite 8 para mostrar todas as cobranças." +
                 "\nDigite 9 para pagar uma cobrança de um usuário.");
                operador = Console.ReadLine();

                switch (operador)
                {
                    case "0":
                        Environment.Exit(0);
                        break;

                    case "1":
                        Console.WriteLine("\n" + UserUseCases.SaveUser());
                        break;

                    case "2":
                        Console.WriteLine("\n" + UserUseCases.GetUser());
                        break;

                    case "3":
                        Console.WriteLine("\n" + UserUseCases.GetAllUsers());
                        break;

                    case "4":
                        Console.WriteLine("\n" + UserUseCases.DeleteUser());
                        break;

                    case "5":
                        Console.WriteLine("\n" + UserUseCases.UpdateUser());
                        break;
                    case "6":
                        Console.WriteLine("\n" + ChargesUseCase.saveCharge());
                        break;
                    case "7":
                        Console.WriteLine("\n" + ChargesUseCase.removeCharge());
                        break;
                    case "8":
                        Console.WriteLine("\n" + ChargesUseCase.showAllCharges());
                        break;
                    case "9":
                        Console.WriteLine("\n" + ChargesUseCase.addChargeToUser());
                        break;
                    
                    default:
                        Console.WriteLine("Opção inválida.");
                        continue;
                }
            }
        }
    }
}