using Aula12.Models.Domain;

namespace Aula12.Models.Repositories;

public interface IClientRepository
{
    Client GetClientById(int id);
    List<Client> GetAllClients();
    void InsertClient(Client client);
    void UpdateClient(Client client);
    void DeleteClient(int id);
}