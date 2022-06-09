using Aula14.Model.Entities;
using Aula14.Model.Repositories;
using Aula14.Model.VOs;
using Microsoft.AspNetCore.Mvc;

namespace Aula14.Controllers;

[ApiController]
[Route("[controller]")]
public class UserController
{
    private IUserRepository UserRepository;

    public UserController(IUserRepository userRepository)
    {
        UserRepository = userRepository;    
    }
    
    [HttpGet]
    public async Task<List<UserDto>> GetAll()
    {
        List<UserDto> userDtos = new List<UserDto>();
        List<User> users= UserRepository.GetAll();
        foreach (var user in users)
        {
            UserDto userDto = new UserDto(user);
            userDtos.Add(userDto);
        }
        return userDtos;
    }

    [HttpGet("{id:int}")]
    public async Task<UserDto> GetById(int id)
    {
        UserDto userDto = new UserDto(UserRepository.GetById(id));
        return userDto;
    }

    [HttpPost]
    public async Task<string> InsertUser([FromBody] User user)
    {
        UserRepository.Insert(user);
        return "Usuário Inserido";
    }
    
    [HttpDelete("{id:int}")]
    public async Task<string> DeleteUser(int id)
    {
        UserRepository.Delete(id);
        return "Usuário deletado";
    }
    [HttpPut]
    public async Task<string> UpdateUser([FromBody] User user)
    {
        UserRepository.Update(user);
        return "Usuário atualizado";
    }

}