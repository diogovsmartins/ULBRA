using System;
using System.Collections.Generic;
using Aula06.Domain;

namespace Aula06.Data
{
    public class ChargesRepository
    {
        private  List<ChargeEntity> ChargesDataBase = new();
        
        public void Save()
        {
            ChargeEntity charge = new ChargeEntity();
            ChargesDataBase.Add(charge);
        }

        public void Delete()
        {
            var dto = FindById();
            ChargesDataBase.Remove(dto);
        }

        public List<ChargeEntity> GetAll()
        {
            return ChargesDataBase;
        }

        public ChargeEntity FindById()
        {
            Console.WriteLine("Digite o Id da cobrança que quer encontrar: ");
            var id = Convert.ToInt32(Console.ReadLine());
            return ChargesDataBase.Find(p => p.GetChargeId()==id);
        }

        public void UpdateDueDate()
        {
            var dto = FindById();
            dto.SetDueDate();
        }

        public bool IsEmpty()
        {
            if (GetAll().Count == 0) return true;
            return false;
        }

    }
}    