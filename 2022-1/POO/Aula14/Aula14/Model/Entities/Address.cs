namespace Aula14.Model.Entities;

public class Address
{
    public int AddressId { get; set; }
    public string Avenue { get; set; }
    public int HouseNumber { get; set; }
    public string Zipcode { get; set; }
    
    public int UserId { get; set; }

    public Address(string avenue, int houseNumber, string zipcode, int userId)
    {
        Avenue = avenue;
        HouseNumber = houseNumber;
        Zipcode = zipcode;
        UserId = userId;
    }

    public Address()
    {
        
    }
}