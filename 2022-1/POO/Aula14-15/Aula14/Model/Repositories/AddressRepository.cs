using Aula14.Model.Entities;

namespace Aula14.Model.Repositories;

public class AddressRepository:IAddressRepository
{
    private DataContext DataContext { get;}
    private IUnityOfWork _unityOfWork;

    public AddressRepository(DataContext dataContext, IUnityOfWork unityOfWork){
        DataContext = dataContext;
        _unityOfWork = unityOfWork;
    }
    
    public Address GetById(int id)
    {
        DataContext.SaveChangesAsync();
       return DataContext.Addresses.SingleOrDefault(address => address.AddressId == id);
    }

    public List<Address> GetAll()
    {
        return DataContext.Addresses.ToList();
    }

    public void Insert(Address entity)
    {
        try
        {
            DataContext.Add(entity);
            _unityOfWork.Commit();
        }
        catch
        {
           _unityOfWork.Rollback();
        }
    }

    public void Update(Address entity)
    {
        try
        {
            DataContext.Addresses.Update(entity);
            _unityOfWork.Commit();
        }
        catch
        {
            _unityOfWork.Rollback();
        }
    }

    public void Delete(int id)
    {
        try
        {
            var address = GetById(id);
            DataContext.Remove(address);
            _unityOfWork.Commit();
        }
        catch
        {
            _unityOfWork.Rollback();
        }
    }
}