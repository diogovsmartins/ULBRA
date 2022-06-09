using Aula14.Model.Entities;

namespace Aula14.Model.Repositories;

public class AddressRepository:IAddressRepository
{
    private DataContext DataContext { get;}

    public AddressRepository(DataContext dataContext){
        DataContext = dataContext;
    }
    
    public Address GetById(int id)
    {
       return DataContext.Addresses.SingleOrDefault(address => address.AddressId == id);
    }

    public List<Address> GetAll()
    {
        return DataContext.Addresses.ToList();
    }

    public void Insert(Address entity)
    {
        DataContext.Add(entity);
        DataContext.SaveChanges();
    }

    public void Update(Address entity)
    {
        DataContext.Addresses.Update(entity);
        DataContext.SaveChanges();
    }

    public void Delete(int id)
    {
        var address = GetById(id);
        DataContext.Remove(address);
        DataContext.SaveChanges();
    }
}