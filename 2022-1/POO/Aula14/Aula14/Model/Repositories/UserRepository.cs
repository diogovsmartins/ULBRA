using Aula14.Model.Entities;
using Microsoft.EntityFrameworkCore;

namespace Aula14.Model.Repositories;

public class UserRepository :IUserRepository {
    private DataContext DataContext { get;}
    public UserRepository(DataContext dataContext)
    {
        DataContext = dataContext;
    }
    
    public User GetById(int id)
    {
        return DataContext.Users.Include(o=>o.Addresses)
            .SingleOrDefault(user => user.UserId == id);
    }

    public List<User> GetAll()
    {
        return DataContext.Users.Include(o=>o.Addresses).ToList();
    }

    public void Insert(User entity)
    {
        DataContext.Users.Add(entity);
        DataContext.SaveChanges();
    }

    public void Update(User entity)
    {
        DataContext.Users.Update(entity);
        DataContext.SaveChanges();
    }

    public void Delete(int id)
    {
        var User = GetById(id);
        DataContext.Remove(User);
        DataContext.SaveChanges();
    }
}