namespace Aula12.Models.Domain;

public class Client
{
    public Client(int id, string name, string phoneNumber, Charge charge)
    {
        ClientId = id;
        Name = name;
        PhoneNumber = phoneNumber;
        charge = charge;
    }

    public Client(){}

    public int ClientId { get; set; }
    public string Name { get; set; }
    public string PhoneNumber { get; set; }
    public List<Charge> charges { get; set; }
}