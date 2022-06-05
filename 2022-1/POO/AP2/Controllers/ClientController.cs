using Aula12.Models.Domain;
using Aula12.Models.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Aula12.Controllers;

[ApiController]
[Route("[controller]")]
public class ClientController : ControllerBase
{
    private readonly IClientRepository ClientRepository;

    public ClientController(IClientRepository clientRepository)
    {
        ClientRepository = clientRepository;
    }

    //GetAll 
    [HttpGet]
    public IEnumerable<Client> GetCLients()
    {
        return ClientRepository.GetAll();
    }

    //Search for a client with the Id
    [HttpGet("{id:int}")]
    public ActionResult GetClientById(int id)
    {
        return Ok(ClientRepository.GetById(id));
    }

    //Inserts a client into the database based on the client sent in the body
    [HttpPost]
    public IActionResult InsertClient([FromBody] Client client)
    {
        ClientRepository.Insert(client);
        return Ok(client);
    }

    [HttpPut]
    public ActionResult UpdateClient([FromBody] Client clientToBeUpdated)
    {
        ClientRepository.Update(clientToBeUpdated);
        return Ok("Client Updated.");
    }

    [HttpDelete("{id:int}")]
    public ActionResult DeleteClient(int id)
    {
        ClientRepository.Delete(id);
        return Ok("Client deleted.");
    }
}