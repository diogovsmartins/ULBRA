namespace Aula14.Model.Repositories;

public interface IBaseRepository <Entity> where Entity: class
{
    Entity GetById(int id);
    List<Entity> GetAll();
    void Insert(Entity entity);
    void Update(Entity entity);
    void Delete(int id);    
}