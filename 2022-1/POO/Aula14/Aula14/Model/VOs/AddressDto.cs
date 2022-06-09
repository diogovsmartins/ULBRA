using Aula14.Model.Entities;

namespace Aula14.Model.VOs;

public class AddressDto
{
    public int AddressId { get; set; }
    public string Avenue { get; set; }
    public int HouseNumber { get; set; }
    public string Zipcode { get; set; }

    public AddressDto(Address address)
    {
        AddressId = address.AddressId;
        Avenue = address.Avenue;
        HouseNumber = address.HouseNumber;
        Zipcode = address.Zipcode;
    }

    public AddressDto()
    {
        
    }
}