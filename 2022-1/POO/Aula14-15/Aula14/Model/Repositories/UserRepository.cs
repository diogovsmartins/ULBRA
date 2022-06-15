using Aula14.Model.Entities;
using Microsoft.EntityFrameworkCore;

namespace Aula14.Model.Repositories;

public class UserRepository :IUserRepository {
    private DataContext DataContext { get;}
    private IUnityOfWork _unityOfWork;

    public UserRepository(DataContext dataContext, IUnityOfWork unityOfWork)
    {
        DataContext = dataContext;
        _unityOfWork = unityOfWork;
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
        try
        {
            DataContext.Users.Add(entity);
            _unityOfWork.Commit();
        }
        catch
        {
            _unityOfWork.Rollback();
        }
    }

    public void Update(User entity)
    {
        try
        {
            DataContext.Users.Update(entity);
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
            var User = GetById(id);
            DataContext.Remove(User);
            _unityOfWork.Commit();
        }
        catch
        {
            _unityOfWork.Rollback();
        }
        
    }
}