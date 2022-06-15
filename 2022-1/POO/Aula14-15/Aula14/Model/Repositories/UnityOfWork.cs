namespace Aula14.Model.Repositories;

public class UnityOfWork :IUnityOfWork
{
    private readonly DataContext _dataContext;
    
    public UnityOfWork(DataContext dataContext)
    {
        _dataContext = dataContext;
    }
    public void Commit()
    {
        _dataContext.SaveChanges();
    }

    public void Rollback()
    {
       //do nothing and garbage collector takes care of everything when the request ends
    }
}