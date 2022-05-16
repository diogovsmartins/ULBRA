using System.Text;
using Aula06.Data;
using Aula06.Domain;


namespace Aula06.UseCases
{
    public class ChargesUseCase
    {
        private ChargesRepository ChargesRepository = new ChargesRepository();
        private UserRepository UserRepository = new UserRepository();

        public string saveCharge()
        {
            ChargesRepository.Save();
            return "Cobrança emitida com sucesso.";
        }

        public string addChargeToUser()
        {
            UserRepository.AddBillToUser(ChargesRepository.FindById());
            return "Cobrança adicionada com sucesso";
        }

        public string removeCharge()
        {
            ChargesRepository.Delete();
            return "Cobrança deletada com sucesso";
        }

        public string showAllCharges()
        {
            var builder = new StringBuilder();
            var charges = ChargesRepository.GetAll();
            if (ChargesRepository.IsEmpty() == false)
            {
                foreach (var charge in charges) builder.AppendLine(charge.ToString());

                return builder.ToString();
            }

            return "\n Não existem cobranças para retornar.";
        }
        
    }
}