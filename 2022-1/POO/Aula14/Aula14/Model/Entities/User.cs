using Aula14.Model.Entities;
using Aula14.Model.VOs;

namespace Aula14.Model.Entities;

public class User
{
    public int UserId { get; set; }
    public string UserName { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public List<Address> Addresses { get; set; }

    public User(string userName, string email, string password, Address address)
    {
        UserName = userName;
        Email = email;
        Password = password;
        Addresses.Add(address);
    }

    public User()
    {
        
    }


}