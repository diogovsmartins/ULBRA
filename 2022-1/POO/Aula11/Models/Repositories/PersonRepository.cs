using System.Collections.Generic;
using System.Linq;
using Aula11.Models.Domains;

namespace Aula11.Models.Repositories
{
    public class PersonRepository : IPersonRepository
    {
        private DataContext dataContext { get; set; }
        public PersonRepository(DataContext context)
        {
            dataContext = context;
        }
        
        public Person GetById(int id)
        {
            return dataContext.People.SingleOrDefault(i => i.Id == id);
        }

        public List<Person> GetAll()
        {
            return dataContext.People.ToList();
        }

        public void Create(Person person)
        {
            dataContext.Add(person);
            dataContext.SaveChanges();
        }

        public void Update(Person person)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new System.NotImplementedException();
        }
    }
}