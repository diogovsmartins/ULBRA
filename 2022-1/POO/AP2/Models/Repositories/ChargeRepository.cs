using Aula12.Models.Domain;
using Microsoft.EntityFrameworkCore;

namespace Aula12.Models.Repositories;

public class ChargeRepository : IChargeRepository
{
    public ChargeRepository(DataContext dataContext)
    {
        DataContext = dataContext;
    }

    private DataContext DataContext { get; }
    
    public Charge GetById(int id)
    {   
        return DataContext.Charges.SingleOrDefault(charge => charge.ChargeId == id);
    }

    public List<Charge> GetAll()
    {
        return DataContext.Charges.ToList();
    }

    public void Insert(Charge charge)
    {
        DataContext.Charges.Add(charge);
        DataContext.SaveChanges();
    }

    public void Update(Charge charge)
    {
        DataContext.Charges.Update(charge);
        DataContext.SaveChanges();
    }

    public void Delete(int id)
    {    var chargeToBeDeleted = GetById(id);
        DataContext.Charges.Remove(chargeToBeDeleted);
        DataContext.SaveChanges();
    }
}