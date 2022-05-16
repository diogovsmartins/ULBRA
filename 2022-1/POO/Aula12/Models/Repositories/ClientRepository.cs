using System.Collections.Generic;
using System.Linq;
using Aula12.Models.Domain;

namespace Aula12.Models.Repositories
{
    public class ClientRepository : IClientRepository
    {
        public ClientRepository(DataContext dataContext)
        {
            DataContext = dataContext;
        }

        private DataContext DataContext { get; }

        public Client GetClientById(int id)
        {
            return DataContext.Client.SingleOrDefault(client => client.Id == id);
        }

        public List<Client> GetAllClients()
        {
            return DataContext.Client.ToList();
        }

        public void InsertClient(Client client)
        {
            DataContext.Client.Add(client);
            DataContext.SaveChanges();
        }

        public void UpdateClient(Client client)
        {
            DataContext.Client.Update(client);
            DataContext.SaveChanges();
        }

        public void DeleteClient(int id)
        {
            var clienteToBeDeleted = GetClientById(id);
            DataContext.Client.Remove(clienteToBeDeleted);
            DataContext.SaveChanges();
        }
    }
}