using Aula14.Model.Entities;

namespace Aula14.Model.VOs;

public class UserDto
{
    public string UserName { get; set; }
    public string Email { get; set; }
    
    public List<Address> Addresses { get; set; }

    public UserDto(User user)
    {
        UserName = user.UserName;
        Email = user.Email;
        Addresses = user.Addresses;
    }
    
    
}