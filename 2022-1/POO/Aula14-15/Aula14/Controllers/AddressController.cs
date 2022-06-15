using Aula14.Model.Entities;
using Aula14.Model.Repositories;
using Aula14.Model.VOs;
using Microsoft.AspNetCore.Mvc;

namespace Aula14.Controllers;

[ApiController]
[Route("[controller]")]
public class AddressController
{
 
    private IAddressRepository AddressRepository;

    public AddressController(IAddressRepository addressRepository)
    {
        AddressRepository = addressRepository;    
    }
    
    
    [HttpGet]
    public async Task<List<AddressDto>> GetAll()
    {
        List<AddressDto> addressDtos = new List<AddressDto>();
        List<Address> addresses= AddressRepository.GetAll();
        foreach (var address in addresses)
        {
            AddressDto addressDto = new AddressDto(address);
            addressDtos.Add(addressDto);
        }
        return addressDtos;
    }

    [HttpGet("{id:int}")]
    public async Task<AddressDto> GetById(int id)
    {
        AddressDto addressDto = new AddressDto(AddressRepository.GetById(id));
        return addressDto;
    }

    [HttpPost]
    public async Task<string> InsertAddress([FromBody] Address address)
    {
        AddressRepository.Insert(address);
        return "Endereço Inserido";
    }
    
    [HttpDelete("{id:int}")]
    public async Task<string> DeleteAddress(int id)
    {
        AddressRepository.Delete(id);
        return "Endereço deletado";
    }
    [HttpPut]
    public async Task<string> UpdateAddress([FromBody] Address address)
    {
        AddressRepository.Update(address);
        return "Endereço atualizado";
    }

    
}