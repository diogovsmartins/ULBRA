using Aula14.Model.Entities;

namespace Aula14.Model.Repositories;

public class ShippingRepository: IShippingRepository
{
    private DataContext _dataContext;

    public ShippingRepository(DataContext dataContext)
    {
        this._dataContext = dataContext;
    }
    
    public Shipping GetById(int id)
    {
        return _dataContext.Shippings.SingleOrDefault(shipping => shipping.Id == id);
    }

    public List<Shipping> GetAll()
    {
        return _dataContext.Shippings.ToList();
    }

    public void Insert(Shipping entity)
    {
        
            _dataContext.Add(entity); 
    }

    public void Update(Shipping entity)
    {

        _dataContext.Shippings.Update(entity);
    }

    public void Delete(int id)
    {
       
            var shipping = GetById(id);
            _dataContext.Remove(shipping);
    }
}