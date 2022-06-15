namespace Aula14.Model.Repositories;

public interface IUnityOfWork
{
    public void Commit();

    public void Rollback();
}