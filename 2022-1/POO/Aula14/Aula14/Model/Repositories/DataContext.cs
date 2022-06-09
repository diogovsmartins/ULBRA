using Aula14.Model.Entities;
using Aula14.Types;
using Microsoft.EntityFrameworkCore;

namespace Aula14.Model.Repositories;

public class DataContext : DbContext
{
    public DataContext(DbContextOptions<DataContext> options) : base(options)
    {
        
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        base.OnConfiguring(optionsBuilder);
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfiguration(new UserTypeMapping());
        //modelBuilder.ApplyConfiguration(new AddressTypeMapping());
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Address> Addresses { get; set; }
}