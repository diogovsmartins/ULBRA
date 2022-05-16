using Aula11.Models.Domains;
using Microsoft.EntityFrameworkCore;

namespace Aula11.Models.Repositories
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {
            
        }
        
        public DbSet<Person> People { get; set; }
    }
}