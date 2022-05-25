using Aula12.Models.Domain;
using Microsoft.EntityFrameworkCore;

namespace Aula12.Models.Repositories;

public class DataContext : DbContext
{
    public DataContext(DbContextOptions<DataContext> options) : base(options)
    {
    }

    public DbSet<Client> Client { get; set; }
}