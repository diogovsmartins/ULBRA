using System;
using System.Collections.Generic;
using Aula06.Domain;

namespace Aula06.Data
{
    public class UserRepository
    {
        private  List<UserEntity> UserDataBase = new();

        public void Save()
        {
            var dto = new UserEntity();
            UserDataBase.Add(dto);
        }

        public void Delete()
        {
            var dto = FindByName();
            UserDataBase.Remove(dto);
        }

        public List<UserEntity> GetAll()
        {
            return UserDataBase;
        }

        public void  AddBillToUser(ChargeEntity charge)
        {
            UserEntity userEntity = FindByName();
            userEntity.AddBill(charge);
        }

        public UserEntity FindByName()
        {
            Console.WriteLine("Digite o nome do Usuário que quer encontrar: ");
            var name = Console.ReadLine();
            UserEntity user=UserDataBase.Find(p => p.GetUserName().Equals(name));
            return user;
        }
        
        

        public void Update()
        {
            var dto = FindByName();
            dto.SetUserName();
            dto.SetCellphone();
        }

        public bool IsEmpty()
        {
            if (GetAll().Count == 0) return true;
            return false;
        }

        public void SaveNewBill()
        {
            FindByName().AddBill(new ChargeEntity());
        }
    }
}