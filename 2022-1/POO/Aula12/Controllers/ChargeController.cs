using Aula12.Models.Domain;
using Aula12.Models.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Aula12.Controllers;

[ApiController]
[Route("[controller]")]
public class ChargeController : ControllerBase
{
    private readonly IChargeRepository ChargeRepository;

    public ChargeController(IChargeRepository chargeRepository)
    {
        ChargeRepository = chargeRepository;
    }

    //GetAll 
    [HttpGet]
    public IEnumerable<Charge> GetCharges()
    {
        return ChargeRepository.GetAll();
    }

    //Search for a client with the Id
    [HttpGet("{id:int}")]
    public ActionResult GetChargeById(int id)
    {
        return Ok(ChargeRepository.GetById(id));
    }

    //Inserts a client into the database based on the client sent in the body
    [HttpPost]
    public IActionResult InsertCharge([FromBody] Charge charge)
    {  
        ChargeRepository.Insert(charge);
        return Ok(charge);
    }

    [HttpPut]
    public ActionResult UpdateCharge([FromBody] Charge chargeToBeUpdated)
    {
        ChargeRepository.Update(chargeToBeUpdated);
        return Ok("Charge Updated.");
    }

    [HttpDelete("{id:int}")]
    public ActionResult DeleteCharge(int id)
    {
        ChargeRepository.Delete(id);
        return Ok("Charge deleted.");
    }
}